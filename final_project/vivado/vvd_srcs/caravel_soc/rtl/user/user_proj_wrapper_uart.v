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
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
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

    output reg          wbs_ack_o,
    output reg [31:0]   wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output  [`MPRJ_IO_PADS-1:0] io_out,
    output  [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output  [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/
reg exmem_wbs_cyc_i;
reg exmem_wbs_stb_i;

wire            uart_wbs_ack_o;
wire [31:0]     uart_wbs_dat_o;
wire            exmem_wbs_ack_o;
wire [31:0]     exmem_wbs_dat_o;

wire [`MPRJ_IO_PADS-1:0] uart_io_out, exmem_io_out;
wire [`MPRJ_IO_PADS-1:0] uart_io_oeb, exmem_io_oeb;

wire [2:0] uart_user_irq, exmem_user_irq;


uart uart (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_stb_i(wbs_stb_i),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_we_i (wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_ack_o(uart_wbs_ack_o),
    .wbs_dat_o(uart_wbs_dat_o),

    // IO ports
    .io_in  (io_in      ),
    .io_out (io_out ),
    .io_oeb (io_oeb ),

    // irq
    .user_irq (user_irq)
);



exmem mprj (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif

    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i (wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_ack_o(exmem_wbs_ack_o),
    .wbs_dat_o(exmem_wbs_dat_o)
);

/*--------------------------------------*/
/*      Wishbone Decoder here           */
/*--------------------------------------*/
always @(*) begin
    wbs_ack_o = (uart_wbs_ack_o | exmem_wbs_ack_o);

    if      (uart_wbs_ack_o)    wbs_dat_o = uart_wbs_dat_o;
    else if (exmem_wbs_ack_o)   wbs_dat_o = exmem_wbs_dat_o;
    else                        wbs_dat_o = 0;
end


endmodule	// user_project_wrapper

module exmem #(
    parameter BITS = 32,
    parameter DELAYS=1
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
    output reg [31:0] wbs_dat_o

);

wire clk;
wire rst;

wire [BITS-1:0] bram_do;
wire [BITS-1:0] bram_di;
wire [BITS-1:0] bram_adr;
wire bram_valid;
wire [3:0] bram_we;

assign bram_valid   = wbs_stb_i == 1 && wbs_cyc_i == 1 && wbs_adr_i[31:24] == 'h38;
assign bram_we      = {4{wbs_we_i & bram_valid}};
assign bram_adr     = (wbs_adr_i - 'h38000000) >> 2;
assign bram_di      = wbs_dat_i;


bram user_bram (
    .CLK(wb_clk_i),
    .WE0(bram_we),
    .EN0(bram_valid),
    .Di0(bram_di),
    .Do0(bram_do),
    .A0(bram_adr)
);


reg [15:0] counter; // why is this 16 bits

always @(posedge wb_clk_i) begin
    if (wb_rst_i) begin
        counter     <= 0;
        wbs_ack_o   <= 0;
        wbs_dat_o   <= 0;
    end else begin
        counter     <= (counter == DELAYS) ? 0 : (bram_valid == 1 && wbs_ack_o != 1) ? counter + 1 : counter; 
        wbs_ack_o   <= (counter == DELAYS) ? 1 : 0;
        wbs_dat_o   <= (counter == DELAYS) ? bram_do : 0;
    end
end
            


endmodule



`default_nettype wire
