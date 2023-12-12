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
 
`ifndef MPRJ_IO_PADS
	`define MPRJ_IO_PADS 32
`endif
 

module user_proj_example #(
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

// wire [`MPRJ_IO_PADS-1:0] io_in;
// wire [`MPRJ_IO_PADS-1:0] io_out;
// wire [`MPRJ_IO_PADS-1:0] io_oeb;


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
