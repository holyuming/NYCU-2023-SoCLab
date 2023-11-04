// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir_n11_maxi_fir_n11_maxi,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xck26-sfvc784-2LV-c,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2117,HLS_SYN_LUT=2681,HLS_VERSION=2022_1}" *)

module fir_n11_maxi (
        ap_clk,
        ap_rst_n,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 7;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_ID_WIDTH = 1;
parameter    C_M_AXI_GMEM_ADDR_WIDTH = 64;
parameter    C_M_AXI_GMEM_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_USER_VALUE = 0;
parameter    C_M_AXI_GMEM_PROT_VALUE = 0;
parameter    C_M_AXI_GMEM_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_GMEM_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_AWADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_AWID;
output  [7:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [C_M_AXI_GMEM_AWUSER_WIDTH - 1:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_WDATA;
output  [C_M_AXI_GMEM_WSTRB_WIDTH - 1:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_WID;
output  [C_M_AXI_GMEM_WUSER_WIDTH - 1:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_ARADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_ARID;
output  [7:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [C_M_AXI_GMEM_ARUSER_WIDTH - 1:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_RID;
input  [C_M_AXI_GMEM_RUSER_WIDTH - 1:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_BID;
input  [C_M_AXI_GMEM_BUSER_WIDTH - 1:0] m_axi_gmem_BUSER;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [63:0] pn32HPInput;
wire   [63:0] pn32HPOutput;
reg   [3:0] an32Coef_address0;
reg    an32Coef_ce0;
wire   [31:0] an32Coef_q0;
wire   [31:0] regXferLeng;
reg   [31:0] an32Coef_load_reg_330;
wire    ap_CS_fsm_state2;
reg   [31:0] an32Coef_load_1_reg_340;
wire    ap_CS_fsm_state3;
reg   [31:0] an32Coef_load_2_reg_350;
wire    ap_CS_fsm_state4;
reg   [31:0] an32Coef_load_3_reg_360;
wire    ap_CS_fsm_state5;
reg   [31:0] an32Coef_load_4_reg_370;
wire    ap_CS_fsm_state6;
reg   [31:0] an32Coef_load_5_reg_380;
wire    ap_CS_fsm_state7;
reg   [31:0] an32Coef_load_6_reg_390;
wire    ap_CS_fsm_state8;
reg   [31:0] an32Coef_load_7_reg_400;
wire    ap_CS_fsm_state9;
reg   [31:0] an32Coef_load_8_reg_410;
wire    ap_CS_fsm_state10;
reg   [31:0] an32Coef_load_9_reg_420;
wire    ap_CS_fsm_state11;
reg   [63:0] pn32HPOutput_read_reg_430;
wire    ap_CS_fsm_state12;
reg   [63:0] pn32HPInput_read_reg_435;
reg   [30:0] lshr_ln16_cast_reg_440;
reg   [31:0] an32Coef_load_10_reg_446;
reg   [61:0] trunc_ln18_1_reg_451;
reg   [61:0] trunc_ln30_1_reg_456;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_start;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_done;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_idle;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_ready;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWVALID;
wire   [63:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWADDR;
wire   [0:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWID;
wire   [31:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWLEN;
wire   [2:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWSIZE;
wire   [1:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWBURST;
wire   [1:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWLOCK;
wire   [3:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWCACHE;
wire   [2:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWPROT;
wire   [3:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWQOS;
wire   [3:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWREGION;
wire   [0:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWUSER;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WVALID;
wire   [31:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WDATA;
wire   [3:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WSTRB;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WLAST;
wire   [0:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WID;
wire   [0:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WUSER;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARVALID;
wire   [63:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARADDR;
wire   [0:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARID;
wire   [31:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARLEN;
wire   [2:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARSIZE;
wire   [1:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARBURST;
wire   [1:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARLOCK;
wire   [3:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARCACHE;
wire   [2:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARPROT;
wire   [3:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARQOS;
wire   [3:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARREGION;
wire   [0:0] grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARUSER;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_RREADY;
wire    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_BREADY;
reg    gmem_AWVALID;
wire    gmem_AWREADY;
reg    gmem_WVALID;
wire    gmem_WREADY;
reg    gmem_ARVALID;
wire    gmem_ARREADY;
wire    gmem_RVALID;
reg    gmem_RREADY;
wire   [31:0] gmem_RDATA;
wire   [8:0] gmem_RFIFONUM;
wire    gmem_BVALID;
reg    gmem_BREADY;
reg    grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire   [32:0] zext_ln16_fu_285_p1;
wire   [32:0] add_ln16_fu_289_p2;
reg   [13:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_start_reg = 1'b0;
end

fir_n11_maxi_fir_n11_maxi_Pipeline_XFER_LOOP grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_start),
    .ap_done(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_done),
    .ap_idle(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_idle),
    .ap_ready(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_ready),
    .m_axi_gmem_AWVALID(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(gmem_AWREADY),
    .m_axi_gmem_AWADDR(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(gmem_WREADY),
    .m_axi_gmem_WDATA(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(gmem_ARREADY),
    .m_axi_gmem_ARADDR(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(gmem_RVALID),
    .m_axi_gmem_RREADY(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(gmem_RDATA),
    .m_axi_gmem_RLAST(1'b0),
    .m_axi_gmem_RID(1'd0),
    .m_axi_gmem_RFIFONUM(gmem_RFIFONUM),
    .m_axi_gmem_RUSER(1'd0),
    .m_axi_gmem_RRESP(2'd0),
    .m_axi_gmem_BVALID(gmem_BVALID),
    .m_axi_gmem_BREADY(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(2'd0),
    .m_axi_gmem_BID(1'd0),
    .m_axi_gmem_BUSER(1'd0),
    .sext_ln30_1(trunc_ln30_1_reg_456),
    .sext_ln18_1(trunc_ln18_1_reg_451),
    .lshr_ln16_cast(lshr_ln16_cast_reg_440),
    .pn32HPInput(pn32HPInput_read_reg_435),
    .empty(lshr_ln16_cast_reg_440),
    .an32Coef_load(an32Coef_load_reg_330),
    .an32Coef_load_1(an32Coef_load_1_reg_340),
    .an32Coef_load_2(an32Coef_load_2_reg_350),
    .an32Coef_load_3(an32Coef_load_3_reg_360),
    .an32Coef_load_4(an32Coef_load_4_reg_370),
    .an32Coef_load_5(an32Coef_load_5_reg_380),
    .an32Coef_load_6(an32Coef_load_6_reg_390),
    .an32Coef_load_7(an32Coef_load_7_reg_400),
    .an32Coef_load_8(an32Coef_load_8_reg_410),
    .an32Coef_load_9(an32Coef_load_9_reg_420),
    .an32Coef_load_10(an32Coef_load_10_reg_446),
    .pn32HPOutput(pn32HPOutput_read_reg_430)
);

fir_n11_maxi_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .pn32HPInput(pn32HPInput),
    .pn32HPOutput(pn32HPOutput),
    .regXferLeng(regXferLeng),
    .an32Coef_address0(an32Coef_address0),
    .an32Coef_ce0(an32Coef_ce0),
    .an32Coef_q0(an32Coef_q0),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

fir_n11_maxi_gmem_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .USER_RFIFONUM_WIDTH( 9 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_GMEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_GMEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_GMEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_GMEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_GMEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_GMEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_GMEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_GMEM_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_GMEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_GMEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_GMEM_CACHE_VALUE ),
    .USER_DW( 32 ),
    .USER_AW( 64 ))
gmem_m_axi_U(
    .AWVALID(m_axi_gmem_AWVALID),
    .AWREADY(m_axi_gmem_AWREADY),
    .AWADDR(m_axi_gmem_AWADDR),
    .AWID(m_axi_gmem_AWID),
    .AWLEN(m_axi_gmem_AWLEN),
    .AWSIZE(m_axi_gmem_AWSIZE),
    .AWBURST(m_axi_gmem_AWBURST),
    .AWLOCK(m_axi_gmem_AWLOCK),
    .AWCACHE(m_axi_gmem_AWCACHE),
    .AWPROT(m_axi_gmem_AWPROT),
    .AWQOS(m_axi_gmem_AWQOS),
    .AWREGION(m_axi_gmem_AWREGION),
    .AWUSER(m_axi_gmem_AWUSER),
    .WVALID(m_axi_gmem_WVALID),
    .WREADY(m_axi_gmem_WREADY),
    .WDATA(m_axi_gmem_WDATA),
    .WSTRB(m_axi_gmem_WSTRB),
    .WLAST(m_axi_gmem_WLAST),
    .WID(m_axi_gmem_WID),
    .WUSER(m_axi_gmem_WUSER),
    .ARVALID(m_axi_gmem_ARVALID),
    .ARREADY(m_axi_gmem_ARREADY),
    .ARADDR(m_axi_gmem_ARADDR),
    .ARID(m_axi_gmem_ARID),
    .ARLEN(m_axi_gmem_ARLEN),
    .ARSIZE(m_axi_gmem_ARSIZE),
    .ARBURST(m_axi_gmem_ARBURST),
    .ARLOCK(m_axi_gmem_ARLOCK),
    .ARCACHE(m_axi_gmem_ARCACHE),
    .ARPROT(m_axi_gmem_ARPROT),
    .ARQOS(m_axi_gmem_ARQOS),
    .ARREGION(m_axi_gmem_ARREGION),
    .ARUSER(m_axi_gmem_ARUSER),
    .RVALID(m_axi_gmem_RVALID),
    .RREADY(m_axi_gmem_RREADY),
    .RDATA(m_axi_gmem_RDATA),
    .RLAST(m_axi_gmem_RLAST),
    .RID(m_axi_gmem_RID),
    .RUSER(m_axi_gmem_RUSER),
    .RRESP(m_axi_gmem_RRESP),
    .BVALID(m_axi_gmem_BVALID),
    .BREADY(m_axi_gmem_BREADY),
    .BRESP(m_axi_gmem_BRESP),
    .BID(m_axi_gmem_BID),
    .BUSER(m_axi_gmem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(gmem_ARVALID),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARADDR),
    .I_ARLEN(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARLEN),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(gmem_RREADY),
    .I_RDATA(gmem_RDATA),
    .I_RFIFONUM(gmem_RFIFONUM),
    .I_AWVALID(gmem_AWVALID),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWADDR),
    .I_AWLEN(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWLEN),
    .I_WVALID(gmem_WVALID),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WDATA),
    .I_WSTRB(grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WSTRB),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(gmem_BREADY)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_start_reg <= 1'b1;
        end else if ((grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_ready == 1'b1)) begin
            grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        an32Coef_load_10_reg_446 <= an32Coef_q0;
        lshr_ln16_cast_reg_440 <= {{add_ln16_fu_289_p2[32:2]}};
        pn32HPInput_read_reg_435 <= pn32HPInput;
        pn32HPOutput_read_reg_430 <= pn32HPOutput;
        trunc_ln18_1_reg_451 <= {{pn32HPInput[63:2]}};
        trunc_ln30_1_reg_456 <= {{pn32HPOutput[63:2]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        an32Coef_load_1_reg_340 <= an32Coef_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        an32Coef_load_2_reg_350 <= an32Coef_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        an32Coef_load_3_reg_360 <= an32Coef_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        an32Coef_load_4_reg_370 <= an32Coef_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        an32Coef_load_5_reg_380 <= an32Coef_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        an32Coef_load_6_reg_390 <= an32Coef_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        an32Coef_load_7_reg_400 <= an32Coef_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        an32Coef_load_8_reg_410 <= an32Coef_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        an32Coef_load_9_reg_420 <= an32Coef_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        an32Coef_load_reg_330 <= an32Coef_q0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        an32Coef_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        an32Coef_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        an32Coef_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        an32Coef_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        an32Coef_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        an32Coef_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        an32Coef_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        an32Coef_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        an32Coef_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        an32Coef_address0 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        an32Coef_address0 = 64'd10;
    end else begin
        an32Coef_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        an32Coef_ce0 = 1'b1;
    end else begin
        an32Coef_ce0 = 1'b0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

always @ (*) begin
    if ((grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_ARVALID = grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_ARVALID;
    end else begin
        gmem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_AWVALID = grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_AWVALID;
    end else begin
        gmem_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_BREADY = grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_BREADY;
    end else begin
        gmem_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_RREADY = grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_RREADY;
    end else begin
        gmem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_WVALID = grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_m_axi_gmem_WVALID;
    end else begin
        gmem_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln16_fu_289_p2 = (zext_ln16_fu_285_p1 + 33'd3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_start = grp_fir_n11_maxi_Pipeline_XFER_LOOP_fu_242_ap_start_reg;

assign zext_ln16_fu_285_p1 = regXferLeng;

endmodule //fir_n11_maxi