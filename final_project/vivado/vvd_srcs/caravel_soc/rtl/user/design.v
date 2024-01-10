`define MPRJ_IO_PADS 32
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
            out_counter <=0;
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
    wbs_ack_o = (out_ready)? 1 : 0;
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
reg [(pDATA_WIDTH-1):0] tap_Di;
reg [(pADDR_WIDTH-1):0] tap_A;
wire [(pDATA_WIDTH-1):0] tap_Do;

// bram for data RAM
reg [3:0]               data_WE;
reg                     data_EN;
reg [(pDATA_WIDTH-1):0] data_Di;
reg [(pADDR_WIDTH-1):0] data_A;
wire [(pDATA_WIDTH-1):0] data_Do;

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
        tap_A     <= ( n_state ==  TAP_READ || n_state == TAP_WRITE) ? (wbs_adr_i - TAP_ADDR): (n_state >= 12 && n_state <= 22) ? (n_state - 12)<<2 : 0;
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
        data_A  <= ( c_state == RESET ) ? counter<<2 : n_pointer<<2;
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
reg [31:0]      Aram_Do;

// B ram (0x50 ~ 0x8c)
localparam      Bram_base = 'h3200_0050;
reg [3:0]       Bram_addr;
wire            Bram_En;
wire [3:0]      Bram_We;
reg [31:0]      Bram_Do;

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

logic [31:0] wb_addr;
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