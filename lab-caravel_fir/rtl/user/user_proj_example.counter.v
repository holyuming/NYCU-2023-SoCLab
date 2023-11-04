// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype wire
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

// `include "/home/ubuntu/course-lab_4-2/rtl/user/fir.v"

`ifndef MPRJ_IO_PADS
    `define MPRJ_IO_PADS 32
`endif 

module user_proj_example #(
    parameter BITS = 32,
    parameter DELAYS = 10
)(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output reg wbs_ack_o,
    output reg [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output reg [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output reg [`MPRJ_IO_PADS-1:0] io_out,
    output reg [`MPRJ_IO_PADS-1:0] io_oeb,

    // IRQ
    output reg [2:0] irq
);
wire clk;
wire rst;

assign clk = wb_clk_i;
assign rst = wb_rst_i; // sync active-high reset

// wire [`MPRJ_IO_PADS-1:0] io_in;
// wire [`MPRJ_IO_PADS-1:0] io_out;
// wire [`MPRJ_IO_PADS-1:0] io_oeb;

// bram for tap RAM
wire  [3:0]         tap_WE;
wire                tap_EN;
wire  [(BITS-1):0]  tap_Di;
wire  [(BITS-1):0]  tap_A;
wire  [(BITS-1):0]  tap_Do;

// bram for data RAM
wire [3:0]          data_WE;
wire                data_EN;
wire [(BITS-1):0]   data_Di;
wire [(BITS-1):0]   data_A;
wire [(BITS-1):0]   data_Do;

// axi-lite: write
wire awready;
wire wready;
reg awvalid;
reg [(BITS-1):0] awaddr;
reg wvalid;
reg [(BITS-1):0] wdata;

// axi-lite: read
wire arready;
reg rready;
reg arvalid;
reg [(BITS-1):0] araddr;
wire rvalid;
wire [(BITS-1):0] rdata;

// axi-stream: send to fir
reg ss_tvalid;
reg [(BITS-1):0] ss_tdata;
reg ss_tlast;
wire ss_tready;

// axi-stream: receive from fir
reg sm_tready;
wire sm_tvalid;
wire [(BITS-1):0] sm_tdata;
wire sm_tlast;

// User Project Memroy: 0x3800_0000
wire [BITS-1:0] bram_do;
wire [BITS-1:0] bram_di;
wire [BITS-1:0] bram_adr;
wire bram_valid;
wire [3:0] bram_we;
reg bram_ack;
reg [(BITS-1):0] bram_dat;

//for AXI-lite

reg [3:0] c_state, n_state;
reg axi_ack;
reg [(BITS-1):0] axi_dat;

localparam IDLE = 0,
           AXI_RADDR = 1,
           AXI_RDATA = 2,
           AXI_WADDR = 3,
           AXI_SIN   = 5,
           AXI_SOUT  = 6,
           AXI_WDATA = 4;



// ===========================================DESIGN=======================================
// User Project Memroy: 0x3800_0000
assign bram_valid   = wbs_stb_i == 1 && wbs_cyc_i == 1 && wbs_adr_i[31:24] == 'h38;
assign bram_we      = {4{wbs_we_i & bram_valid}};
assign bram_adr     = (wbs_adr_i - 'h38000000) >> 2;
assign bram_di      = wbs_dat_i;

reg [15:0] counter; // why is this 16 bits

always @(posedge wb_clk_i) begin
    if (wb_rst_i) begin
        counter     <= 0;
        bram_ack   <= 0;
        bram_dat   <= 0;
    end else begin
        counter     <= (counter == DELAYS) ? 0 : (bram_valid == 1 && bram_ack != 1) ? counter + 1 : counter; 
        bram_ack   <= (counter == DELAYS) ? 1 : 0;
        bram_dat   <= (counter == DELAYS) ? bram_do : 0;
    end
end


// User Project FIR Base Addr: 0x3000_0000
// WB --> axi-lite
// 3000_0000: AP
// 3000_0010: data_legnth
// 3000_0040: tap parameters


// WB --> axi-lstream
// 3000_0080: Xn
// 3000_0084: Yn

always @( posedge clk ) begin
    if(rst) c_state <= IDLE;
    else begin
        case (c_state)
            IDLE : begin
                if(wbs_cyc_i && wbs_stb_i && wbs_adr_i[31:24] == 'h30)begin
                    if(wbs_adr_i == 'h3000_0084 )     c_state <= AXI_SOUT;
                    else if(wbs_adr_i == 'h3000_0080) c_state <= AXI_SIN;
                    else if (wbs_we_i)                c_state <= AXI_WADDR;
                    else                              c_state <= AXI_RADDR;
                end else c_state <= IDLE;
            end
            AXI_RADDR : c_state <= (arready)   ? AXI_RDATA : AXI_RADDR;
            AXI_WADDR : c_state <= (awready)   ? AXI_WDATA : AXI_WADDR;
            AXI_SOUT  : c_state <= (wbs_ack_o) ? IDLE : AXI_SOUT;
            AXI_RDATA : c_state <= (wbs_ack_o) ? IDLE : AXI_RDATA;
            AXI_WDATA : c_state <= (wbs_ack_o) ? IDLE : AXI_WDATA;
            AXI_SIN   : c_state <= (wbs_ack_o) ? IDLE : AXI_SIN;

            default: c_state <= IDLE;
        endcase
    end
end

always @(*) begin
    araddr  = (c_state == AXI_RADDR ) ? wbs_adr_i - 'h30000000 : 0;
    arvalid = (c_state == AXI_RADDR ) ? 1 : 0;

    awaddr  = (c_state == AXI_WADDR ) ? wbs_adr_i - 'h30000000 : 0;
    awvalid = (c_state == AXI_WADDR ) ? 1 : 0;

    //axi-rdata
    rready = (c_state == AXI_RDATA) ? 1 : 0;

    //axi-wdata
    wvalid = (c_state == AXI_WDATA && wready) ? 1 : 0;
    wdata  = (wvalid == 1) ? wbs_dat_i : 0;

    //axi_sin
    ss_tvalid = (c_state == AXI_SIN ) ? 1 : 0;
    ss_tdata  = (c_state == AXI_SIN) ? wbs_dat_i : 0;

    //axi_sout
    sm_tready = (c_state == AXI_SOUT ) ? sm_tvalid : 0;
end


always @(*) begin
    axi_ack = 0;
    if (c_state == AXI_RDATA)       axi_ack = rvalid;
    else if (c_state == AXI_WDATA ) axi_ack = wvalid;
    else if (c_state == AXI_SIN)    axi_ack = ss_tready;
    else if (c_state == AXI_SOUT)   axi_ack = sm_tvalid;
end

always @(*) begin
    axi_dat = 0;
    if (c_state == AXI_RDATA && rvalid)       axi_dat = rdata;
    else if (c_state == AXI_WDATA && wvalid ) axi_dat = wbs_dat_i;
    else if (c_state == AXI_SIN)              axi_dat = wbs_dat_i;
    else if (c_state == AXI_SOUT)             axi_dat = sm_tdata;
end


//wb_dat_o and wb_ack_o
always @(*) begin
    wbs_dat_o = bram_dat | axi_dat;
    wbs_ack_o = bram_ack | axi_ack;
end


bram user_bram (
    .CLK(wb_clk_i),
    .WE0(bram_we),
    .EN0(bram_valid),
    .Di0(bram_di),
    .Do0(bram_do),
    .A0(bram_adr)
);

fir FIR(
    // axi-lite: write addr
    .awready(awready),
    .awvalid(awvalid),
    .awaddr (awaddr ),

    // axi-lite: write data
    .wready(wready),
    .wvalid(wvalid),
    .wdata (wdata ),

    // axi-lite: read addr
    .arready(arready),
    .arvalid(arvalid),
    .araddr (araddr ),

    // axi-lite: read data
    .rready(rready),
    .rvalid(rvalid),
    .rdata (rdata ),

    // axi-stream: in
    .ss_tvalid(ss_tvalid),
    .ss_tdata (ss_tdata ),
    .ss_tlast (ss_tlast ),
    .ss_tready(ss_tready),

    // axi-stream: out
    .sm_tready(sm_tready),
    .sm_tvalid(sm_tvalid),
    .sm_tdata (sm_tdata ),
    .sm_tlast (sm_tlast ),

    // ram for tap
    .tap_WE(tap_WE),
    .tap_EN(tap_EN),
    .tap_Di(tap_Di),
    .tap_A (tap_A),
    .tap_Do(tap_Do),

    // ram for data
    .data_WE(data_WE),
    .data_EN(data_EN),
    .data_Di(data_Di),
    .data_A (data_A),
    .data_Do(data_Do),

    .axis_clk(clk),
    .axis_rst_n(~rst)
);

bram datRAM (
    .CLK(clk),
    .WE0(data_WE),
    .EN0(data_EN),
    .Di0(data_Di),
    .Do0(data_Do),
    .A0(data_A)
);

bram tapRAM (
    .CLK(clk),
    .WE0(tap_WE),
    .EN0(tap_EN),
    .Di0(tap_Di),
    .Do0(tap_Do),
    .A0(tap_A)
);


endmodule



`default_nettype wire
