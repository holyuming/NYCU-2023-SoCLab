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

// mm
reg         mm_wbs_stb_i;
reg         mm_wbs_cyc_i;
reg         mm_wbs_we_i;
wire        mm_wbs_ack_o;
wire [31:0] mm_wbs_dat_o;

// qs
reg         sort_wbs_stb_i;
reg         sort_wbs_cyc_i;
reg         sort_wbs_we_i;
wire        sort_wbs_ack_o;
wire [31:0] sort_wbs_dat_o;

// fir
reg         fir_wbs_stb_i;
reg         fir_wbs_cyc_i;
reg         fir_wbs_we_i;
wire        fir_wbs_ack_o;
wire [31:0] fir_wbs_dat_o;


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


exmem_sdram mprj (
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

// MM
MM MM0 (
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_stb_i(mm_wbs_stb_i),
    .wbs_cyc_i(mm_wbs_cyc_i),
    .wbs_we_i (mm_wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_ack_o(mm_wbs_ack_o),
    .wbs_dat_o(mm_wbs_dat_o)
);

// QS
Sort Sort0 (
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_stb_i(sort_wbs_stb_i),
    .wbs_cyc_i(sort_wbs_cyc_i),
    .wbs_we_i (sort_wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_ack_o(sort_wbs_ack_o),
    .wbs_dat_o(sort_wbs_dat_o)
);

// FIR
fir fir0 (
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_stb_i(fir_wbs_stb_i),
    .wbs_cyc_i(fir_wbs_cyc_i),
    .wbs_we_i (fir_wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_ack_o(fir_wbs_ack_o),
    .wbs_dat_o(fir_wbs_dat_o)
);


/*--------------------------------------*/
/*      Wishbone Decoder here           */
/*--------------------------------------*/
// fir
always @(*) begin
    if (wbs_adr_i[31:24] == 'h31) begin
        fir_wbs_stb_i = wbs_stb_i;
        fir_wbs_cyc_i = wbs_cyc_i;
        fir_wbs_we_i  = wbs_we_i;
    end
    else begin
        fir_wbs_stb_i = 0;
        fir_wbs_cyc_i = 0;
        fir_wbs_we_i  = 0;
    end
end

// mm
always @(*) begin
    if (wbs_adr_i[31:24] == 'h32) begin
        mm_wbs_stb_i = wbs_stb_i;
        mm_wbs_cyc_i = wbs_cyc_i;
        mm_wbs_we_i  = wbs_we_i;
    end
    else begin
        mm_wbs_stb_i = 0;
        mm_wbs_cyc_i = 0;
        mm_wbs_we_i  = 0;
    end
end

// qs
always @(*) begin
    if (wbs_adr_i[31:24] == 'h33) begin
        sort_wbs_stb_i = wbs_stb_i;
        sort_wbs_cyc_i = wbs_cyc_i;
        sort_wbs_we_i  = wbs_we_i;
    end
    else begin
        sort_wbs_stb_i = 0;
        sort_wbs_cyc_i = 0;
        sort_wbs_we_i  = 0;
    end
end

always @(*) begin
    wbs_ack_o = (uart_wbs_ack_o | exmem_wbs_ack_o | fir_wbs_ack_o | mm_wbs_ack_o | sort_wbs_ack_o);

    if      (uart_wbs_ack_o)    wbs_dat_o = uart_wbs_dat_o;
    else if (exmem_wbs_ack_o)   wbs_dat_o = exmem_wbs_dat_o;
    else if (fir_wbs_ack_o)     wbs_dat_o = fir_wbs_dat_o;
    else if (mm_wbs_ack_o)      wbs_dat_o = mm_wbs_dat_o;
    else if (sort_wbs_ack_o)    wbs_dat_o = sort_wbs_dat_o;
    else                        wbs_dat_o = 0;
end

endmodule	// user_project_wrapper


`default_nettype wire

module exmem #(
    parameter BITS = 32,
    parameter DELAYS=10
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


module Sort (
           input wb_clk_i,
           input wb_rst_i,
           input wbs_stb_i,
           input wbs_cyc_i,
           input wbs_we_i,
           input [3:0]  wbs_sel_i,
           input [31:0] wbs_dat_i,
           input [31:0] wbs_adr_i,
           output reg        wbs_ack_o,
           output reg [31:0] wbs_dat_o,

           // Logic Analyzer Signals
           input       [127:0] la_data_in,
           output reg  [127:0] la_data_out,
           input       [127:0] la_oenb,

           // IOs
           input      [`MPRJ_IO_PADS-1:0] io_in,
           output reg [`MPRJ_IO_PADS-1:0] io_out,
           output reg [`MPRJ_IO_PADS-1:0] io_oeb,

           // IRQ
           output reg [2:0] irq
       );
//---------------------------------------------------------------------
//   LOGIC DECLARATION
//---------------------------------------------------------------------
reg  [31:0]  temp;
reg  [31:0]  in_array  [9:0];
reg  [3:0]   in_counter, out_counter;
integer i, j;

localparam  BASE_ADDR    = 'h3300_0000;
localparam  OUTPUT_ADDR  = 'h3300_0038;
localparam  IDLE = 0, INPUT = 1, SORT0 = 2, SORT1 = 3, SORT2 = 4, SORT3 = 5, SORT4 = 6, WAIT = 7, OUTPUT = 8;
reg  [3:0]  sort_cs, sort_ns;

// wishbone
reg [3:0]   wb_state, n_wb_state;
reg         out_ready;

//---------------------------------------------------------------------
//   Your DESIGN
//---------------------------------------------------------------------

// Sort ......
// To sort 10 numbers, 10-level comparator is needed, with 2 levels processed in each cycle.
// This results in a total of 5 cycles to complete the sorting.

reg  [31:0] in  [9:0];
wire [31:0] lv0 [9:0];
wire [31:0] lv1 [9:0];

comparator comp_lv0_0(in[0], in[1], lv0[0], lv0[1]);
comparator comp_lv0_1(in[2], in[3], lv0[2], lv0[3]);
comparator comp_lv0_2(in[4], in[5], lv0[4], lv0[5]);
comparator comp_lv0_3(in[6], in[7], lv0[6], lv0[7]);
comparator comp_lv0_4(in[8], in[9], lv0[8], lv0[9]);

assign lv1[0] = lv0[0];
comparator comp_lv1_0(lv0[1], lv0[2], lv1[1], lv1[2]);
comparator comp_lv1_1(lv0[3], lv0[4], lv1[3], lv1[4]);
comparator comp_lv1_2(lv0[5], lv0[6], lv1[5], lv1[6]);
comparator comp_lv1_3(lv0[7], lv0[8], lv1[7], lv1[8]);
assign lv1[9] = lv0[9];

always @(posedge wb_clk_i)
begin
    case (sort_ns)
        IDLE:
        begin
            for(i=0;i<10;i=i+1)
            begin
                in[i] <= 0;
            end
        end
        SORT0:
        begin
            for(i=0;i<10;i=i+1)
            begin
                in[i] <= in_array[i];
            end
        end
        default:
        begin
            for(i=0;i<10;i=i+1)
            begin
                in[i] <= lv1[i];
            end
        end
    endcase
end

// wishbone
assign wb_valid = (wbs_stb_i & wbs_cyc_i);
always @(posedge wb_clk_i)
begin
    if (wb_rst_i)
        wb_state <= IDLE;
    else
    begin
        case(wb_state)
            IDLE:
                wb_state <= (wb_valid) ? WAIT : IDLE;
            WAIT:
                wb_state <= (out_ready) ? OUTPUT : WAIT;
            OUTPUT:
                wb_state <= IDLE;
        endcase
    end
end

always @(posedge wb_clk_i)
begin
    if (wb_rst_i)
    begin
        in_counter <= 0;
        out_counter <= 0;
    end
    else
        if(sort_cs == IDLE)
        begin
            in_counter <= 0;
            out_counter <= 0;
        end
        else
        begin
            in_counter <= (wb_valid && out_ready &&('h3300_0010 <= wbs_adr_i && wbs_adr_i <= 'h3300_0034))? in_counter + 1 : in_counter;
            out_counter <= (wb_valid && out_ready && ('h3300_0038 <= wbs_adr_i && wbs_adr_i <= 'h3300_003b))? out_counter + 1 : out_counter;
        end
end

always @(posedge wb_clk_i)
begin
    if(wb_rst_i)
        sort_cs <= IDLE;
    else
        sort_cs <= sort_ns;
end

always @(*)
begin
    case (sort_cs)
        IDLE:
            sort_ns = (wb_valid && wbs_adr_i == 'h3300_0010)? INPUT : IDLE;
        INPUT:
            sort_ns = (in_counter == 10)? SORT0 : INPUT;
        SORT0:
            sort_ns = SORT1;
        SORT1:
            sort_ns = SORT2;
        SORT2:
            sort_ns = SORT3;
        SORT3:
            sort_ns = SORT4;
        SORT4:
            sort_ns = OUTPUT;
        OUTPUT:
            sort_ns = (out_counter < 10)? OUTPUT : IDLE;
        default:
            sort_ns = IDLE;
    endcase
end

always @(posedge wb_clk_i)
begin
    case (sort_ns)
        IDLE:
            for(i=0;i<10;i=i+1)
            begin
                in_array[i] <= 0;
            end
        INPUT:
            in_array[in_counter] <= wbs_dat_i;
        default:
            in_array[i] <= in_array[i];
    endcase
end

// output ready
always @(*)
begin
    out_ready = 0;
    if ((sort_cs == SORT4 || ('h3300_0010 <= wbs_adr_i && wbs_adr_i <= 'h3300_0034) || ('h3300_0038 <= wbs_adr_i && wbs_adr_i <= 'h3300_003b)) && wb_state == WAIT)
    begin
        out_ready = 1;
    end
end

always @(posedge wb_clk_i)
begin
    wbs_ack_o <= (out_ready)? 1 : 0;
end

always @(*)
begin
    wbs_dat_o = (wb_state == OUTPUT)? (('h3300_0010 <= wbs_adr_i && wbs_adr_i <= 'h3300_0034)? in_array[in_counter-1] : lv1[out_counter-1]) : 0;
end

endmodule


module comparator (
    input [31:0] in_0,
    input [31:0] in_1,
    output wire [31:0] out_0,
    output wire [31:0] out_1
);
assign out_0 = (in_0 <= in_1)? in_0 : in_1;
assign out_1 = (in_0 <= in_1)? in_1 : in_0;
endmodule

module fir (
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
localparam TAP_ADDR    = 'h3100_0010;
localparam DATA_ADDR    = 'h3100_003c;
localparam OUTPUT_ADDR  = 'h3100_0040;
localparam Length_ADDR  = 'h3100_0044;

wire wb_valid;

parameter pADDR_WIDTH = 12;
parameter pDATA_WIDTH = 32;


localparam   IDLE      = 0,
             INPUT_1   = 1 ,
             TAP_WRITE = 2 ,
             TAP_READ  = 3 ,
             TAP_READ_OUTPUT   = 4 ,
             DATA_LENGTH   = 5 ,
             INPUT_6   = 6 ,
             INPUT_7   = 7 ,
             INPUT_8   = 8 ,
             INPUT_9   = 9 ,
             INPUT_10  = 10,
             INPUT_11  = 11,
             WAIT      = 12,
             ADD_1     = 13,
             ADD_2     = 14,
             ADD_3     = 15,
             ADD_4     = 16,
             ADD_5     = 17,
             ADD_6     = 18,
             ADD_7     = 19,
             ADD_8     = 20,
             ADD_9     = 21,
             ADD_10    = 22,
             ADD_11    = 23,
             OUTPUT    = 24,
             RESET     = 25;

reg [(pDATA_WIDTH-1):0] input_data, tap_data, n_tap_data;

reg [4:0] c_state, n_state;
reg done;
reg [(pDATA_WIDTH-1):0] temp;

reg [10:0] data_counter, n_data_counter;
reg [10:0] counter, n_counter;


reg [10:0] pointer, n_pointer;

reg [2:0] ap;

reg [31:0] length_counter;


assign wb_valid = wbs_cyc_i && wbs_stb_i;


// bram for tap RAM
reg [3:0]               tap_WE;
reg                     tap_EN;
reg [(31):0] tap_Di;
reg [(5):0] tap_A;
wire [(31):0] tap_Do;

// bram for data RAM
reg [3:0]               data_WE;
reg                     data_EN;
reg [(31):0] data_Di;
reg [(5):0] data_A;
wire [(31):0] data_Do;

bram16 TAPRAM (.CLK(wb_clk_i), .WE0(tap_WE), .EN0(tap_EN), .Di0(tap_Di), .Do0(tap_Do), .A0(tap_A));
bram16 DATARAM(.CLK(wb_clk_i), .WE0(data_WE), .EN0(data_EN), .Di0(data_Di), .Do0(data_Do), .A0(data_A));

//SRAM write in and read out according to AXI addr
reg [11:0] addr_save;


always @( posedge wb_clk_i ) begin
    if(wb_rst_i)begin
        tap_WE <= 0;
        tap_EN <= 0;
        tap_Di <= 0;
        tap_A  <= 0;
        addr_save <= 0;
    end
    else begin
        tap_EN    <= 1;
        tap_A     <= ( n_state ==  TAP_READ || n_state == TAP_WRITE) ? (wbs_adr_i - TAP_ADDR) >> 2: (n_state >= 12 && n_state <= 22) ? (n_state - 12) : 0;
        tap_Di    <= ( n_state == TAP_WRITE ) ? wbs_dat_i  : 0;
        tap_WE    <= ( n_state == TAP_WRITE ) ? 15 : 0;
    end  
end


always @( posedge wb_clk_i ) begin
    if(wb_rst_i) length_counter <= 0;
    else length_counter <= (c_state == DATA_LENGTH) ? wbs_dat_i : (c_state == OUTPUT) ? length_counter - 1 : length_counter;
end


always @(*) begin
    case (c_state)
        RESET    : n_state = (counter == 10) ? IDLE : RESET;
        IDLE     : begin
            if(wb_valid == 1)begin
                if(wbs_we_i)begin
                    //write tap
                    if(wbs_adr_i < DATA_ADDR && wbs_adr_i >= TAP_ADDR) n_state = TAP_WRITE;
                    else if (wbs_adr_i == Length_ADDR) n_state = DATA_LENGTH;
                    else n_state = INPUT_1;
                end
                else begin
                    if(wbs_adr_i < DATA_ADDR && wbs_adr_i >= TAP_ADDR) n_state = TAP_READ;
                    else n_state = IDLE;
                end
            end
            else n_state = IDLE;
        end
        TAP_READ  : n_state = TAP_READ_OUTPUT;
        TAP_READ_OUTPUT : n_state = IDLE;
        TAP_WRITE : n_state = (wbs_ack_o) ? IDLE : TAP_WRITE;
        DATA_LENGTH : n_state = IDLE;
        INPUT_1   : n_state = WAIT ;
        WAIT      : n_state = ADD_1 ;
        ADD_1     : n_state = ADD_2 ;
        ADD_2     : n_state = ADD_3 ;
        ADD_3     : n_state = ADD_4 ;
        ADD_4     : n_state = ADD_5 ;
        ADD_5     : n_state = ADD_6 ;
        ADD_6     : n_state = ADD_7 ;
        ADD_7     : n_state = ADD_8 ;
        ADD_8     : n_state = ADD_9 ;
        ADD_9     : n_state = ADD_10;
        ADD_10    : n_state = ADD_11;
        ADD_11    : n_state = OUTPUT;
        OUTPUT    : n_state = (wbs_ack_o && length_counter == 1) ? RESET : (wbs_ack_o && length_counter != 1) ? IDLE : OUTPUT;
        default: n_state = c_state;
    endcase
end


always @( posedge wb_clk_i ) begin
    if(wb_rst_i) c_state <= RESET;
    else         c_state <= n_state;
end


always @( posedge wb_clk_i ) begin
    if(wb_rst_i)begin
        counter <= 0;
        data_A  <= 0;
        data_EN <= 0;
        data_Di <= 0;
        data_WE <= 0;
    end
    else begin
        counter <= ( c_state == RESET ) ? counter + 1 : 0;
        data_A  <= ( c_state == RESET ) ? counter : n_pointer;
        data_EN <= 1;
        data_Di <= ( c_state == RESET ) ? 0 : (c_state == INPUT_1) ? wbs_dat_i : 0;
        data_WE <= ( c_state == INPUT_1 || c_state == RESET ) ? 15 : 0;
    end
end

//wbs_ack_o trigger
always @(*) begin
    wbs_ack_o = (c_state == INPUT_1 || c_state == TAP_READ_OUTPUT || c_state == TAP_WRITE || (c_state == OUTPUT && wb_valid && wbs_adr_i == OUTPUT_ADDR) || c_state == DATA_LENGTH) ? 1 : 0;
end

//pointer 
always @(*) begin
    n_pointer = pointer;
    if(c_state == OUTPUT && n_state == IDLE)begin
        if (pointer == 10) n_pointer = 0;
        else n_pointer = pointer + 1;
    end
    else if (c_state >= 12 && c_state <= 22)begin
        if (pointer == 0) n_pointer = 10;
        else              n_pointer = pointer - 1;
    end                 
end

always @( posedge wb_clk_i ) begin
    if(wb_rst_i) pointer <= 0;
    else         pointer <= n_pointer;
end

//MA
always @(posedge wb_clk_i ) begin
    if(wb_rst_i) temp <= 0;
    else            temp <= (c_state >= 13 && c_state <= 23 ) ? temp + data_Do*tap_Do : ( c_state == OUTPUT && n_state == IDLE ) ? 0 : temp;
end

//data out
always @(*) begin
    wbs_dat_o = (c_state == TAP_READ_OUTPUT) ? tap_Do : (wbs_ack_o && c_state == OUTPUT) ? temp : 0;
end

endmodule

module MM (
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

localparam BASE_ADDR    = 'h3200_0000;
localparam OUTPUT_ADDR  = 'h3200_0090;

wire wb_valid;
reg [3:0] cal_counter; // 0 ~ 15

// A ram (0x10 ~ 0x4c)
localparam      Aram_base = 'h3200_0010;
reg [3:0]       Aram_addr;
wire            Aram_En;
wire [3:0]      Aram_We;
wire [31:0]     Aram_Do;

// B ram (0x50 ~ 0x8c)
localparam      Bram_base = 'h3200_0050;
reg [3:0]       Bram_addr;
wire            Bram_En;
wire [3:0]      Bram_We;
wire [31:0]     Bram_Do;

// wishbone
localparam      IDLE = 0, WAIT = 1, OUT = 2;
reg [3:0]       wb_state, n_wb_state;
reg             out_ready;

// MM engine
reg [7:0]       matrix_value;
reg [2:0]       mm_state, n_mm_state;
localparam      M1 = 1, M2 = 2, M3 = 3, M4 = 4, MM_OUT = 5;
wire [7:0]      val_A, val_B;


// block ram related
assign Aram_We      = {4{wbs_we_i}};
assign Aram_En      = wb_valid && (('h3200_0010 <= wbs_adr_i && wbs_adr_i <= 'h3200_004c) || wbs_adr_i == OUTPUT_ADDR); 
always @(*) begin
    if (wbs_adr_i == OUTPUT_ADDR) begin
        Aram_addr = mm_state + (cal_counter << 2);
    end 
    else
        Aram_addr = (wbs_adr_i - Aram_base) >> 2;
end

assign Bram_We      = {4{wbs_we_i}};
assign Bram_En      = wb_valid && (('h3200_0050 <= wbs_adr_i && wbs_adr_i <= 'h3200_008c) || wbs_adr_i == OUTPUT_ADDR); 
always @(*) begin
    if (wbs_adr_i == OUTPUT_ADDR) begin
        Bram_addr = (mm_state << 2) + cal_counter[1:0];
    end 
    else
        Bram_addr    = (wbs_adr_i - Bram_base) >> 2;
end


bram16 Aram(.CLK(wb_clk_i), .WE0(Aram_We), .EN0(Aram_En), .Di0(wbs_dat_i), .Do0(Aram_Do), .A0(Aram_addr));
bram16 Bram(.CLK(wb_clk_i), .WE0(Bram_We), .EN0(Bram_En), .Di0(wbs_dat_i), .Do0(Bram_Do), .A0(Bram_addr));


// output counter
always @(posedge wb_clk_i) begin
    if (wb_rst_i)   cal_counter <= 0;
    else            cal_counter <= (out_ready && wbs_adr_i == OUTPUT_ADDR) ? cal_counter + 1 : cal_counter;
end

// output ready
always @(*) begin
    out_ready = 0;
    if ((mm_state == M4 || ('h3200_0010 <= wbs_adr_i && wbs_adr_i <= 'h3200_004c) || ('h3200_0050 <= wbs_adr_i && wbs_adr_i <= 'h3200_008c)) && wb_state == WAIT) begin
        out_ready = 1;
    end 
end

reg [31:0] wb_addr;
always @(posedge wb_clk_i) begin
    if (wb_rst_i)   wb_addr <= 0;
    else            wb_addr <= (wb_valid) ? wbs_adr_i : wb_addr;
end

always @(*) begin
    wbs_dat_o = 0;
    if (wb_state == OUT) begin
        // A ram
        if      ('h3200_0010 <= wb_addr && wb_addr <= 'h3200_004c) begin
            wbs_dat_o = Aram_Do[7:0];
        end
        // B ram
        else if ('h3200_0050 <= wb_addr && wb_addr <= 'h3200_008c) begin
            wbs_dat_o = Bram_Do[7:0];
        end
        // MM
        else 
            wbs_dat_o = matrix_value;
    end
end

// MM
assign val_A = Aram_Do[7:0];
assign val_B = Bram_Do[7:0];

always @(posedge wb_clk_i) begin
    if (wb_rst_i)   matrix_value <= 0;
    else begin
        case(mm_state)
            IDLE,
            MM_OUT:     matrix_value <= 0;
            default:    matrix_value <= matrix_value + (val_A * val_B); // need fix
        endcase
    end
end

always @(posedge wb_clk_i) begin
    if (wb_rst_i) 
        mm_state <= IDLE;
    else begin
        case(mm_state)
            IDLE:   mm_state <= (wb_valid && wbs_adr_i == OUTPUT_ADDR) ? M1 : IDLE;
            M1:     mm_state <= M2;
            M2:     mm_state <= M3;
            M3:     mm_state <= M4;
            M4:     mm_state <= MM_OUT;
            MM_OUT: mm_state <= IDLE;
        endcase
    end
end

//wishbone
assign wb_valid = (wbs_stb_i & wbs_cyc_i);
always @(posedge wb_clk_i) begin
    if (wb_rst_i) 
        wb_state <= IDLE;
    else begin
        case(wb_state) 
            IDLE: wb_state <= (wb_valid) ? WAIT : IDLE;
            WAIT: wb_state <= (out_ready) ? OUT : WAIT;
            OUT:  wb_state <= IDLE;
        endcase
    end
end

always @(posedge wb_clk_i) begin
    if (wb_rst_i) begin
        wbs_ack_o <= 0;
    end
    else begin
        wbs_ack_o <= (out_ready) ? 1 : 0;
    end
end

endmodule

module exmem_sdram #(
    parameter BITS = 32,
    parameter DELAYS=10
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
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // IRQ
    output [2:0] irq
);
    wire clk;
    wire rst, rst_n;

    wire [`MPRJ_IO_PADS-1:0] io_in;
    wire [`MPRJ_IO_PADS-1:0] io_out;
    wire [`MPRJ_IO_PADS-1:0] io_oeb;

    wire valid;

    wire sdram_cle;
    wire sdram_cs;
    wire sdram_cas;
    wire sdram_ras;
    wire sdram_we;
    wire sdram_dqm;
    wire [1:0] sdram_ba;
    wire [12:0] sdram_a;
    wire [31:0] d2c_data;
    wire [31:0] c2d_data;
    wire [3:0]  bram_mask;

    wire [22:0] ctrl_addr;
    wire ctrl_busy;
    wire ctrl_in_valid, ctrl_out_valid;

    reg ctrl_in_valid_q;
    
    // WB MI A
    
    assign valid = wbs_stb_i && wbs_cyc_i && wbs_adr_i[31:24] == 'h38;
    assign ctrl_in_valid = wbs_we_i ? valid : ~ctrl_in_valid_q && valid;
    assign wbs_ack_o = (wbs_we_i) ? ~ctrl_busy && valid : ctrl_out_valid; 
    assign bram_mask = wbs_sel_i & {4{wbs_we_i}};
    assign ctrl_addr = wbs_adr_i[22:0];

    // IO
    assign io_out = d2c_data;
    assign io_oeb = {(`MPRJ_IO_PADS-1){rst}};

    // IRQ
    assign irq = 3'b000;	// Unused

    // LA
    assign la_data_out = {{(127-BITS){1'b0}}, d2c_data};
    // Assuming LA probes [65:64] are for controlling the count clk & reset  
    assign clk = wb_clk_i;
    assign rst = wb_rst_i;
    assign rst_n = ~rst;

    always @(posedge clk) begin
        if (rst) begin
            ctrl_in_valid_q <= 1'b0;
        end
        else begin
            if (~wbs_we_i && valid && ~ctrl_busy && ctrl_in_valid_q == 1'b0)
                ctrl_in_valid_q <= 1'b1;
            else if (ctrl_out_valid)
                ctrl_in_valid_q <= 1'b0;
        end
    end

    sdram_controller user_sdram_controller (
        .clk(clk),
        .rst(rst),
        
        .sdram_cle(sdram_cle),
        .sdram_cs(sdram_cs),
        .sdram_cas(sdram_cas),
        .sdram_ras(sdram_ras),
        .sdram_we(sdram_we),
        .sdram_dqm(sdram_dqm),
        .sdram_ba(sdram_ba),
        .sdram_a(sdram_a),
        .sdram_dqi(d2c_data),
        .sdram_dqo(c2d_data),

        .user_addr(ctrl_addr),
        .rw(wbs_we_i),
        .data_in(wbs_dat_i),
        .data_out(wbs_dat_o),
        .busy(ctrl_busy),
        .in_valid(ctrl_in_valid),
        .out_valid(ctrl_out_valid)
    );

    sdr user_bram (
        .Rst_n(rst_n),
        .Clk(clk),
        .Cke(sdram_cle),
        .Cs_n(sdram_cs),
        .Ras_n(sdram_ras),
        .Cas_n(sdram_cas),
        .We_n(sdram_we),
        .Addr(sdram_a),
        .Ba(sdram_ba),
        .Dqm(bram_mask),
        .Dqi(c2d_data),
        .Dqo(d2c_data)
    );
endmodule

module sdram_controller (
        input   clk,
        input   rst,

        // these signals go directly to the IO pins
        // output  sdram_clk,
        output  sdram_cle,
        output  sdram_cs,
        output  sdram_cas,
        output  sdram_ras,
        output  sdram_we,
        output  sdram_dqm,
        output  [1:0]  sdram_ba,
        output  [12:0] sdram_a,
        // Jiin: split dq into dqi (input) dqo (output)
        // inout [7:0] sdram_dq,
        input   [31:0] sdram_dqi,
        output  [31:0] sdram_dqo,

        // User interface
        // Note: we want to remap addr (see below)
        // input [22:0] addr,       // address to read/write
        input   [22:0] user_addr,   // the address will be remap to addr later
        
        input   rw,                 // 1 = write, 0 = read
        input   [31:0] data_in,     // data from a read
        output  [31:0] data_out,    // data for a write
        output  busy,               // controller is busy when high
        input   in_valid,           // pulse high to initiate a read/write
        output  out_valid           // pulses high when data from read is valid
    );

    // Jiin: SDRAM Timing  3-3-3, i.e. CASL=3, PRE=3, ACT=3
    localparam tCASL            = 13'd2;       // 3T actually
    localparam tPRE             = 13'd2;       // 3T
    localparam tACT             = 13'd2;       // 3T
    localparam tREF             = 13'd6;       // 7T
    localparam tRef_Counter     = 10'd750;     // 

    // MA Map
    // BA (Bank Address) - 9:8
    // RA (Row Address)  - 22:10
    // CA (Col Address)  - 2'b0, 1'b0, <7:0>, 2'b0
    `define BA      9:8
    `define RA      22:10
    `define CA      7:0

    // Address Remap
    //   - remap user address to addr to create more offpage/onpage cases
    // 
    wire [22:0] addr;
    wire [12:0] Mapped_RA;
    wire [1:0]  Mapped_BA;
    wire [7:0]  Mapped_CA;
    assign Mapped_RA = user_addr[22:10];
    assign Mapped_BA = user_addr[9:8];
    assign Mapped_CA = user_addr[7:0];
    assign addr = {Mapped_RA, Mapped_BA, Mapped_CA};

    // Commands for the SDRAM
    localparam CMD_UNSELECTED    = 4'b1000;
    localparam CMD_NOP           = 4'b0111;
    localparam CMD_ACTIVE        = 4'b0011;
    localparam CMD_READ          = 4'b0101;
    localparam CMD_WRITE         = 4'b0100;
    localparam CMD_TERMINATE     = 4'b0110;
    localparam CMD_PRECHARGE     = 4'b0010;
    localparam CMD_REFRESH       = 4'b0001;
    localparam CMD_LOAD_MODE_REG = 4'b0000;
    
    localparam STATE_SIZE = 4;
    localparam INIT = 4'd0,
               WAIT = 4'd1,
               //PRECHARGE_INIT = 4'd2,
               //REFRESH_INIT_1 = 4'd3,
               //REFRESH_INIT_2 = 4'd4,
               //LOAD_MODE_REG = 4'd5,
               IDLE = 4'd6,
               REFRESH = 4'd7,
               ACTIVATE = 4'd8,
               READ = 4'd9,
               READ_RES = 4'd10,
               WRITE = 4'd11,
               PRECHARGE = 4'd12,
               PREFETCH  = 4'd13,
               PREFETCH_RES  = 4'd14,
               ACTIVATE_PREFETCH = 4'd15;


    // registers for SDRAM signals
    reg cle_d, cle_q;
    reg dqm_q, dqm_d;
    reg [3:0] cmd_d, cmd_q;
    reg [1:0] ba_d, ba_q;
    reg [12:0] a_d, a_q;
    reg [31:0] dq_d, dq_q;
    reg [31:0] dqi_d, dqi_q;
    reg dq_en_d, dq_en_q;

    // Output assignments
    assign sdram_cle = cle_q;
    assign sdram_cs = cmd_q[3];
    assign sdram_ras = cmd_q[2];
    assign sdram_cas = cmd_q[1];
    assign sdram_we = cmd_q[0];
    assign sdram_dqm = dqm_q;
    assign sdram_ba = ba_q;
    assign sdram_a = a_q;
    // assign sdram_dqi = dq_en_q ? dq_q : 8'hZZ; // only drive when dq_en_q is 1
    assign sdram_dqo = dq_en_q ? dq_q : 32'hZZZZZZZZ;

    reg [STATE_SIZE-1:0] state_d, state_q;
    reg [STATE_SIZE-1:0] next_state_d, next_state_q;

    reg [22:0] addr_d, addr_q;
    reg [31:0] data_d, data_q;
    reg out_valid_d, out_valid_q;

    reg [15:0] delay_ctr_d, delay_ctr_q;

    reg [9:0] refresh_ctr_d, refresh_ctr_q;
    reg refresh_flag_d, refresh_flag_q;

    reg ready_d, ready_q;
    reg saved_rw_d, saved_rw_q;
    reg [22:0] saved_addr_d, saved_addr_q;
    reg [31:0] saved_data_d, saved_data_q;

    reg rw_op_d, rw_op_q;

    reg [3:0] row_open_d, row_open_q;
    reg [12:0] row_addr_d[3:0], row_addr_q[3:0];



    reg [2:0] precharge_bank_d, precharge_bank_q;

    // new code
    reg [3:0] prefetch_counter;
    reg [31:0] cache[0:7], n_cache[0:7];
    reg [22:0] n_pre_addr, pre_addr;
    wire [2:0] cache_entry;

    integer i;

    assign data_out = data_q;
    assign busy = !ready_q;
    assign out_valid = out_valid_q;
    assign cache_entry = prefetch_counter - 3;

    always @* begin
        // Default values
        dq_d = dq_q;
        dqi_d = sdram_dqi;
        dq_en_d = 1'b0; // normally keep the bus in high-Z
        cle_d = cle_q;
        cmd_d = CMD_NOP; // default to NOP
        dqm_d = 1'b0;
        ba_d = 2'd0;
        a_d = 13'd0;
        state_d = state_q;
        next_state_d = next_state_q;
        delay_ctr_d = delay_ctr_q;
        addr_d = addr_q;
        data_d = data_q;
        out_valid_d = 1'b0;
        precharge_bank_d = precharge_bank_q;
        rw_op_d = rw_op_q;

        row_open_d = row_open_q;
        

        // row_addr is a 2d array and must be coppied this way
        for (i = 0; i < 4; i = i + 1)
            row_addr_d[i] = row_addr_q[i];

        // The data in the SDRAM must be refreshed periodically.
        // This conter ensures that the data remains intact.
        refresh_flag_d = refresh_flag_q;
        refresh_ctr_d = refresh_ctr_q + 1'b1;
        // Jiin : refresh_counter tRef_Counter
        // if (refresh_ctr_q > 10'd750) begin
        if (refresh_ctr_q > tRef_Counter) begin
            refresh_ctr_d = 10'd0;
            refresh_flag_d = 1'b1;
        end

        //new code
        n_pre_addr = pre_addr;
        for ( i = 0; i<8 ; i = i + 1) begin
            n_cache[i] = cache[i];
        end

        // This is a queue of 1 for read/write operations.
        // When the queue is empty we aren't busy and can
        // accept another request.
        saved_rw_d = saved_rw_q;
        saved_data_d = saved_data_q;
        saved_addr_d = saved_addr_q;
        ready_d = ready_q;
        if (ready_q && in_valid) begin
            saved_rw_d = rw;
            saved_data_d = data_in;
            saved_addr_d = addr;
            ready_d = 1'b0;
        end 

        case (state_q)
            ///// INITALIZATION /////
            INIT: begin
                // ready_d = 1'b0;
                row_open_d = 4'b0;
                out_valid_d = 1'b0;
                // a_d = 13'b0;
                // Reserved, Burst Access, Standard Op, CAS = 2, Sequential, Burst = 4
                a_d = {3'b000, 1'b0, 2'b00, 3'b010, 1'b0, 3'b010}; //010
                ba_d = 2'b0;
                cle_d = 1'b1;
                state_d = WAIT;
                // Note: Jiin - We can skip the power-up sequence & LMR
                // directly jump to IDLE state
                // Power-up Sequence
                // 1. wait for power-up sequence, cmd - NOP or INHIBIT
                // 2. precharge all
                // 3. 2 x Auto-refresh

                // delay_ctr_d = 16'd10100; // wait for 101us
                // next_state_d = PRECHARGE_INIT;

                delay_ctr_d = 16'd0;
                // delay_ctr_d = 16'd1;
                next_state_d = IDLE;
                refresh_flag_d = 1'b0;
                refresh_ctr_d = 10'b1;
                ready_d = 1'b1;

                dq_en_d = 1'b0;
            end
            WAIT: begin
                delay_ctr_d = delay_ctr_q - 1'b1;
                if (delay_ctr_q == 13'd0) begin
                    state_d = next_state_q;
                    // if (next_state_q == WRITE) begin
                    //     dq_en_d = 1'b1; // enable the bus early
                    //     dq_d = data_q[7:0];
                    // end
                end
            end

            ///// IDLE STATE /////
            IDLE: begin
                if (refresh_flag_q) begin // we need to do a refresh
                    state_d = PRECHARGE;
                    next_state_d = REFRESH;
                    precharge_bank_d = 3'b100; // all banks
                    refresh_flag_d = 1'b0; // clear the refresh flag
                end else if (!ready_q) begin // operation waiting
                    // ready_d = 1'b1; // clear the queue
                    rw_op_d = saved_rw_q; // save the values we'll need later
                    addr_d = saved_addr_q;

                    if (saved_rw_q) begin // Write
                        data_d = saved_data_q;
                    end

                    // cache inst hit
                    if ((pre_addr - 32 <= saved_addr_d && saved_addr_d <= pre_addr - 4)) begin
                        ready_d = 1;
                        out_valid_d = 1;
                        state_d = IDLE;
                        
                        if      (pre_addr - 32 == saved_addr_d) data_d = cache[0];
                        else if (pre_addr - 28 == saved_addr_d) data_d = cache[1];
                        else if (pre_addr - 24 == saved_addr_d) data_d = cache[2];
                        else if (pre_addr - 20 == saved_addr_d) data_d = cache[3];
                        else if (pre_addr - 16 == saved_addr_d) data_d = cache[4];
                        else if (pre_addr - 12 == saved_addr_d) data_d = cache[5];
                        else if (pre_addr -  8 == saved_addr_d) data_d = cache[6];
                        else begin                                   
                            data_d = cache[7];
                            if (row_open_q[pre_addr[9:8]]) begin
                                if (row_addr_q[pre_addr[9:8]] == pre_addr[22:10]) begin
                                    // Row is already open
                                    state_d = PREFETCH;
                                    //else
                                    //    state_d = READ;
                                end 
                                else begin
                                    // A different row in the bank is open
                                    state_d = PRECHARGE; // precharge open row
                                    precharge_bank_d = {1'b0, pre_addr[9:8]};
                                    next_state_d = ACTIVATE_PREFETCH; // open current row
                                end
                            end 
                            else begin
                                // no rows open
                                state_d = ACTIVATE_PREFETCH; // open the row
                            end 
                        end
                    end
                    // if the row is open we don't have to activate it
                    else if (row_open_q[saved_addr_q[9:8]]) begin
                        if (row_addr_q[saved_addr_q[9:8]] == saved_addr_q[22:10]) begin
                            // Row is already open
                            if (saved_rw_q)
                                state_d = WRITE;
                            else 
                                state_d = PREFETCH;
                            //else
                            //    state_d = READ;

                        end else begin
                            // A different row in the bank is open
                            state_d = PRECHARGE; // precharge open row
                            precharge_bank_d = {1'b0, saved_addr_q[9:8]};
                            next_state_d = ACTIVATE; // open current row
                        end
                    end else begin
                        // no rows open
                        state_d = ACTIVATE; // open the row
                    end 
                end
            end

            ///// REFRESH /////
            REFRESH: begin
                cmd_d = CMD_REFRESH;
                state_d = WAIT;

                // Jiin
                // delay_ctr_d = 13'd6; // gotta wait 7 clocks (66ns)
                delay_ctr_d = tREF;

                next_state_d = IDLE;
            end

            ///// ACTIVATE /////
            ACTIVATE: begin
                cmd_d = CMD_ACTIVE;
                a_d = addr_q[22:10];
                ba_d = addr_q[9:8];

                // Jiin:
                //      delay_ctr_d = 13'd0;
                delay_ctr_d = tACT;

                state_d = WAIT;

                if (rw_op_q)
                    next_state_d = WRITE;
                else begin
                    next_state_d = PREFETCH;
                    n_pre_addr = addr_q;
                end

                row_open_d[addr_q[9:8]] = 1'b1; // row is now open
                row_addr_d[addr_q[9:8]] = addr_q[22:10];
            end
            ACTIVATE_PREFETCH: begin
                cmd_d = CMD_ACTIVE;
                a_d = pre_addr[22:10];
                ba_d = pre_addr[9:8];

                // Jiin:
                //      delay_ctr_d = 13'd0;
                delay_ctr_d = tACT;

                state_d = WAIT;
                next_state_d = PREFETCH;
                n_pre_addr = pre_addr;

                row_open_d[pre_addr[9:8]] = 1'b1; // row is now open
                row_addr_d[pre_addr[9:8]] = pre_addr[22:10];
            end

            ///// READ /////
            READ: begin
                cmd_d = CMD_READ;
                a_d = {2'b0, 1'b0, addr_q[7:0], 2'b0};
                ba_d = addr_q[9:8];
                state_d = WAIT;

                // Jiin
                // delay_ctr_d = 13'd2; // wait for the data to show up
                delay_ctr_d = tCASL; 

                next_state_d = READ_RES;

            end
            READ_RES: begin
                data_d = dqi_q; // data_d by pass
                out_valid_d = 1'b1;
                state_d = IDLE;
                ready_d = 1;
            end

            ///// WRITE /////
            WRITE: begin
                cmd_d = CMD_WRITE;

                dq_d = data_q;
                // data_d = data_q;
                dq_en_d = 1'b1; // enable out bus
                a_d = {2'b0, 1'b0, addr_q[7:0], 2'b00};
                ba_d = addr_q[9:8];

                state_d = IDLE;
                ready_d = 1;
            end

            ///// PRECHARGE /////
            PRECHARGE: begin
                cmd_d = CMD_PRECHARGE;
                a_d[10] = precharge_bank_q[2]; // all banks
                ba_d = precharge_bank_q[1:0];
                state_d = WAIT;

                // Jiin
                // delay_ctr_d = 13'd0;
                delay_ctr_d = tPRE;

                if (precharge_bank_q[2]) begin
                    row_open_d = 4'b0000; // closed all rows
                end else begin
                    row_open_d[precharge_bank_q[1:0]] = 1'b0; // closed one row
                end
            end
            

            //prefetch
            PREFETCH: begin
                cmd_d = (prefetch_counter < 8) ? CMD_READ : CMD_NOP;
                a_d = (prefetch_counter < 8) ? {2'b0, 1'b0, pre_addr[7:0], 2'b0} : 0;
                ba_d = (prefetch_counter < 8) ? pre_addr[9:8] : 0;
                state_d = (prefetch_counter == 10)  ? IDLE : PREFETCH;
                n_pre_addr = (prefetch_counter < 8) ? pre_addr + 4 : pre_addr;
                if(prefetch_counter > 2) n_cache[cache_entry] = dqi_d;
                //delay_ctr_d = tCASL; 
                //next_state_d = PREFETCH_RES;
            end

            // PREFETCH_RES: begin
            //     n_cache[prefetch_counter] = dqi_q;
            //     state_d = (prefetch_counter == 7) ? IDLE : PREFETCH;
            // end

            default: state_d = INIT;
        endcase
    end


    always @(posedge clk) begin
        if(rst) begin
            cle_q <= 1'b0;
            dq_en_q <= 1'b0;
            state_q <= INIT;
            ready_q <= 1'b0;
            // new code
            for (i = 0; i < 8; i = i + 1 ) begin
                cache[i] <= 0;
            end
            pre_addr <= 0;
            prefetch_counter <= 0;
        end else begin
            cle_q <= cle_d;
            dq_en_q <= dq_en_d;
            state_q <= state_d;
            ready_q <= ready_d;
            // new code
            for (i = 0; i < 8; i = i + 1 ) begin
                cache[i] <= n_cache[i];
            end
            pre_addr <= n_pre_addr;
            if(prefetch_counter == 10) prefetch_counter <= 0;
            else prefetch_counter <= (state_q == PREFETCH) ? prefetch_counter + 1 : prefetch_counter;
        end

        saved_rw_q <= saved_rw_d;
        saved_data_q <= saved_data_d;
        saved_addr_q <= saved_addr_d;

        cmd_q <= cmd_d;
        dqm_q <= dqm_d;
        ba_q <= ba_d;
        a_q <= a_d;
        dq_q <= dq_d;
        dqi_q <= dqi_d;

        next_state_q <= next_state_d;
        refresh_flag_q <= refresh_flag_d;
        refresh_ctr_q <= refresh_ctr_d;
        data_q <= data_d;
        addr_q <= addr_d;
        out_valid_q <= out_valid_d;
        row_open_q <= row_open_d;
        for (i = 0; i < 4; i = i + 1)
            row_addr_q[i] <= row_addr_d[i];
  
        precharge_bank_q <= precharge_bank_d;
        rw_op_q <= rw_op_d;
        delay_ctr_q <= delay_ctr_d;
    end

endmodule

module sdr (
        // Dq separate into Dqi (input), Dqo (output)
        Dqi,
        Dqo,
        //Dq, //////////////////////////////////////////////////// remove Dq
        
        Addr, Ba, Clk, Cke, Cs_n, Ras_n, Cas_n, We_n, Dqm,  // sdr interface
        
        // Reset - active low
        Rst_n
        
        
        // BRAM Interface
        // BRAM Interface
        
        
        
        
        
        //BRAM_Addr,
        //BRAM_EN_A,
        //BRAM_WEN_A,
        //BRAM_Din_A,
        //BRAM_Dout_A
);
    
    // mem_sizes - 4 * 4K (Sub-bank)
    // address mapping scheme, need to reduce its size
    // Each Bank is 4KB (one BRAM) = 32bit * 1024
    // parameter mem_sizes = 2**(ROW_BITS+COL_BITS) - 1;
    parameter mem_sizes = 1024;
    
    // timing parameters  - in terms of # of tCK
    parameter tCK              =     6.0; // tCK    ns    Nominal Clock Cycle Time
    parameter tCK3_min         =     6.0; // tCK    ns    Nominal Clock Cycle Time
    parameter tCK2_min         =    10.0; // tCK    ns    Nominal Clock Cycle Time
    parameter tCK1_min         =    20.0; // tCK    ns    Nominal Clock Cycle Time
    parameter tAC3             =     5.4; // tAC3   ns    Access time from CLK (pos edge) CL = 3
    parameter tAC2             =     7.5; // tAC2   ns    Access time from CLK (pos edge) CL = 2
    parameter tAC1             =    17.0; // tAC1   ns    Parameter definition for compilation - CL = 1 illegal for sg75
    
    
    
    parameter tAC             =    5.4;
    
    
    
    parameter tHZ3             =     5.4; // tHZ3   ns    Data Out High Z time - CL = 3
    parameter tHZ2             =     7.5; // tHZ2   ns    Data Out High Z time - CL = 2
    parameter tHZ1             =    17.0; // tHZ1   ns    Parameter definition for compilation - CL = 1 illegal for sg75
    parameter tOH              =     3.0; // tOH    ns    Data Out Hold time
    parameter tMRD             =     2.0; // tMRD   tCK   Load Mode Register command cycle time (2 * tCK)
    parameter tRAS             =    42.0; // tRAS   ns    Active to Precharge command time
    parameter tRC              =    60.0; // tRC    ns    Active to Active/Auto Refresh command time
    parameter tRFC             =    60.0; // tRFC   ns    Refresh to Refresh Command interval time
    parameter tRCD             =    18.0; // tRCD   ns    Active to Read/Write command time
    parameter tRP              =    18.0; // tRP    ns    Precharge command period
    parameter tRRD             =     2.0; // tRRD   tCK   Active bank a to Active bank b command time (2 * tCK)
    parameter tWRa             =     6.0; // tWR    ns    Write recovery time (auto-precharge mode - must add 1 CLK)
    parameter tWRm             =    12.0; // tWR    ns    Write recovery time

    //localparam tRCD              = 3;    // 3T - active to read/write command time
    //localparam tRP               = 3;    // 3T - Precharge command period
    localparam tCL               = 3;    // 3T - CAS latency 
    //localparam tRC               = 10;   // 10T - Active to Active/Auto Referesh command time
    //localparam tRAS              = 7;    // 7T - Active to Precharge command time
    //localparam tRRD              = 2;    // Active bank to Active bank command time
    

    parameter ADDR_BITS         = 13;   // ROW address: 8K A[12:0], COL address [9:0] + A11 (Auto-precharge)
    parameter BA_BITS           = 2;    // 4 banks
    parameter DQ_BITS           = 32;   // 32-bit
    parameter DM_BITS           = 4;    // 4 bytes
    parameter COL_BITS          = 10;   // # of COL module sdr
    
    
    
    
    
    
    
    input                         Rst_n;          // Jiin new Reset low
    input                         Clk;
    input                         Cke;
    input                         Cs_n;
    input                         Ras_n;
    input                         Cas_n;
    input                         We_n;
    input     [ADDR_BITS - 1 : 0] Addr;
    input       [BA_BITS - 1 : 0] Ba;
    //inout       [DQ_BITS - 1 : 0] Dq; //////////////////////////////////////////////  remove Dq
    input       [DM_BITS - 1 : 0] Dqm;
    input       [DQ_BITS - 1 : 0] Dqi;
    output      [DQ_BITS - 1 : 0] Dqo;
    
    // BRAM Interface
    //output      [31:0]              BRAM_Addr;
    //output                          BRAM_EN;
    //output                      BRAM_WEN;
    //output      [DQ_BITS -1 : 0] BRAM_Din;
    //input       [DQ_BITS -1 : 0] BRAM_Dout;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

// Accesss Bank0-3 mapped to BRAM
    //reg         [DQ_BITS - 1 : 0] Bank0 [0 : mem_sizes];
    //reg         [DQ_BITS - 1 : 0] Bank1 [0 : mem_sizes];
    //reg         [DQ_BITS - 1 : 0] Bank2 [0 : mem_sizes];
    //reg         [DQ_BITS - 1 : 0] Bank3 [0 : mem_sizes];

    reg                   [1 : 0] Bank_addr [0 : 3];                // Bank Address Pipeline
    reg                   [1 : 0] Bank_temp;                        // Bank Address 
    reg                   [1 : 0] Bank_temp_buf;                        // Bank Address 
    reg        [COL_BITS - 1 : 0] Col_addr [0 : 3];                 // Column Address Pipeline
    reg                   [3 : 0] Command [0 : 3];                  // Command Operation Pipeline
    reg                   [1 : 0] Dqm_reg0, Dqm_reg1;               // DQM Operation Pipeline
    reg       [ADDR_BITS - 1 : 0] B0_row_addr, B1_row_addr, B2_row_addr, B3_row_addr;

    reg        [ADDR_BITS - 1: 0] Mode_reg;
    reg         [DQ_BITS - 1 : 0] Dq_reg, Dq_dqm;
    reg        [COL_BITS - 1 : 0] Col_temp, Burst_counter;

    reg                           Act_b0, Act_b1, Act_b2, Act_b3;   // Bank Activate
    reg                           Pc_b0, Pc_b1, Pc_b2, Pc_b3;       // Bank Precharge

    reg                   [1 : 0] Bank_precharge       [0 : 3];     // Precharge Command
    reg                           A10_precharge        [0 : 3];     // Addr[10] = 1 (All banks)
    reg                           Auto_precharge       [0 : 3];     // RW Auto Precharge (Bank)
    reg                           Read_precharge       [0 : 3];     // R  Auto Precharge
    reg                           Write_precharge      [0 : 3];     //  W Auto Precharge
    reg                           RW_interrupt_read    [0 : 3];     // RW Interrupt Read with Auto Precharge
    reg                           RW_interrupt_write   [0 : 3];     // RW Interrupt Write with Auto Precharge
    reg                   [1 : 0] RW_interrupt_bank;                // RW Interrupt Bank

// Do not support precharge
    integer                       RW_interrupt_counter [0 : 3];     // RW Interrupt Counter
    integer                       Count_precharge      [0 : 3];     // RW Auto Precharge Counter

    reg                           Data_in_enable;
    reg                           Data_out_enable;
    reg                           Data_out_enable_buf;
    reg                   [1 : 0] Bank, Prev_bank;
    reg       [ADDR_BITS - 1 : 0] Row;
    reg        [COL_BITS - 1 : 0] Col, Col_brst;

    // Internal system clock
    reg                           CkeZ;
    wire                       Sys_clk;

    // Commands Decode
    wire      Active_enable    = ~Cs_n & ~Ras_n &  Cas_n &  We_n;
    wire      Aref_enable      = ~Cs_n & ~Ras_n & ~Cas_n &  We_n;
    wire      Burst_term       = ~Cs_n &  Ras_n &  Cas_n & ~We_n;
    wire      Mode_reg_enable  = ~Cs_n & ~Ras_n & ~Cas_n & ~We_n;
    wire      Prech_enable     = ~Cs_n & ~Ras_n &  Cas_n & ~We_n;
    wire      Read_enable      = ~Cs_n &  Ras_n & ~Cas_n &  We_n;
    wire      Write_enable     = ~Cs_n &  Ras_n & ~Cas_n & ~We_n;

// Mode_reg Defition
// Mode_reg[2:0] = Burst Length = 3'b11 = 8, 3'b00 = 1
// Mode_reg[3] = Burst Type = 0 Sequential
// Mode_reg[6:4] = Cas_latency = 3  3'b011
// Mode_reg[8:7] = Operation Mode = 2'b00  Standard
// Mode_reg[9] = 0  read/write burst, 1 : write single
// Mode_reg[12:10] = reserved
// Mode_reg = 13'b000_0_00_011_0_011;
    // Burst Length Decode
    // Fixed at Burst_length_8, i.e. Mode_reg[2:0]= 3'b011
    wire      Burst_length_1   = ~Mode_reg[2] & ~Mode_reg[1] & ~Mode_reg[0];
    wire      Burst_length_2   = ~Mode_reg[2] & ~Mode_reg[1] &  Mode_reg[0];
    wire      Burst_length_4   = ~Mode_reg[2] &  Mode_reg[1] & ~Mode_reg[0];
    wire      Burst_length_8   = ~Mode_reg[2] &  Mode_reg[1] &  Mode_reg[0];
    wire      Burst_length_f   =  Mode_reg[2] &  Mode_reg[1] &  Mode_reg[0];

    // CAS Latency Decode
    // Fixed Cas_latency = 3;  i.e. Mode_reg[6:4] = 3'b011
    wire [2 : 0] Cas_latency   =  {Mode_reg[6],  Mode_reg[5],   Mode_reg[4]};

    // Write Burst Mode
    wire      Write_burst_mode = Mode_reg[9];

    wire      Debug            = 1'b1;                          // Debug messages : 1 = On
    wire      Dq_chk           = Sys_clk & Data_in_enable;      // Check setup/hold time for DQ
    
    // Dq separate Dqi, Dqo
    // assign    Dq               = Dq_reg;                        // DQ buffer
    wire    [DQ_BITS - 1 : 0]  Dqo;
    // assign      Dqo = Dq_reg;
    assign      Dqo = Dq_temp;
    wire    [DQ_BITS - 1 : 0]  Dq_temp;
    assign      Dq_temp = (Data_out_enable_buf) ? bdq[Bank_temp_buf] : 0;
    //assign      Dq  = Data_out_enable ? Dq_reg : Dqi;

    

    // Commands Operation
    `define   ACT       0
    `define   NOP       1
    `define   READ      2
    `define   WRITE     3
    `define   PRECH     4
    `define   A_REF     5
    `define   BST       6
    `define   LMR       7

// Remove timing check
/*
    // These timing dynamically adjust based on CAS Latency
    time  tAC, tHZ;

    // Timing Check variable
    time  MRD_chk;
    time  WR_chkm [0 : 3];
    time  RFC_chk, RRD_chk;
    time  RC_chk0, RC_chk1, RC_chk2, RC_chk3;
    time  RAS_chk0, RAS_chk1, RAS_chk2, RAS_chk3;
    time  RCD_chk0, RCD_chk1, RCD_chk2, RCD_chk3;
    time  RP_chk0, RP_chk1, RP_chk2, RP_chk3;

    initial begin
        Dq_reg = {DQ_BITS{1'bz}};
        Data_in_enable = 0; Data_out_enable = 0;
        Act_b0 = 1; Act_b1 = 1; Act_b2 = 1; Act_b3 = 1;
        Pc_b0 = 0; Pc_b1 = 0; Pc_b2 = 0; Pc_b3 = 0;
        WR_chkm[0] = 0; WR_chkm[1] = 0; WR_chkm[2] = 0; WR_chkm[3] = 0;
        RW_interrupt_read[0] = 0; RW_interrupt_read[1] = 0; RW_interrupt_read[2] = 0; RW_interrupt_read[3] = 0;
        RW_interrupt_write[0] = 0; RW_interrupt_write[1] = 0; RW_interrupt_write[2] = 0; RW_interrupt_write[3] = 0;
        MRD_chk = 0; RFC_chk = 0; RRD_chk = 0;
        RAS_chk0 = 0; RAS_chk1 = 0; RAS_chk2 = 0; RAS_chk3 = 0;
        RCD_chk0 = 0; RCD_chk1 = 0; RCD_chk2 = 0; RCD_chk3 = 0;
        RC_chk0 = 0; RC_chk1 = 0; RC_chk2 = 0; RC_chk3 = 0;
        RP_chk0 = 0; RP_chk1 = 0; RP_chk2 = 0; RP_chk3 = 0;
        $timeformat (-9, 1, " ns", 12);
    end
*/
// Instead perform the following timing check - tRCD
// If timing check fails ->  read/write inverted value
/*
    parameter tRCD              = 3;    // 3T - active to read/write command time
    parameter tRP               = 3;    // 3T - Precharge command period
    parameter tCL               = 3;    // 3T - CAS latency 
    parameter tRC               = 10;   // 10T - Active to Active/Auto Referesh command time
    parameter tRAS              = 7;    // 7T - Active to Precharge command time
    parameter tRRD              = 2;    // Active bank to Active bank command time
*/


    // System clock generator
    /* 
    always begin
        @ (posedge Clk) begin
            Sys_clk = CkeZ;
            CkeZ = Cke;
        end
        @ (negedge Clk) begin
            Sys_clk = 1'b0;
        end
    end
    */
    // CKe timing
    //      /--\__/--\__/--\__/--\__/--\__/--\__/
    // CKe  -------\___________/-----------------
    // iCKe_r------------\___________/-----------
    // iCKe_f --------------\___________/--------
    // Sys_clk/-\_/--\__/--\______________/--\__
    
    wire [DQ_BITS-1:0] bdq [0:3];
    reg  [DQ_BITS-1:0] bdi [0:3];
    reg  [3:0] bren;
    reg  [3:0] bwen;
    always@(*)begin
        bwen = 4'b0000;
        bren = 4'b0000;
        if(Data_in_enable)begin//Data_in_enable||Data_out_enable
            case(Bank_temp)
                2'b00:begin
                    bwen = 4'b0001;
                    bren = 4'b0000;
                end
                2'b01:begin
                    bwen = 4'b0010;
                    bren = 4'b0000;
                end
                2'b10:begin
                    bwen = 4'b0100;
                    bren = 4'b0000;
                end
                2'b11:begin
                    bwen = 4'b1000;
                    bren = 4'b0000;
                end
            endcase
        end else if(Command[2] == `READ)begin//Data_out_enable, Command[1] == `READ
            case(Bank_temp)
                2'b00:begin
                    bwen = 4'b0000;
                    bren = 4'b0001;
                end
                2'b01:begin
                    bwen = 4'b0000;
                    bren = 4'b0010;
                end
                2'b10:begin
                    bwen = 4'b0000;
                    bren = 4'b0100;
                end
                2'b11:begin
                    bwen = 4'b0000;
                    bren = 4'b1000;
                end
            endcase
        end
    end
    blkRam#(.SIZE(mem_sizes), .BIT_WIDTH(DQ_BITS))
    Bank0(
        .clk(Sys_clk), 
        .we(bwen[0]), 
        .re(bren[0]), 
        .waddr(Col_brst[9:0]), 
        .raddr(Col_brst[9:0]), 
        .d(bdi[0]), 
        .q(bdq[0])
    );
    blkRam#(.SIZE(mem_sizes), .BIT_WIDTH(DQ_BITS))
    Bank1(
        .clk(Sys_clk), 
        .we(bwen[1]), 
        .re(bren[1]), 
        .waddr(Col_brst[9:0]), 
        .raddr(Col_brst[9:0]), 
        .d(bdi[1]), 
        .q(bdq[1])
    );
    blkRam#(.SIZE(mem_sizes), .BIT_WIDTH(DQ_BITS))
    Bank2(
        .clk(Sys_clk), 
        .we(bwen[2]), 
        .re(bren[2]), 
        .waddr(Col_brst[9:0]), 
        .raddr(Col_brst[9:0]), 
        .d(bdi[2]), 
        .q(bdq[2])
    );
    blkRam#(.SIZE(mem_sizes), .BIT_WIDTH(DQ_BITS))
    Bank3(
        .clk(Sys_clk), 
        .we(bwen[3]), 
        .re(bren[3]), 
        .waddr(Col_brst[9:0]), 
        .raddr(Col_brst[9:0]), 
        .d(bdi[3]), 
        .q(bdq[3])
    );
    
    reg iCKe_f,     // CKe by Clk falling edge, used to gate Sys_clk
        iCKe_r;     // CKe sampled by Clk rising edge
    always @(posedge Clk or negedge Rst_n) begin
        if(!Rst_n) begin
            iCKe_r = 0;
        end else begin
            iCKe_r = Cke;
        end
    end
    always @(negedge Clk or negedge Rst_n) begin
        if(!Rst_n) begin
            iCKe_f = 0;
        end else begin
            iCKe_f = iCKe_r;
        end
    end
    assign Sys_clk = iCKe_f & Clk;

    // pipeline Command, Col_addr, Bank_addr, 
    integer i;
    always @ (posedge Sys_clk or negedge Rst_n) begin
     /*
        // Internal Commamd Pipelined
        Command[0] = Command[1];
        Command[1] = Command[2];
        Command[2] = Command[3];
        Command[3] = `NOP;

        Col_addr[0] = Col_addr[1];
        Col_addr[1] = Col_addr[2];
        Col_addr[2] = Col_addr[3];
        Col_addr[3] = {COL_BITS{1'b0}};

        Bank_addr[0] = Bank_addr[1];
        Bank_addr[1] = Bank_addr[2];
        Bank_addr[2] = Bank_addr[3];
        Bank_addr[3] = 2'b0;

        Bank_precharge[0] = Bank_precharge[1];
        Bank_precharge[1] = Bank_precharge[2];
        Bank_precharge[2] = Bank_precharge[3];
        Bank_precharge[3] = 2'b0;

        A10_precharge[0] = A10_precharge[1];
        A10_precharge[1] = A10_precharge[2];
        A10_precharge[2] = A10_precharge[3];
        A10_precharge[3] = 1'b0;

        // Dqm pipeline for Read
        Dqm_reg0 = Dqm_reg1;
        Dqm_reg1 = Dqm;
        */
        if(!Rst_n)begin
            for(i=0;i<4;i=i+1)begin
                Command[i] <= `NOP;
                Col_addr[i] <= {COL_BITS{1'b0}};
                Bank_addr[i] <= 2'b0;
                Bank_precharge[i] <= 2'b0;
                A10_precharge[i] <= 1'b0;
            end
            Dqm_reg0 <= {DM_BITS{1'b0}};
            Dqm_reg1 <= {DM_BITS{1'b0}};
            Bank_temp <= 2'd0;
            Bank_temp_buf <= 2'd0;
        end else begin
            if (Prech_enable == 1'b1) begin
                Command[Cas_latency - 1] <= `PRECH;
                Bank_precharge[Cas_latency - 1] <= Ba;
                A10_precharge[Cas_latency - 1] <= Addr[10];
            end
            else if (Burst_term === 1'b1) begin
                Command[Cas_latency - 1] <= `BST;
            end
            else if (Read_enable === 1'b1) begin
                Command[Cas_latency - 1] <= `READ;//Cas_latency - 1
                Col_addr[Cas_latency - 1] <= Addr;//Cas_latency - 1
                Bank_addr[Cas_latency - 1] <= Ba;//Cas_latency - 1
            end    
            else if (Write_enable == 1'b1) begin
                Command[Cas_latency - 1] <= `WRITE;//0
                Col_addr[Cas_latency - 1] <= Addr;//0
                Bank_addr[Cas_latency - 1] <= Ba;//0
            end else begin
                {Command[2]} <= {Command[3]};
                {Col_addr[2]} <= {Col_addr[3]};
                {Bank_addr[2]} <= {Bank_addr[3]};
                {Bank_precharge[2]} <= {Bank_precharge[3]};
                {A10_precharge[0], A10_precharge[1]} <= {A10_precharge[1], A10_precharge[2]};
            end
            
            {Command[0], Command[1]} <= {Command[1], Command[2]};
            {Col_addr[0], Col_addr[1]} <= {Col_addr[1], Col_addr[2]};
            {Bank_addr[0], Bank_addr[1]} <= {Bank_addr[1], Bank_addr[2]};
                
            {Bank_precharge[0], Bank_precharge[1]} <= {Bank_precharge[1], Bank_precharge[2]};
            {A10_precharge[0], A10_precharge[1]} <= {A10_precharge[1], A10_precharge[2]};
            if(Read_enable)begin//Command[2] == `READ
                Bank_temp <= Ba;//Bank_addr[2]
                Bank_temp_buf <= Bank_temp;
            end else begin
                Bank_temp <= Bank_addr[0];
                Bank_temp_buf <= Bank_temp;
            end
        end
    end

    // Mode Register, default value
    always @(posedge Sys_clk or negedge Rst_n) begin
        if(!Rst_n) begin
            // Mode_reg =  13'b000_0_00_011_0_011;  // Cas-latency = 3; burst-length = 8; write burst
            // Currently we run at non-burst mode
            Mode_reg <=  13'b000_1_00_011_0_000;  // Cas-latency = 3; burst-length = 1; No write burst
        end else if (Mode_reg_enable === 1'b1) begin
            // Register Mode
            Mode_reg <= 13'b000_1_00_011_0_000;//Addr;
        end
    end 

    // Active Block (Latch Bank Address and Row Address)
    reg Error;          // Set if error happen
    always @(posedge Sys_clk or negedge Rst_n) begin
        if(!Rst_n)begin
            Error <= 1'b0;
            Dq_reg <= {DQ_BITS{1'b0}};
            Dq_dqm <= {DQ_BITS{1'b0}};
            
            Act_b0 <= 1'b0;
            Act_b1 <= 1'b0;
            Act_b2 <= 1'b0;
            Act_b3 <= 1'b0;
            Pc_b0  <= 1'b0;
            Pc_b1  <= 1'b0;
            Pc_b2  <= 1'b0;
            Pc_b3  <= 1'b0;
            
            B0_row_addr <= {ADDR_BITS{1'b0}};
            B1_row_addr <= {ADDR_BITS{1'b0}};
            B2_row_addr <= {ADDR_BITS{1'b0}};
            B3_row_addr <= {ADDR_BITS{1'b0}};
            
            
            for(i=0;i<4;i=i+1)begin
                bdi[i] <= {DQ_BITS{1'b0}};
            end
        end else begin
            if (Active_enable === 1'b1) begin
                // Activate an open bank can corrupt data
                if ((Ba === 2'b00 && Act_b0 === 1'b1) || (Ba === 2'b01 && Act_b1 === 1'b1) ||
                    (Ba === 2'b10 && Act_b2 === 1'b1) || (Ba === 2'b11 && Act_b3 === 1'b1)) begin
                    Error <= 1;     // Bank already activated 
                    // $display ("%m : at time %t ERROR: Bank already activated -- data can be corrupted", $time);
                end
    
                case(Ba) 
                    2'b00:  
                        begin
                            Act_b0 <= 1'b1;
                            Pc_b0 <= 1'b0;
                            B0_row_addr <= Addr[ADDR_BITS - 1: 0];
                        end
                    2'b01:  
                        begin
                            Act_b1 <= 1'b1;
                            Pc_b1 <= 1'b0;
                            B1_row_addr <= Addr[ADDR_BITS - 1: 0];
                        end
                    2'b10:  
                        begin
                            Act_b2 <= 1'b1;
                            Pc_b2 <= 1'b0;
                            B2_row_addr <= Addr[ADDR_BITS - 1: 0];
                        end
                    2'b11:  
                        begin
                            Act_b3 <= 1'b1;
                            Pc_b3 <= 1'b0;
                            B3_row_addr <= Addr[ADDR_BITS - 1: 0];
                        end
                    default:  
                        begin
                            {Act_b3, Act_b2, Act_b1, Act_b0} <= 4'b0;
                            {Pc_b3, Pc_b2, Pc_b1, Pc_b0} <= 4'b0;
                        end
                endcase
            end
        
    // Precharge Block
            if (Prech_enable == 1'b1) begin
    
                // Precharge Bank 0
                if ((Addr[10] === 1'b1 || (Addr[10] === 1'b0 && Ba === 2'b00)) && Act_b0 === 1'b1) begin
                    Act_b0 <= 1'b0;
                    Pc_b0 <= 1'b1;
                end
    
                // Precharge Bank 1
                if ((Addr[10] === 1'b1 || (Addr[10] === 1'b0 && Ba === 2'b01)) && Act_b1 === 1'b1) begin
                    Act_b1 <= 1'b0;
                    Pc_b1 <= 1'b1;
                end
    
                // Precharge Bank 2
                if ((Addr[10] === 1'b1 || (Addr[10] === 1'b0 && Ba === 2'b10)) && Act_b2 === 1'b1) begin
                    Act_b2 <= 1'b0;
                    Pc_b2 <= 1'b1;
                end
    
                // Precharge Bank 3
                if ((Addr[10] === 1'b1 || (Addr[10] === 1'b0 && Ba === 2'b11)) && Act_b3 === 1'b1) begin
                    Act_b3 <= 1'b0;
                    Pc_b3 <= 1'b1;
                end
    
                // Terminate a Write Immediately (if same bank or all banks)
                //if (Data_in_enable === 1'b1 && (Bank === Ba || Addr[10] === 1'b1)) begin
                //    Data_in_enable = 1'b0;
                //end
    
    
    
                // Precharge Command Pipeline for Read
                //Command[Cas_latency - 1] = `PRECH;
                //Bank_precharge[Cas_latency - 1] = Ba;
                //A10_precharge[Cas_latency - 1] = Addr[10];
            end
        
               
        // Burst terminate
            //if (Burst_term === 1'b1) begin
                // Terminate a Write Immediately
                //if (Data_in_enable == 1'b1) begin
                //    Data_in_enable = 1'b0;
                //end
    
                // Terminate a Read Depend on CAS Latency
                //Command[Cas_latency - 1] = `BST;
            //end
        
        // Read
            if (Read_enable === 1'b1) begin
                // Check to see if bank is open (ACT)
                if ((Ba == 2'b00 && Pc_b0 == 1'b1) || (Ba == 2'b01 && Pc_b1 == 1'b1) ||
                    (Ba == 2'b10 && Pc_b2 == 1'b1) || (Ba == 2'b11 && Pc_b3 == 1'b1)) begin
                    Error <= 1;
`ifdef SIM
                    $display("%m : at time %t ERROR: Bank is not Activated for Read", $time);
`endif
                end

                // CAS Latency pipeline
                //Command[Cas_latency - 1] <= `READ;
                //Col_addr[Cas_latency - 1] <= Addr;
                //Bank_addr[Cas_latency - 1] <= Ba;
    
                // Read interrupt Write (terminate Write immediately)
                if (Data_in_enable == 1'b1) begin
                    //Data_in_enable = 1'b0;
    
                    // Interrupting a Write with Autoprecharge
                    if (Auto_precharge[RW_interrupt_bank] == 1'b1 && Write_precharge[RW_interrupt_bank] == 1'b1) begin
                        RW_interrupt_write[RW_interrupt_bank] <= 1'b1;
                        RW_interrupt_counter[RW_interrupt_bank] <= 0;
    
                        // Display debug message
`ifdef SIM
                        $display ("%m : at time %t NOTE : Read interrupt Write with Autoprecharge", $time);
`endif
                    end
                end
    
                // Read with Auto Precharge
                if (Addr[10] == 1'b1) begin
                    Auto_precharge[Ba] <= 1'b1;
                    Count_precharge[Ba] <= 0;
                    RW_interrupt_bank <= Ba;
                    Read_precharge[Ba] <= 1'b1;
                end
            end
    // Write Command
            if (Write_enable == 1'b1) begin
                // Activate to Write
                if ((Ba == 2'b00 && Pc_b0 == 1'b1) || (Ba == 2'b01 && Pc_b1 == 1'b1) ||
                    (Ba == 2'b10 && Pc_b2 == 1'b1) || (Ba == 2'b11 && Pc_b3 == 1'b1)) begin
                    Error <= 1;
`ifdef SIM
                    $display("%m : at time %t ERROR: Bank is not Activated for Write", $time);
`endif
                end

                // Latch Write command, Bank, and Column
                //Command[0] = `WRITE;
                //Col_addr[0] = Addr;
                //Bank_addr[0] = Ba;
    
                // Write interrupt Write (terminate Write immediately)
                if (Data_in_enable == 1'b1) begin
                    //Data_in_enable = 1'b0;
    
                    // Interrupting a Write with Autoprecharge
                    if (Auto_precharge[RW_interrupt_bank] == 1'b1 && Write_precharge[RW_interrupt_bank] == 1'b1) begin
                        RW_interrupt_write[RW_interrupt_bank] <= 1'b1;
`ifdef SIM
                        // Display debug message
                        $display ("%m : at time %t NOTE : Read Bank %d interrupt Write Bank %d with Autoprecharge", $time, Ba, RW_interrupt_bank);
`endif
                    end
                end

                // Write interrupt Read (terminate Read immediately)
                if (Data_out_enable == 1'b1) begin
                    //Data_out_enable = 1'b0;
                    
                    // Interrupting a Read with Autoprecharge
                    if (Auto_precharge[RW_interrupt_bank] == 1'b1 && Read_precharge[RW_interrupt_bank] == 1'b1) begin
                        RW_interrupt_read[RW_interrupt_bank] <= 1'b1;
    
                        // Display debug message
`ifdef SIM           
                        $display ("%m : at time %t NOTE : Write Bank %d interrupt Read Bank %d with Autoprecharge", $time, Ba, RW_interrupt_bank);
`endif             
                    end
                end
    
                // Write with Auto Precharge
                if (Addr[10] == 1'b1) begin
                    Auto_precharge[Ba] <= 1'b1;
                    Count_precharge[Ba] <= 0;
                    RW_interrupt_bank <= Ba;
                    Write_precharge[Ba] <= 1'b1;
                end
            end
    
    // Detect Read or Write command
            if (Read_enable || Command[0] == `WRITE) begin//Command[2] == `READ
                if(Read_enable)begin//Command[2] == `READ
                    Bank <= Ba;//Bank_addr[2]
                    Col <= Addr;//Col_addr[2]
                    Col_brst <= Addr;//Col_addr[2]
                    case (Ba)//Bank_addr[2]
                        2'b00 : Row <= B0_row_addr;
                        2'b01 : Row <= B1_row_addr;
                        2'b10 : Row <= B2_row_addr;
                        2'b11 : Row <= B3_row_addr;
                    endcase
                    Burst_counter <= 0;
                end else begin
                    Bank <= Bank_addr[0];
                    Col <= Col_addr[0];
                    Col_brst <= Col_addr[0];
                    case (Bank_addr[0])
                        2'b00 : Row <= B0_row_addr;
                        2'b01 : Row <= B1_row_addr;
                        2'b10 : Row <= B2_row_addr;
                        2'b11 : Row <= B3_row_addr;
                    endcase
                    Burst_counter <= 0;
                end
                //Data_in_enable = 1'b0;
                //Data_out_enable = 1'b1;
                //if(Command[0] == `READ) begin
                //    Data_in_enable = 1'b0;
                //    Data_out_enable = 1'b1;
                //end else begin
                //    Data_in_enable = 1'b1;
                //    Data_out_enable = 1'b0;
                //end
                if(Command[0] == `WRITE) begin
                    case (Bank_addr[0])
                        2'b00 : bdi[0] <= Dq_dqm;//Bank0 [{Row, Col}] = Dq_dqm;
                        2'b01 : bdi[1] <= Dq_dqm;//Bank1 [{Row, Col}] = Dq_dqm;
                        2'b10 : bdi[2] <= Dq_dqm;//Bank2 [{Row, Col}] = Dq_dqm;
                        2'b11 : bdi[3] <= Dq_dqm;//Bank3 [{Row, Col}] = Dq_dqm;
                    endcase
                end  
            end 

// `ifdef SIM
//             // Display debug message
//             if (Dqm !== 2'b11) begin
//                 // Record tWR for manual precharge
//                 WR_chkm [Bank] = $time;

//                 if (Debug) begin
//                     $display("%m : at time %t WRITE: Bank = %d Row = %d, Col = %d, Data = %h", $time, Bank, Row, Col, Dq_dqm);
//                 end
//             end else begin
//                 if (Debug) begin
//                     $display("%m : at time %t WRITE: Bank = %d Row = %d, Col = %d, Data = Hi-Z due to DQM", $time, Bank, Row, Col);
//                 end
//             end
//             // Advance burst counter subroutine
//             #tHZ Burst_decode;
// `endif     
//             end 
//             else if (Data_out_enable == 1'b1) begin                         // Reading Data from Memory
//                 // Array buffer
//                 //case (Bank)   
//                 //    2'b00 : Dq_reg <= bdq[0];//Dq_dqm = Bank0 [{Row, Col}];
//                 //    2'b01 : Dq_reg <= bdq[1];//Dq_dqm = Bank1 [{Row, Col}];
//                 //    2'b10 : Dq_reg <= bdq[2];//Dq_dqm = Bank2 [{Row, Col}];
//                 //    2'b11 : Dq_reg <= bdq[3];//Dq_dqm = Bank3 [{Row, Col}];
//                 //endcase
//                 // Dqm operation
// `ifdef x4
//                 if (Dqm_reg0 [0] == 1'b1) begin
//                     Dq_dqm [ 3 : 0] = 4'bz;
//                 end
// `elsif x8
//                 if (Dqm_reg0 [0] == 1'b1) begin
//                     Dq_dqm [ 7 : 0] = 8'bz;
//                 end
// `elsif x16
//                 if (Dqm_reg0 [0] == 1'b1) begin
//                     Dq_dqm [ 7 : 0] = 8'bz;
//                 end
//                 if (Dqm_reg0 [1] == 1'b1) begin
//                     Dq_dqm [15 : 8] = 8'bz;
//                 end
// `endif

//                 // Display debug message
//                 //Dq_reg = #tAC Dq_dqm;
// `ifdef SIM
//                 if (Debug) begin
//                     $display("%m : at time %t READ : Bank = %d Row = %d, Col = %d, Dqm = %b, Data = %h", $time, Bank, Row, Col, Dqm_reg0, Dq_reg);
//                 end
// `endif
//                 // Advance burst counter subroutine
//                 // Burst_decode;
//                 // Reduce the Burst_decode to handle only
//                 //  - Sequential Burst
//                 //  - Burst-length = 8
//                 // Advance Burst Counter
//                 /*
//                 Burst_counter = Burst_counter + 1;
//                 Col_temp = Col + 1;             // Sequntial Burst only
//                 Col[2:0] = Col_temp[2:0];       // Burst Length = 8
//                 if(Burst_counter >= 8) begin
//                     Data_in_enable = 1'b0;
//                     Data_out_enable = 1'b0;
//                 end
//                 // Burst Read Single Write            
//                 if (Write_burst_mode == 1'b1) begin
//                     Data_in_enable = 1'b0;
//                 end 
//                 */
                
            if(Write_enable) begin
                Dq_dqm <= Dqi;
            end
            
            if (Data_out_enable_buf) begin
                case (Bank_temp_buf)   
                    2'b00 : Dq_reg <= bdq[0];
                    2'b01 : Dq_reg <= bdq[1];
                    2'b10 : Dq_reg <= bdq[2];
                    2'b11 : Dq_reg <= bdq[3];
                endcase
            end
            
           //Burst_decode;
        end
    end

    always@(posedge Sys_clk or negedge Rst_n)begin
        if(!Rst_n)begin
            Data_out_enable_buf <= 1'b0;
        end else begin
            if(|bren)
                Data_out_enable_buf <= 1'b1;
            else
                Data_out_enable_buf <= 1'b0;
        end
    end
    
    always@(posedge Sys_clk or negedge Rst_n)begin
        if(!Rst_n)begin
            Data_in_enable <= 1'b0;
            Data_out_enable <= 1'b0;
        end else begin
            if (Prech_enable == 1'b1) begin
                if (Data_in_enable === 1'b1 && (Bank === Ba || Addr[10] === 1'b1)) begin
                    Data_in_enable <= 1'b0;
                end
            end
            else if (Burst_term === 1'b1) begin
            // Terminate a Write Immediately
                if (Data_in_enable == 1'b1) begin
                    Data_in_enable <= 1'b0;
                end
            end
            else if (Read_enable === 1'b1) begin
                if (Data_in_enable == 1'b1) begin
                    Data_in_enable <= 1'b0;
                end
            end            
            else if (Write_enable == 1'b1) begin
                if (Data_in_enable == 1'b1) begin
                    Data_in_enable <= 1'b0;
                end
                if (Data_out_enable == 1'b1) begin
                    Data_out_enable <= 1'b0;
                end
            end    
            else if (Read_enable || Command[0] == `WRITE) begin//Command[2] == `READ
                //Data_in_enable <= 1'b0;
                //Data_out_enable <= 1'b1;
                if(Read_enable) begin//Command[2] == `READ
                    Data_in_enable <= 1'b0;
                    Data_out_enable <= 1'b1;
                end else begin
                    Data_in_enable <= 1'b1;
                    Data_out_enable <= 1'b0;
                end
            end else begin
                if(Data_in_enable)
                    Data_in_enable <= 1'b0;
                if(Data_out_enable)
                Data_out_enable <= 1'b0;
            end
        end        
    end


// Burst counter decode
    task Burst_decode;
        begin
            // Advance Burst Counter
            Burst_counter = Burst_counter + 1;

            // Burst Type
            if (Mode_reg[3] == 1'b0) begin                                  // Sequential Burst
                Col_temp = Col + 1;
            end else if (Mode_reg[3] == 1'b1) begin                         // Interleaved Burst
                Col_temp[2] =  Burst_counter[2] ^  Col_brst[2];
                Col_temp[1] =  Burst_counter[1] ^  Col_brst[1];
                Col_temp[0] =  Burst_counter[0] ^  Col_brst[0];
            end

            // Burst Length
            if (Burst_length_2) begin                                       // Burst Length = 2
                Col [0] = Col_temp [0];
            end else if (Burst_length_4) begin                              // Burst Length = 4
                Col [1 : 0] = Col_temp [1 : 0];
            end else if (Burst_length_8) begin                              // Burst Length = 8
                Col [2 : 0] = Col_temp [2 : 0];
            end else begin                                                  // Burst Length = FULL
                Col = Col_temp;
            end

            // Burst Read Single Write            
            if (Write_burst_mode == 1'b1) begin
                Data_in_enable = 1'b0;
            end

            // Data Counter
            if (Burst_length_1 == 1'b1) begin
                if (Burst_counter >= 1) begin
                    Data_in_enable = 1'b0;
                    Data_out_enable = 1'b0;
                end
            end else if (Burst_length_2 == 1'b1) begin
                if (Burst_counter >= 2) begin
                    Data_in_enable = 1'b0;
                    Data_out_enable = 1'b0;
                end
            end else if (Burst_length_4 == 1'b1) begin
                if (Burst_counter >= 4) begin
                    Data_in_enable = 1'b0;
                    Data_out_enable = 1'b0;
                end
            end else if (Burst_length_8 == 1'b1) begin
                if (Burst_counter >= 8) begin
                    Data_in_enable = 1'b0;
                    Data_out_enable = 1'b0;
                end
            end
        end
    endtask
endmodule


module blkRam #(parameter SIZE = 8192, parameter BIT_WIDTH = 8)(clk, we, re, waddr, raddr, d, q);
    //`define RAMinitFile "./sfmx.dat"
    parameter ADDR_WIDTH = $clog2(SIZE);
    parameter COL_WIDTH = 9;
    parameter NB_COL = 4;
    input                          clk;
    input                          we, re;
    input [ADDR_WIDTH-1:0]         waddr, raddr;
    input [BIT_WIDTH-1:0]          d;
    output reg [BIT_WIDTH-1:0]     q;
    reg [BIT_WIDTH-1:0] RAM [0:SIZE-1];
    //initial $readmemh(`RAMinitFile, RAM);
    
    always @(posedge clk)begin
        if(re) q <= RAM[raddr];
    end
    
    always @(posedge clk)begin
        if(we) RAM[waddr] <= d;
    end
    
endmodule


`default_nettype wire
