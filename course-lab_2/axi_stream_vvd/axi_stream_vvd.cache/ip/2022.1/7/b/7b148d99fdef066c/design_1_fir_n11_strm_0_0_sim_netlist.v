// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Sep 30 03:06:12 2023
// Host        : ubuntu2004 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fir_n11_strm_0_0_sim_netlist.v
// Design      : design_1_fir_n11_strm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fir_n11_strm_0_0,fir_n11_strm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "fir_n11_strm,Vivado 2022.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    pstrmInput_TVALID,
    pstrmInput_TREADY,
    pstrmInput_TDATA,
    pstrmInput_TDEST,
    pstrmInput_TKEEP,
    pstrmInput_TSTRB,
    pstrmInput_TUSER,
    pstrmInput_TLAST,
    pstrmInput_TID,
    pstrmOutput_TVALID,
    pstrmOutput_TREADY,
    pstrmOutput_TDATA,
    pstrmOutput_TDEST,
    pstrmOutput_TKEEP,
    pstrmOutput_TSTRB,
    pstrmOutput_TUSER,
    pstrmOutput_TLAST,
    pstrmOutput_TID);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [6:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [6:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:pstrmInput:pstrmOutput, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmInput TVALID" *) input pstrmInput_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmInput TREADY" *) output pstrmInput_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmInput TDATA" *) input [31:0]pstrmInput_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmInput TDEST" *) input [0:0]pstrmInput_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmInput TKEEP" *) input [3:0]pstrmInput_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmInput TSTRB" *) input [3:0]pstrmInput_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmInput TUSER" *) input [0:0]pstrmInput_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmInput TLAST" *) input [0:0]pstrmInput_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmInput TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pstrmInput, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [0:0]pstrmInput_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmOutput TVALID" *) output pstrmOutput_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmOutput TREADY" *) input pstrmOutput_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmOutput TDATA" *) output [31:0]pstrmOutput_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmOutput TDEST" *) output [0:0]pstrmOutput_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmOutput TKEEP" *) output [3:0]pstrmOutput_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmOutput TSTRB" *) output [3:0]pstrmOutput_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmOutput TUSER" *) output [0:0]pstrmOutput_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmOutput TLAST" *) output [0:0]pstrmOutput_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pstrmOutput TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pstrmOutput, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]pstrmOutput_TID;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [31:0]pstrmInput_TDATA;
  wire [0:0]pstrmInput_TDEST;
  wire [0:0]pstrmInput_TID;
  wire [3:0]pstrmInput_TKEEP;
  wire [0:0]pstrmInput_TLAST;
  wire pstrmInput_TREADY;
  wire [3:0]pstrmInput_TSTRB;
  wire [0:0]pstrmInput_TUSER;
  wire pstrmInput_TVALID;
  wire [31:0]pstrmOutput_TDATA;
  wire [0:0]pstrmOutput_TDEST;
  wire [0:0]pstrmOutput_TID;
  wire [3:0]pstrmOutput_TKEEP;
  wire [0:0]pstrmOutput_TLAST;
  wire pstrmOutput_TREADY;
  wire [3:0]pstrmOutput_TSTRB;
  wire [0:0]pstrmOutput_TUSER;
  wire pstrmOutput_TVALID;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [6:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .pstrmInput_TDATA(pstrmInput_TDATA),
        .pstrmInput_TDEST(pstrmInput_TDEST),
        .pstrmInput_TID(pstrmInput_TID),
        .pstrmInput_TKEEP(pstrmInput_TKEEP),
        .pstrmInput_TLAST(pstrmInput_TLAST),
        .pstrmInput_TREADY(pstrmInput_TREADY),
        .pstrmInput_TSTRB(pstrmInput_TSTRB),
        .pstrmInput_TUSER(pstrmInput_TUSER),
        .pstrmInput_TVALID(pstrmInput_TVALID),
        .pstrmOutput_TDATA(pstrmOutput_TDATA),
        .pstrmOutput_TDEST(pstrmOutput_TDEST),
        .pstrmOutput_TID(pstrmOutput_TID),
        .pstrmOutput_TKEEP(pstrmOutput_TKEEP),
        .pstrmOutput_TLAST(pstrmOutput_TLAST),
        .pstrmOutput_TREADY(pstrmOutput_TREADY),
        .pstrmOutput_TSTRB(pstrmOutput_TSTRB),
        .pstrmOutput_TUSER(pstrmOutput_TUSER),
        .pstrmOutput_TVALID(pstrmOutput_TVALID),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "7" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "4'b0001" *) 
(* ap_ST_fsm_state2 = "4'b0010" *) (* ap_ST_fsm_state3 = "4'b0100" *) (* ap_ST_fsm_state4 = "4'b1000" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm
   (ap_clk,
    ap_rst_n,
    pstrmInput_TDATA,
    pstrmInput_TVALID,
    pstrmInput_TREADY,
    pstrmInput_TKEEP,
    pstrmInput_TSTRB,
    pstrmInput_TUSER,
    pstrmInput_TLAST,
    pstrmInput_TID,
    pstrmInput_TDEST,
    pstrmOutput_TDATA,
    pstrmOutput_TVALID,
    pstrmOutput_TREADY,
    pstrmOutput_TKEEP,
    pstrmOutput_TSTRB,
    pstrmOutput_TUSER,
    pstrmOutput_TLAST,
    pstrmOutput_TID,
    pstrmOutput_TDEST,
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
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input [31:0]pstrmInput_TDATA;
  input pstrmInput_TVALID;
  output pstrmInput_TREADY;
  input [3:0]pstrmInput_TKEEP;
  input [3:0]pstrmInput_TSTRB;
  input [0:0]pstrmInput_TUSER;
  input [0:0]pstrmInput_TLAST;
  input [0:0]pstrmInput_TID;
  input [0:0]pstrmInput_TDEST;
  output [31:0]pstrmOutput_TDATA;
  output pstrmOutput_TVALID;
  input pstrmOutput_TREADY;
  output [3:0]pstrmOutput_TKEEP;
  output [3:0]pstrmOutput_TSTRB;
  output [0:0]pstrmOutput_TUSER;
  output [0:0]pstrmOutput_TLAST;
  output [0:0]pstrmOutput_TID;
  output [0:0]pstrmOutput_TDEST;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [6:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [6:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire B_V_data_1_sel_wr;
  wire ap_CS_fsm_pp0_stage10;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [3:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_n_10;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_n_16;
  wire [31:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDATA;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID;
  wire [3:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TKEEP;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST;
  wire [3:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TSTRB;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  wire icmp_ln22_reg_556;
  wire interrupt;
  wire n32XferCnt_fu_11409_out;
  wire [30:0]p_0_in;
  wire [31:0]pstrmInput_TDATA;
  wire [31:0]pstrmInput_TDATA_int_regslice;
  wire [0:0]pstrmInput_TDEST;
  wire pstrmInput_TDEST_int_regslice;
  wire [0:0]pstrmInput_TID;
  wire pstrmInput_TID_int_regslice;
  wire [3:0]pstrmInput_TKEEP;
  wire [3:0]pstrmInput_TKEEP_int_regslice;
  wire [0:0]pstrmInput_TLAST;
  wire pstrmInput_TLAST_int_regslice;
  wire pstrmInput_TREADY;
  wire pstrmInput_TREADY_int_regslice;
  wire [3:0]pstrmInput_TSTRB;
  wire [3:0]pstrmInput_TSTRB_int_regslice;
  wire [0:0]pstrmInput_TUSER;
  wire pstrmInput_TUSER_int_regslice;
  wire pstrmInput_TVALID;
  wire pstrmInput_TVALID_int_regslice;
  wire [31:0]pstrmOutput_TDATA;
  wire [0:0]pstrmOutput_TDEST;
  wire [0:0]pstrmOutput_TID;
  wire [3:0]pstrmOutput_TKEEP;
  wire [0:0]pstrmOutput_TLAST;
  wire pstrmOutput_TREADY;
  wire pstrmOutput_TREADY_int_regslice;
  wire [3:0]pstrmOutput_TSTRB;
  wire [0:0]pstrmOutput_TUSER;
  wire pstrmOutput_TVALID;
  wire [31:0]q00;
  wire regslice_both_pstrmInput_V_last_V_U_n_3;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [6:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [30:0]tmp_reg_187;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_control_s_axi control_s_axi_U
       (.D(ap_NS_fsm[1]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .Q(ap_CS_fsm_state1),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0),
        .\int_regXferLeng_reg[31]_0 (p_0_in),
        .interrupt(interrupt),
        .q00(q00),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_fir_n11_strm_Pipeline_XFER_LOOP grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112
       (.B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .D(ap_NS_fsm[3:2]),
        .E(n32XferCnt_fu_11409_out),
        .Q(ap_CS_fsm_pp0_stage10),
        .\add_ln35_reg_575_reg[29]_0 (grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDATA),
        .\ap_CS_fsm_reg[3]_0 ({ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0_reg_reg_0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_n_10),
        .ap_enable_reg_pp0_iter1_reg_0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_n_16),
        .ap_ready_int(ap_ready_int),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .icmp_ln22_reg_556(icmp_ln22_reg_556),
        .\icmp_ln22_reg_556_reg[0]_0 (tmp_reg_187),
        .pstrmInput_TDATA_int_regslice(pstrmInput_TDATA_int_regslice),
        .pstrmInput_TDEST_int_regslice(pstrmInput_TDEST_int_regslice),
        .pstrmInput_TID_int_regslice(pstrmInput_TID_int_regslice),
        .pstrmInput_TLAST_int_regslice(pstrmInput_TLAST_int_regslice),
        .pstrmInput_TREADY_int_regslice(pstrmInput_TREADY_int_regslice),
        .pstrmInput_TUSER_int_regslice(pstrmInput_TUSER_int_regslice),
        .pstrmInput_TVALID_int_regslice(pstrmInput_TVALID_int_regslice),
        .pstrmOutput_TREADY_int_regslice(pstrmOutput_TREADY_int_regslice),
        .q00(q00),
        .\tmp_keep_V_reg_660_reg[3]_0 (grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TKEEP),
        .\tmp_keep_V_reg_660_reg[3]_1 (pstrmInput_TKEEP_int_regslice),
        .\tmp_strb_V_reg_665_reg[3]_0 (grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TSTRB),
        .\tmp_strb_V_reg_665_reg[3]_1 (pstrmInput_TSTRB_int_regslice));
  FDRE #(
    .INIT(1'b0)) 
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_pstrmInput_V_last_V_U_n_3),
        .Q(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both regslice_both_pstrmInput_V_data_V_U
       (.\B_V_data_1_state_reg[1]_0 (pstrmInput_TREADY),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .pstrmInput_TDATA(pstrmInput_TDATA),
        .pstrmInput_TDATA_int_regslice(pstrmInput_TDATA_int_regslice),
        .pstrmInput_TREADY_int_regslice(pstrmInput_TREADY_int_regslice),
        .pstrmInput_TVALID(pstrmInput_TVALID),
        .pstrmInput_TVALID_int_regslice(pstrmInput_TVALID_int_regslice));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1 regslice_both_pstrmInput_V_dest_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .pstrmInput_TDEST(pstrmInput_TDEST),
        .pstrmInput_TDEST_int_regslice(pstrmInput_TDEST_int_regslice),
        .pstrmInput_TREADY_int_regslice(pstrmInput_TREADY_int_regslice),
        .pstrmInput_TVALID(pstrmInput_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_0 regslice_both_pstrmInput_V_id_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .pstrmInput_TID(pstrmInput_TID),
        .pstrmInput_TID_int_regslice(pstrmInput_TID_int_regslice),
        .pstrmInput_TREADY_int_regslice(pstrmInput_TREADY_int_regslice),
        .pstrmInput_TVALID(pstrmInput_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized0 regslice_both_pstrmInput_V_keep_V_U
       (.\B_V_data_1_payload_B_reg[3]_0 (pstrmInput_TKEEP_int_regslice),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .pstrmInput_TKEEP(pstrmInput_TKEEP),
        .pstrmInput_TREADY_int_regslice(pstrmInput_TREADY_int_regslice),
        .pstrmInput_TVALID(pstrmInput_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_1 regslice_both_pstrmInput_V_last_V_U
       (.E(n32XferCnt_fu_11409_out),
        .Q(ap_CS_fsm_pp0_stage10),
        .\ap_CS_fsm_reg[1] (regslice_both_pstrmInput_V_last_V_U_n_3),
        .ap_clk(ap_clk),
        .ap_ready_int(ap_ready_int),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg_reg(ap_CS_fsm_state2),
        .icmp_ln22_reg_556(icmp_ln22_reg_556),
        .\n32XferCnt_fu_114_reg[30] (grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_n_10),
        .pstrmInput_TLAST(pstrmInput_TLAST),
        .pstrmInput_TLAST_int_regslice(pstrmInput_TLAST_int_regslice),
        .pstrmInput_TREADY_int_regslice(pstrmInput_TREADY_int_regslice),
        .pstrmInput_TVALID(pstrmInput_TVALID),
        .pstrmInput_TVALID_int_regslice(pstrmInput_TVALID_int_regslice));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized0_2 regslice_both_pstrmInput_V_strb_V_U
       (.\B_V_data_1_payload_B_reg[3]_0 (pstrmInput_TSTRB_int_regslice),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .pstrmInput_TREADY_int_regslice(pstrmInput_TREADY_int_regslice),
        .pstrmInput_TSTRB(pstrmInput_TSTRB),
        .pstrmInput_TVALID(pstrmInput_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_3 regslice_both_pstrmInput_V_user_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .pstrmInput_TREADY_int_regslice(pstrmInput_TREADY_int_regslice),
        .pstrmInput_TUSER(pstrmInput_TUSER),
        .pstrmInput_TUSER_int_regslice(pstrmInput_TUSER_int_regslice),
        .pstrmInput_TVALID(pstrmInput_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both_4 regslice_both_pstrmOutput_V_data_V_U
       (.\B_V_data_1_payload_A_reg[31]_0 (grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDATA),
        .B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .B_V_data_1_sel_wr_reg_0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_n_16),
        .\B_V_data_1_state_reg[0]_0 (pstrmOutput_TVALID),
        .D(ap_NS_fsm[0]),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state1}),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .pstrmOutput_TDATA(pstrmOutput_TDATA),
        .pstrmOutput_TREADY(pstrmOutput_TREADY),
        .pstrmOutput_TREADY_int_regslice(pstrmOutput_TREADY_int_regslice));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_5 regslice_both_pstrmOutput_V_dest_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .pstrmOutput_TDEST(pstrmOutput_TDEST),
        .pstrmOutput_TREADY(pstrmOutput_TREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_6 regslice_both_pstrmOutput_V_id_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .pstrmOutput_TID(pstrmOutput_TID),
        .pstrmOutput_TREADY(pstrmOutput_TREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized0_7 regslice_both_pstrmOutput_V_keep_V_U
       (.D(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TKEEP),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .pstrmOutput_TKEEP(pstrmOutput_TKEEP),
        .pstrmOutput_TREADY(pstrmOutput_TREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_8 regslice_both_pstrmOutput_V_last_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .pstrmOutput_TLAST(pstrmOutput_TLAST),
        .pstrmOutput_TREADY(pstrmOutput_TREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized0_9 regslice_both_pstrmOutput_V_strb_V_U
       (.D(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TSTRB),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .pstrmOutput_TREADY(pstrmOutput_TREADY),
        .pstrmOutput_TSTRB(pstrmOutput_TSTRB));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_10 regslice_both_pstrmOutput_V_user_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .pstrmOutput_TREADY(pstrmOutput_TREADY),
        .pstrmOutput_TUSER(pstrmOutput_TUSER));
  FDRE \tmp_reg_187_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[0]),
        .Q(tmp_reg_187[0]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[10]),
        .Q(tmp_reg_187[10]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[11]),
        .Q(tmp_reg_187[11]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[12]),
        .Q(tmp_reg_187[12]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[13]),
        .Q(tmp_reg_187[13]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[14]),
        .Q(tmp_reg_187[14]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[15]),
        .Q(tmp_reg_187[15]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[16]),
        .Q(tmp_reg_187[16]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[17]),
        .Q(tmp_reg_187[17]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[18]),
        .Q(tmp_reg_187[18]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[19]),
        .Q(tmp_reg_187[19]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[1]),
        .Q(tmp_reg_187[1]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[20]),
        .Q(tmp_reg_187[20]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[21]),
        .Q(tmp_reg_187[21]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[22]),
        .Q(tmp_reg_187[22]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[23]),
        .Q(tmp_reg_187[23]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[24]),
        .Q(tmp_reg_187[24]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[25]),
        .Q(tmp_reg_187[25]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[26]),
        .Q(tmp_reg_187[26]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[27]),
        .Q(tmp_reg_187[27]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[28]),
        .Q(tmp_reg_187[28]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[29]),
        .Q(tmp_reg_187[29]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[2]),
        .Q(tmp_reg_187[2]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[30]),
        .Q(tmp_reg_187[30]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[3]),
        .Q(tmp_reg_187[3]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[4]),
        .Q(tmp_reg_187[4]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[5]),
        .Q(tmp_reg_187[5]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[6]),
        .Q(tmp_reg_187[6]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[7]),
        .Q(tmp_reg_187[7]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[8]),
        .Q(tmp_reg_187[8]),
        .R(1'b0));
  FDRE \tmp_reg_187_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in[9]),
        .Q(tmp_reg_187[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_control_s_axi
   (ap_rst_n_inv,
    interrupt,
    \FSM_onehot_rstate_reg[1]_0 ,
    ap_start,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_BVALID,
    s_axi_control_WREADY,
    s_axi_control_RVALID,
    D,
    \int_regXferLeng_reg[31]_0 ,
    s_axi_control_RDATA,
    q00,
    ap_clk,
    ap_rst_n,
    s_axi_control_ARVALID,
    s_axi_control_WVALID,
    s_axi_control_ARADDR,
    s_axi_control_RREADY,
    s_axi_control_AWVALID,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    s_axi_control_BREADY,
    Q,
    ap_done,
    s_axi_control_AWADDR,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0);
  output ap_rst_n_inv;
  output interrupt;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output ap_start;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_control_BVALID;
  output s_axi_control_WREADY;
  output s_axi_control_RVALID;
  output [0:0]D;
  output [30:0]\int_regXferLeng_reg[31]_0 ;
  output [31:0]s_axi_control_RDATA;
  output [31:0]q00;
  input ap_clk;
  input ap_rst_n;
  input s_axi_control_ARVALID;
  input s_axi_control_WVALID;
  input [6:0]s_axi_control_ARADDR;
  input s_axi_control_RREADY;
  input s_axi_control_AWVALID;
  input [3:0]s_axi_control_WSTRB;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_BREADY;
  input [0:0]Q;
  input ap_done;
  input [6:0]s_axi_control_AWADDR;
  input [3:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0;

  wire [0:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_rstate_reg_n_0_[2] ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg_n_0_[2] ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs__0;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire aw_hs;
  wire [1:0]data3;
  wire [3:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0;
  wire int_an32Coef_n_0;
  wire int_an32Coef_n_1;
  wire int_an32Coef_n_10;
  wire int_an32Coef_n_11;
  wire int_an32Coef_n_12;
  wire int_an32Coef_n_13;
  wire int_an32Coef_n_14;
  wire int_an32Coef_n_15;
  wire int_an32Coef_n_16;
  wire int_an32Coef_n_17;
  wire int_an32Coef_n_18;
  wire int_an32Coef_n_19;
  wire int_an32Coef_n_2;
  wire int_an32Coef_n_20;
  wire int_an32Coef_n_21;
  wire int_an32Coef_n_22;
  wire int_an32Coef_n_23;
  wire int_an32Coef_n_24;
  wire int_an32Coef_n_25;
  wire int_an32Coef_n_26;
  wire int_an32Coef_n_27;
  wire int_an32Coef_n_28;
  wire int_an32Coef_n_29;
  wire int_an32Coef_n_3;
  wire int_an32Coef_n_30;
  wire int_an32Coef_n_31;
  wire int_an32Coef_n_4;
  wire int_an32Coef_n_5;
  wire int_an32Coef_n_6;
  wire int_an32Coef_n_7;
  wire int_an32Coef_n_8;
  wire int_an32Coef_n_9;
  wire int_an32Coef_read;
  wire int_an32Coef_read0;
  wire int_an32Coef_write_i_1_n_0;
  wire int_an32Coef_write_reg_n_0;
  wire int_ap_idle;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_auto_restart_i_2_n_0;
  wire int_auto_restart_reg_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_reg_n_0;
  wire int_ier;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier[1]_i_3_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire int_interrupt0;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[0]_i_2_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_regXferLeng[0]_i_1_n_0 ;
  wire \int_regXferLeng[10]_i_1_n_0 ;
  wire \int_regXferLeng[11]_i_1_n_0 ;
  wire \int_regXferLeng[12]_i_1_n_0 ;
  wire \int_regXferLeng[13]_i_1_n_0 ;
  wire \int_regXferLeng[14]_i_1_n_0 ;
  wire \int_regXferLeng[15]_i_1_n_0 ;
  wire \int_regXferLeng[16]_i_1_n_0 ;
  wire \int_regXferLeng[17]_i_1_n_0 ;
  wire \int_regXferLeng[18]_i_1_n_0 ;
  wire \int_regXferLeng[19]_i_1_n_0 ;
  wire \int_regXferLeng[1]_i_1_n_0 ;
  wire \int_regXferLeng[20]_i_1_n_0 ;
  wire \int_regXferLeng[21]_i_1_n_0 ;
  wire \int_regXferLeng[22]_i_1_n_0 ;
  wire \int_regXferLeng[23]_i_1_n_0 ;
  wire \int_regXferLeng[24]_i_1_n_0 ;
  wire \int_regXferLeng[25]_i_1_n_0 ;
  wire \int_regXferLeng[26]_i_1_n_0 ;
  wire \int_regXferLeng[27]_i_1_n_0 ;
  wire \int_regXferLeng[28]_i_1_n_0 ;
  wire \int_regXferLeng[29]_i_1_n_0 ;
  wire \int_regXferLeng[2]_i_1_n_0 ;
  wire \int_regXferLeng[30]_i_1_n_0 ;
  wire \int_regXferLeng[31]_i_1_n_0 ;
  wire \int_regXferLeng[31]_i_2_n_0 ;
  wire \int_regXferLeng[3]_i_1_n_0 ;
  wire \int_regXferLeng[4]_i_1_n_0 ;
  wire \int_regXferLeng[5]_i_1_n_0 ;
  wire \int_regXferLeng[6]_i_1_n_0 ;
  wire \int_regXferLeng[7]_i_1_n_0 ;
  wire \int_regXferLeng[8]_i_1_n_0 ;
  wire \int_regXferLeng[9]_i_1_n_0 ;
  wire [30:0]\int_regXferLeng_reg[31]_0 ;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire interrupt;
  wire [3:0]p_0_in;
  wire [31:0]q00;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [6:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire task_ap_done;
  wire \tmp_reg_187[6]_i_2_n_0 ;
  wire \tmp_reg_187_reg[14]_i_1_n_0 ;
  wire \tmp_reg_187_reg[14]_i_1_n_1 ;
  wire \tmp_reg_187_reg[14]_i_1_n_2 ;
  wire \tmp_reg_187_reg[14]_i_1_n_3 ;
  wire \tmp_reg_187_reg[14]_i_1_n_4 ;
  wire \tmp_reg_187_reg[14]_i_1_n_5 ;
  wire \tmp_reg_187_reg[14]_i_1_n_6 ;
  wire \tmp_reg_187_reg[14]_i_1_n_7 ;
  wire \tmp_reg_187_reg[22]_i_1_n_0 ;
  wire \tmp_reg_187_reg[22]_i_1_n_1 ;
  wire \tmp_reg_187_reg[22]_i_1_n_2 ;
  wire \tmp_reg_187_reg[22]_i_1_n_3 ;
  wire \tmp_reg_187_reg[22]_i_1_n_4 ;
  wire \tmp_reg_187_reg[22]_i_1_n_5 ;
  wire \tmp_reg_187_reg[22]_i_1_n_6 ;
  wire \tmp_reg_187_reg[22]_i_1_n_7 ;
  wire \tmp_reg_187_reg[30]_i_1_n_2 ;
  wire \tmp_reg_187_reg[30]_i_1_n_3 ;
  wire \tmp_reg_187_reg[30]_i_1_n_4 ;
  wire \tmp_reg_187_reg[30]_i_1_n_5 ;
  wire \tmp_reg_187_reg[30]_i_1_n_6 ;
  wire \tmp_reg_187_reg[30]_i_1_n_7 ;
  wire \tmp_reg_187_reg[6]_i_1_n_0 ;
  wire \tmp_reg_187_reg[6]_i_1_n_1 ;
  wire \tmp_reg_187_reg[6]_i_1_n_2 ;
  wire \tmp_reg_187_reg[6]_i_1_n_3 ;
  wire \tmp_reg_187_reg[6]_i_1_n_4 ;
  wire \tmp_reg_187_reg[6]_i_1_n_5 ;
  wire \tmp_reg_187_reg[6]_i_1_n_6 ;
  wire \tmp_reg_187_reg[6]_i_1_n_7 ;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[6] ;
  wire [31:0]zext_ln1541_fu_167_p1;
  wire [6:6]\NLW_tmp_reg_187_reg[30]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_tmp_reg_187_reg[30]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_tmp_reg_187_reg[6]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1__6 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2F227777)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(int_an32Coef_read),
        .I3(s_axi_control_RREADY),
        .I4(\FSM_onehot_rstate_reg_n_0_[2] ),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF8A8A8A)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I1(int_an32Coef_read),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF0C1D1D)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_AWVALID),
        .I3(s_axi_control_BREADY),
        .I4(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80AA80AA80AA)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_WVALID),
        .I4(s_axi_control_AWVALID),
        .I5(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF444444444444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(s_axi_control_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(s_axi_control_WVALID),
        .I5(\FSM_onehot_wstate_reg_n_0_[2] ),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(Q),
        .I1(ap_start),
        .O(D));
  LUT4 #(
    .INIT(16'hFBF0)) 
    auto_restart_status_i_1
       (.I0(ap_start),
        .I1(Q),
        .I2(int_auto_restart_reg_n_0),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_control_s_axi_ram int_an32Coef
       (.D({int_an32Coef_n_0,int_an32Coef_n_1,int_an32Coef_n_2,int_an32Coef_n_3,int_an32Coef_n_4,int_an32Coef_n_5,int_an32Coef_n_6,int_an32Coef_n_7,int_an32Coef_n_8,int_an32Coef_n_9,int_an32Coef_n_10,int_an32Coef_n_11,int_an32Coef_n_12,int_an32Coef_n_13,int_an32Coef_n_14,int_an32Coef_n_15,int_an32Coef_n_16,int_an32Coef_n_17,int_an32Coef_n_18,int_an32Coef_n_19,int_an32Coef_n_20,int_an32Coef_n_21,int_an32Coef_n_22,int_an32Coef_n_23,int_an32Coef_n_24,int_an32Coef_n_25,int_an32Coef_n_26,int_an32Coef_n_27,int_an32Coef_n_28,int_an32Coef_n_29,int_an32Coef_n_30,int_an32Coef_n_31}),
        .Q(zext_ln1541_fu_167_p1),
        .ap_clk(ap_clk),
        .ar_hs__0(ar_hs__0),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0),
        .int_ap_idle(int_ap_idle),
        .int_ap_ready__0(int_ap_ready__0),
        .interrupt(interrupt),
        .q00(q00),
        .\q1_reg[0]_0 (p_0_in),
        .\q1_reg[0]_1 (\FSM_onehot_wstate_reg_n_0_[2] ),
        .\q1_reg[31]_0 (\FSM_onehot_rstate_reg[1]_0 ),
        .\q1_reg[31]_1 (int_an32Coef_write_reg_n_0),
        .\rdata_reg[0] (\rdata[31]_i_3_n_0 ),
        .\rdata_reg[0]_0 (\rdata[0]_i_2_n_0 ),
        .\rdata_reg[0]_1 (\rdata[0]_i_3_n_0 ),
        .\rdata_reg[1] (\rdata[1]_i_2_n_0 ),
        .\rdata_reg[1]_0 (\rdata[1]_i_3_n_0 ),
        .\rdata_reg[2] (\rdata[9]_i_3_n_0 ),
        .\rdata_reg[7] (int_auto_restart_reg_n_0),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[5:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT3 #(
    .INIT(8'h80)) 
    int_an32Coef_read_i_1
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .O(int_an32Coef_read0));
  FDRE int_an32Coef_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_an32Coef_read0),
        .Q(int_an32Coef_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF8FFFFFF88888888)) 
    int_an32Coef_write_i_1
       (.I0(s_axi_control_AWADDR[6]),
        .I1(aw_hs),
        .I2(ar_hs__0),
        .I3(s_axi_control_WVALID),
        .I4(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I5(int_an32Coef_write_reg_n_0),
        .O(int_an32Coef_write_i_1_n_0));
  FDRE int_an32Coef_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_an32Coef_write_i_1_n_0),
        .Q(int_an32Coef_write_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(int_ap_idle),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hEFFFEFEF00FF0000)) 
    int_ap_ready_i_1
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_isr[0]_i_2_n_0 ),
        .I3(int_auto_restart_reg_n_0),
        .I4(ap_done),
        .I5(int_ap_ready__0),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready__0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(int_auto_restart_reg_n_0),
        .I1(ap_done),
        .I2(int_ap_start5_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    int_ap_start_i_3
       (.I0(\int_ier[1]_i_2_n_0 ),
        .I1(s_axi_control_WDATA[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\int_ier[1]_i_3_n_0 ),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(p_0_in[1]),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(int_auto_restart_i_2_n_0),
        .I4(int_auto_restart_reg_n_0),
        .O(int_auto_restart_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000808080)) 
    int_auto_restart_i_2
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(s_axi_control_ARVALID),
        .I5(p_0_in[2]),
        .O(int_auto_restart_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(int_auto_restart_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_gie_i_2_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(int_auto_restart_i_2_n_0),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(p_0_in[3]),
        .O(int_gie_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h08000000)) 
    \int_ier[1]_i_1 
       (.I0(p_0_in[1]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(\int_ier[1]_i_3_n_0 ),
        .I4(s_axi_control_WSTRB[0]),
        .O(int_ier));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \int_ier[1]_i_2 
       (.I0(p_0_in[3]),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(p_0_in[0]),
        .O(\int_ier[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \int_ier[1]_i_3 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_WVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(\int_ier[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier),
        .D(s_axi_control_WDATA[0]),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier),
        .D(s_axi_control_WDATA[1]),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(data3[0]),
        .I1(data3[1]),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFF7F7F7FFF000000)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_isr[0]_i_2_n_0 ),
        .I3(ap_done),
        .I4(\int_ier_reg_n_0_[0] ),
        .I5(data3[0]),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_ARADDR[4]),
        .O(\int_isr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F7F7FFF000000)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_isr[0]_i_2_n_0 ),
        .I3(ap_done),
        .I4(\int_ier_reg_n_0_[1] ),
        .I5(data3[1]),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(data3[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(data3[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(zext_ln1541_fu_167_p1[0]),
        .O(\int_regXferLeng[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln1541_fu_167_p1[10]),
        .O(\int_regXferLeng[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln1541_fu_167_p1[11]),
        .O(\int_regXferLeng[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln1541_fu_167_p1[12]),
        .O(\int_regXferLeng[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln1541_fu_167_p1[13]),
        .O(\int_regXferLeng[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln1541_fu_167_p1[14]),
        .O(\int_regXferLeng[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln1541_fu_167_p1[15]),
        .O(\int_regXferLeng[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(zext_ln1541_fu_167_p1[16]),
        .O(\int_regXferLeng[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(zext_ln1541_fu_167_p1[17]),
        .O(\int_regXferLeng[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(zext_ln1541_fu_167_p1[18]),
        .O(\int_regXferLeng[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(zext_ln1541_fu_167_p1[19]),
        .O(\int_regXferLeng[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(zext_ln1541_fu_167_p1[1]),
        .O(\int_regXferLeng[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(zext_ln1541_fu_167_p1[20]),
        .O(\int_regXferLeng[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(zext_ln1541_fu_167_p1[21]),
        .O(\int_regXferLeng[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(zext_ln1541_fu_167_p1[22]),
        .O(\int_regXferLeng[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(zext_ln1541_fu_167_p1[23]),
        .O(\int_regXferLeng[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(zext_ln1541_fu_167_p1[24]),
        .O(\int_regXferLeng[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(zext_ln1541_fu_167_p1[25]),
        .O(\int_regXferLeng[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(zext_ln1541_fu_167_p1[26]),
        .O(\int_regXferLeng[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(zext_ln1541_fu_167_p1[27]),
        .O(\int_regXferLeng[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(zext_ln1541_fu_167_p1[28]),
        .O(\int_regXferLeng[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(zext_ln1541_fu_167_p1[29]),
        .O(\int_regXferLeng[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(zext_ln1541_fu_167_p1[2]),
        .O(\int_regXferLeng[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(zext_ln1541_fu_167_p1[30]),
        .O(\int_regXferLeng[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \int_regXferLeng[31]_i_1 
       (.I0(\int_ier[1]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(ar_hs__0),
        .I4(s_axi_control_WVALID),
        .I5(\FSM_onehot_wstate_reg_n_0_[2] ),
        .O(\int_regXferLeng[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(zext_ln1541_fu_167_p1[31]),
        .O(\int_regXferLeng[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(zext_ln1541_fu_167_p1[3]),
        .O(\int_regXferLeng[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(zext_ln1541_fu_167_p1[4]),
        .O(\int_regXferLeng[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(zext_ln1541_fu_167_p1[5]),
        .O(\int_regXferLeng[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(zext_ln1541_fu_167_p1[6]),
        .O(\int_regXferLeng[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(zext_ln1541_fu_167_p1[7]),
        .O(\int_regXferLeng[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln1541_fu_167_p1[8]),
        .O(\int_regXferLeng[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_regXferLeng[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln1541_fu_167_p1[9]),
        .O(\int_regXferLeng[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[0] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[0]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[10] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[10]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[11] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[11]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[12] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[12]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[13] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[13]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[14] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[14]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[15] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[15]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[16] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[16]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[17] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[17]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[18] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[18]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[19] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[19]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[1] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[1]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[20] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[20]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[21] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[21]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[22] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[22]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[23] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[23]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[24] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[24]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[25] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[25]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[26] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[26]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[27] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[27]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[28] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[28]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[29] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[29]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[2] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[2]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[30] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[30]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[31] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[31]_i_2_n_0 ),
        .Q(zext_ln1541_fu_167_p1[31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[3] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[3]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[4] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[4]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[5] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[5]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[6] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[6]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[7] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[7]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[8] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[8]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_regXferLeng_reg[9] 
       (.C(ap_clk),
        .CE(\int_regXferLeng[31]_i_1_n_0 ),
        .D(\int_regXferLeng[9]_i_1_n_0 ),
        .Q(zext_ln1541_fu_167_p1[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFF0000)) 
    int_task_ap_done_i_1
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(int_task_ap_done_i_2_n_0),
        .I3(s_axi_control_ARADDR[4]),
        .I4(task_ap_done),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_task_ap_done_i_2
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(s_axi_control_ARADDR[5]),
        .O(int_task_ap_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h10FF1000)) 
    int_task_ap_done_i_3
       (.I0(ap_start),
        .I1(int_ap_idle),
        .I2(Q),
        .I3(auto_restart_status_reg_n_0),
        .I4(ap_done),
        .O(task_ap_done));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done__0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0B00000008000000)) 
    \rdata[0]_i_2 
       (.I0(data3[0]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(int_task_ap_done_i_2_n_0),
        .I5(int_gie_reg_n_0),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \rdata[0]_i_3 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(int_task_ap_done_i_2_n_0),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rdata[1]_i_2 
       (.I0(data3[1]),
        .I1(int_task_ap_done_i_2_n_0),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \rdata[1]_i_3 
       (.I0(\int_ier_reg_n_0_[1] ),
        .I1(int_task_ap_done__0),
        .I2(int_task_ap_done_i_2_n_0),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \rdata[31]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(int_an32Coef_read),
        .O(\rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(int_task_ap_done_i_2_n_0),
        .O(\rdata[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \rdata[9]_i_3 
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .O(\rdata[9]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_31),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_21),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_20),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_19),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_18),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_17),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_16),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_15),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_14),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_13),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_12),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_30),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_11),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_10),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_9),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_8),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_7),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_6),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_5),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_4),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_3),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_2),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_29),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_1),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_0),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_28),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_27),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_26),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_25),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_24),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_23),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_an32Coef_n_22),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_control_RVALID_INST_0
       (.I0(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I1(int_an32Coef_read),
        .O(s_axi_control_RVALID));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    s_axi_control_WREADY_INST_0
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .O(s_axi_control_WREADY));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_reg_187[6]_i_2 
       (.I0(zext_ln1541_fu_167_p1[1]),
        .O(\tmp_reg_187[6]_i_2_n_0 ));
  CARRY8 \tmp_reg_187_reg[14]_i_1 
       (.CI(\tmp_reg_187_reg[6]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_reg_187_reg[14]_i_1_n_0 ,\tmp_reg_187_reg[14]_i_1_n_1 ,\tmp_reg_187_reg[14]_i_1_n_2 ,\tmp_reg_187_reg[14]_i_1_n_3 ,\tmp_reg_187_reg[14]_i_1_n_4 ,\tmp_reg_187_reg[14]_i_1_n_5 ,\tmp_reg_187_reg[14]_i_1_n_6 ,\tmp_reg_187_reg[14]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_regXferLeng_reg[31]_0 [14:7]),
        .S(zext_ln1541_fu_167_p1[16:9]));
  CARRY8 \tmp_reg_187_reg[22]_i_1 
       (.CI(\tmp_reg_187_reg[14]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_reg_187_reg[22]_i_1_n_0 ,\tmp_reg_187_reg[22]_i_1_n_1 ,\tmp_reg_187_reg[22]_i_1_n_2 ,\tmp_reg_187_reg[22]_i_1_n_3 ,\tmp_reg_187_reg[22]_i_1_n_4 ,\tmp_reg_187_reg[22]_i_1_n_5 ,\tmp_reg_187_reg[22]_i_1_n_6 ,\tmp_reg_187_reg[22]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_regXferLeng_reg[31]_0 [22:15]),
        .S(zext_ln1541_fu_167_p1[24:17]));
  CARRY8 \tmp_reg_187_reg[30]_i_1 
       (.CI(\tmp_reg_187_reg[22]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\int_regXferLeng_reg[31]_0 [30],\NLW_tmp_reg_187_reg[30]_i_1_CO_UNCONNECTED [6],\tmp_reg_187_reg[30]_i_1_n_2 ,\tmp_reg_187_reg[30]_i_1_n_3 ,\tmp_reg_187_reg[30]_i_1_n_4 ,\tmp_reg_187_reg[30]_i_1_n_5 ,\tmp_reg_187_reg[30]_i_1_n_6 ,\tmp_reg_187_reg[30]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_reg_187_reg[30]_i_1_O_UNCONNECTED [7],\int_regXferLeng_reg[31]_0 [29:23]}),
        .S({1'b1,zext_ln1541_fu_167_p1[31:25]}));
  CARRY8 \tmp_reg_187_reg[6]_i_1 
       (.CI(zext_ln1541_fu_167_p1[0]),
        .CI_TOP(1'b0),
        .CO({\tmp_reg_187_reg[6]_i_1_n_0 ,\tmp_reg_187_reg[6]_i_1_n_1 ,\tmp_reg_187_reg[6]_i_1_n_2 ,\tmp_reg_187_reg[6]_i_1_n_3 ,\tmp_reg_187_reg[6]_i_1_n_4 ,\tmp_reg_187_reg[6]_i_1_n_5 ,\tmp_reg_187_reg[6]_i_1_n_6 ,\tmp_reg_187_reg[6]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,zext_ln1541_fu_167_p1[1]}),
        .O({\int_regXferLeng_reg[31]_0 [6:0],\NLW_tmp_reg_187_reg[6]_i_1_O_UNCONNECTED [0]}),
        .S({zext_ln1541_fu_167_p1[8:2],\tmp_reg_187[6]_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[6]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(aw_hs));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[2]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[3]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[4]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[5]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_control_s_axi_ram
   (D,
    ar_hs__0,
    q00,
    Q,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    \rdata_reg[0]_1 ,
    \rdata_reg[1] ,
    \rdata_reg[1]_0 ,
    int_ap_idle,
    \rdata_reg[2] ,
    int_ap_ready__0,
    \q1_reg[31]_0 ,
    s_axi_control_ARVALID,
    \rdata_reg[7] ,
    interrupt,
    \q1_reg[31]_1 ,
    s_axi_control_WVALID,
    s_axi_control_ARADDR,
    \q1_reg[0]_0 ,
    \q1_reg[0]_1 ,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    ap_clk,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0);
  output [31:0]D;
  output ar_hs__0;
  output [31:0]q00;
  input [31:0]Q;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[0]_1 ;
  input \rdata_reg[1] ;
  input \rdata_reg[1]_0 ;
  input int_ap_idle;
  input \rdata_reg[2] ;
  input int_ap_ready__0;
  input \q1_reg[31]_0 ;
  input s_axi_control_ARVALID;
  input \rdata_reg[7] ;
  input interrupt;
  input \q1_reg[31]_1 ;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_ARADDR;
  input [3:0]\q1_reg[0]_0 ;
  input \q1_reg[0]_1 ;
  input [3:0]s_axi_control_WSTRB;
  input [31:0]s_axi_control_WDATA;
  input ap_clk;
  input [3:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0;

  wire [31:0]D;
  wire [31:0]Q;
  wire ap_clk;
  wire ar_hs__0;
  wire [3:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0;
  wire [3:0]int_an32Coef_address1;
  wire int_an32Coef_ce1;
  wire [31:0]int_an32Coef_q1;
  wire int_ap_idle;
  wire int_ap_ready__0;
  wire interrupt;
  wire [24:0]p_0_in1_out;
  wire [31:24]p_1_in;
  wire [31:0]q00;
  wire [31:0]q10;
  wire [3:0]\q1_reg[0]_0 ;
  wire \q1_reg[0]_1 ;
  wire \q1_reg[31]_0 ;
  wire \q1_reg[31]_1 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_1 ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[1]_0 ;
  wire \rdata_reg[2] ;
  wire \rdata_reg[7] ;
  wire [3:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;

  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_0_0
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[0]),
        .DPO(q00[0]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[0]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[0]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_0_0_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(s_axi_control_WVALID),
        .I5(\q1_reg[31]_1 ),
        .O(p_0_in1_out[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_15_0_0_i_2
       (.I0(s_axi_control_ARADDR[0]),
        .I1(\q1_reg[31]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(\q1_reg[0]_0 [0]),
        .O(int_an32Coef_address1[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_15_0_0_i_3
       (.I0(s_axi_control_ARADDR[1]),
        .I1(\q1_reg[31]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(\q1_reg[0]_0 [1]),
        .O(int_an32Coef_address1[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_15_0_0_i_4
       (.I0(s_axi_control_ARADDR[2]),
        .I1(\q1_reg[31]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(\q1_reg[0]_0 [2]),
        .O(int_an32Coef_address1[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_15_0_0_i_5
       (.I0(s_axi_control_ARADDR[3]),
        .I1(\q1_reg[31]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(\q1_reg[0]_0 [3]),
        .O(int_an32Coef_address1[3]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_10_10
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[10]),
        .DPO(q00[10]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[10]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[8]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_11_11
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[11]),
        .DPO(q00[11]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[11]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[8]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_12_12
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[12]),
        .DPO(q00[12]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[12]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[8]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_13_13
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[13]),
        .DPO(q00[13]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[13]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[8]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_14_14
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[14]),
        .DPO(q00[14]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[14]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[8]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_15_15
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[15]),
        .DPO(q00[15]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[15]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[8]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_16_16
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[16]),
        .DPO(q00[16]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[16]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[16]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_16_16_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(s_axi_control_WVALID),
        .I5(\q1_reg[31]_1 ),
        .O(p_0_in1_out[16]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_17_17
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[17]),
        .DPO(q00[17]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[17]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[16]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_18_18
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[18]),
        .DPO(q00[18]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[18]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[16]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_19_19
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[19]),
        .DPO(q00[19]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[19]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[16]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_1_1
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[1]),
        .DPO(q00[1]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[1]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[0]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_20_20
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[20]),
        .DPO(q00[20]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[20]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[16]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_21_21
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[21]),
        .DPO(q00[21]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[21]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[16]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_22_22
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[22]),
        .DPO(q00[22]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[22]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[16]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_23_23
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[23]),
        .DPO(q00[23]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[23]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[16]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_24_24
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(p_1_in[24]),
        .DPO(q00[24]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[24]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_24_24_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WVALID),
        .I2(ar_hs__0),
        .I3(\q1_reg[31]_1 ),
        .I4(s_axi_control_WSTRB[3]),
        .I5(s_axi_control_WDATA[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_24_24_i_2
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(s_axi_control_WVALID),
        .I5(\q1_reg[31]_1 ),
        .O(p_0_in1_out[24]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_25_25
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(p_1_in[25]),
        .DPO(q00[25]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[25]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_25_25_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WVALID),
        .I2(ar_hs__0),
        .I3(\q1_reg[31]_1 ),
        .I4(s_axi_control_WSTRB[3]),
        .I5(s_axi_control_WDATA[25]),
        .O(p_1_in[25]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_26_26
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(p_1_in[26]),
        .DPO(q00[26]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[26]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_26_26_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WVALID),
        .I2(ar_hs__0),
        .I3(\q1_reg[31]_1 ),
        .I4(s_axi_control_WSTRB[3]),
        .I5(s_axi_control_WDATA[26]),
        .O(p_1_in[26]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_27_27
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(p_1_in[27]),
        .DPO(q00[27]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[27]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_27_27_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WVALID),
        .I2(ar_hs__0),
        .I3(\q1_reg[31]_1 ),
        .I4(s_axi_control_WSTRB[3]),
        .I5(s_axi_control_WDATA[27]),
        .O(p_1_in[27]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_28_28
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(p_1_in[28]),
        .DPO(q00[28]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[28]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_28_28_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WVALID),
        .I2(ar_hs__0),
        .I3(\q1_reg[31]_1 ),
        .I4(s_axi_control_WSTRB[3]),
        .I5(s_axi_control_WDATA[28]),
        .O(p_1_in[28]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_29_29
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(p_1_in[29]),
        .DPO(q00[29]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[29]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_29_29_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WVALID),
        .I2(ar_hs__0),
        .I3(\q1_reg[31]_1 ),
        .I4(s_axi_control_WSTRB[3]),
        .I5(s_axi_control_WDATA[29]),
        .O(p_1_in[29]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_2_2
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[2]),
        .DPO(q00[2]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[2]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[0]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_30_30
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(p_1_in[30]),
        .DPO(q00[30]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[30]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_30_30_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WVALID),
        .I2(ar_hs__0),
        .I3(\q1_reg[31]_1 ),
        .I4(s_axi_control_WSTRB[3]),
        .I5(s_axi_control_WDATA[30]),
        .O(p_1_in[30]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_31_31
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(p_1_in[31]),
        .DPO(q00[31]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[31]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_31_31_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WVALID),
        .I2(ar_hs__0),
        .I3(\q1_reg[31]_1 ),
        .I4(s_axi_control_WSTRB[3]),
        .I5(s_axi_control_WDATA[31]),
        .O(p_1_in[31]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_3_3
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[3]),
        .DPO(q00[3]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[3]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[0]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_4_4
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[4]),
        .DPO(q00[4]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[4]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[0]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_5_5
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[5]),
        .DPO(q00[5]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[5]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[0]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_6
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[6]),
        .DPO(q00[6]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[6]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[0]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_7_7
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[7]),
        .DPO(q00[7]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[7]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[0]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_8_8
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[8]),
        .DPO(q00[8]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[8]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[8]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_8_8_i_1
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(s_axi_control_WVALID),
        .I5(\q1_reg[31]_1 ),
        .O(p_0_in1_out[8]));
  (* RTL_RAM_BITS = "384" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_an32Coef/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "11" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_9_9
       (.A0(int_an32Coef_address1[0]),
        .A1(int_an32Coef_address1[1]),
        .A2(int_an32Coef_address1[2]),
        .A3(int_an32Coef_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[9]),
        .DPO(q00[9]),
        .DPRA0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]),
        .DPRA1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]),
        .DPRA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]),
        .DPRA3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]),
        .DPRA4(1'b0),
        .SPO(q10[9]),
        .WCLK(ap_clk),
        .WE(p_0_in1_out[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \q1[31]_i_1 
       (.I0(\q1_reg[31]_1 ),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(\q1_reg[31]_0 ),
        .O(int_an32Coef_ce1));
  FDRE \q1_reg[0] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[0]),
        .Q(int_an32Coef_q1[0]),
        .R(1'b0));
  FDRE \q1_reg[10] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[10]),
        .Q(int_an32Coef_q1[10]),
        .R(1'b0));
  FDRE \q1_reg[11] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[11]),
        .Q(int_an32Coef_q1[11]),
        .R(1'b0));
  FDRE \q1_reg[12] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[12]),
        .Q(int_an32Coef_q1[12]),
        .R(1'b0));
  FDRE \q1_reg[13] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[13]),
        .Q(int_an32Coef_q1[13]),
        .R(1'b0));
  FDRE \q1_reg[14] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[14]),
        .Q(int_an32Coef_q1[14]),
        .R(1'b0));
  FDRE \q1_reg[15] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[15]),
        .Q(int_an32Coef_q1[15]),
        .R(1'b0));
  FDRE \q1_reg[16] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[16]),
        .Q(int_an32Coef_q1[16]),
        .R(1'b0));
  FDRE \q1_reg[17] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[17]),
        .Q(int_an32Coef_q1[17]),
        .R(1'b0));
  FDRE \q1_reg[18] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[18]),
        .Q(int_an32Coef_q1[18]),
        .R(1'b0));
  FDRE \q1_reg[19] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[19]),
        .Q(int_an32Coef_q1[19]),
        .R(1'b0));
  FDRE \q1_reg[1] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[1]),
        .Q(int_an32Coef_q1[1]),
        .R(1'b0));
  FDRE \q1_reg[20] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[20]),
        .Q(int_an32Coef_q1[20]),
        .R(1'b0));
  FDRE \q1_reg[21] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[21]),
        .Q(int_an32Coef_q1[21]),
        .R(1'b0));
  FDRE \q1_reg[22] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[22]),
        .Q(int_an32Coef_q1[22]),
        .R(1'b0));
  FDRE \q1_reg[23] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[23]),
        .Q(int_an32Coef_q1[23]),
        .R(1'b0));
  FDRE \q1_reg[24] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[24]),
        .Q(int_an32Coef_q1[24]),
        .R(1'b0));
  FDRE \q1_reg[25] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[25]),
        .Q(int_an32Coef_q1[25]),
        .R(1'b0));
  FDRE \q1_reg[26] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[26]),
        .Q(int_an32Coef_q1[26]),
        .R(1'b0));
  FDRE \q1_reg[27] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[27]),
        .Q(int_an32Coef_q1[27]),
        .R(1'b0));
  FDRE \q1_reg[28] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[28]),
        .Q(int_an32Coef_q1[28]),
        .R(1'b0));
  FDRE \q1_reg[29] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[29]),
        .Q(int_an32Coef_q1[29]),
        .R(1'b0));
  FDRE \q1_reg[2] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[2]),
        .Q(int_an32Coef_q1[2]),
        .R(1'b0));
  FDRE \q1_reg[30] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[30]),
        .Q(int_an32Coef_q1[30]),
        .R(1'b0));
  FDRE \q1_reg[31] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[31]),
        .Q(int_an32Coef_q1[31]),
        .R(1'b0));
  FDRE \q1_reg[3] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[3]),
        .Q(int_an32Coef_q1[3]),
        .R(1'b0));
  FDRE \q1_reg[4] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[4]),
        .Q(int_an32Coef_q1[4]),
        .R(1'b0));
  FDRE \q1_reg[5] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[5]),
        .Q(int_an32Coef_q1[5]),
        .R(1'b0));
  FDRE \q1_reg[6] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[6]),
        .Q(int_an32Coef_q1[6]),
        .R(1'b0));
  FDRE \q1_reg[7] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[7]),
        .Q(int_an32Coef_q1[7]),
        .R(1'b0));
  FDRE \q1_reg[8] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[8]),
        .Q(int_an32Coef_q1[8]),
        .R(1'b0));
  FDRE \q1_reg[9] 
       (.C(ap_clk),
        .CE(int_an32Coef_ce1),
        .D(q10[9]),
        .Q(int_an32Coef_q1[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(\rdata_reg[0] ),
        .I2(ar_hs__0),
        .I3(int_an32Coef_q1[0]),
        .I4(\rdata_reg[0]_0 ),
        .I5(\rdata_reg[0]_1 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[10]_i_1 
       (.I0(Q[10]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[11]_i_1 
       (.I0(Q[11]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[12]_i_1 
       (.I0(Q[12]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[13]_i_1 
       (.I0(Q[13]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[14]_i_1 
       (.I0(Q[14]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[15]_i_1 
       (.I0(Q[15]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[16]_i_1 
       (.I0(Q[16]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[17]_i_1 
       (.I0(Q[17]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[18]_i_1 
       (.I0(Q[18]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[19]_i_1 
       (.I0(Q[19]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAFFEAEA)) 
    \rdata[1]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(Q[1]),
        .I2(\rdata_reg[0] ),
        .I3(ar_hs__0),
        .I4(int_an32Coef_q1[1]),
        .I5(\rdata_reg[1]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[20]_i_1 
       (.I0(Q[20]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[21]_i_1 
       (.I0(Q[21]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[22]_i_1 
       (.I0(Q[22]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[23]_i_1 
       (.I0(Q[23]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[24]_i_1 
       (.I0(Q[24]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[25]_i_1 
       (.I0(Q[25]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[26]_i_1 
       (.I0(Q[26]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[27]_i_1 
       (.I0(Q[27]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[28]_i_1 
       (.I0(Q[28]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[28]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[29]_i_1 
       (.I0(Q[29]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[29]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[2]_i_1 
       (.I0(int_an32Coef_q1[2]),
        .I1(ar_hs__0),
        .I2(\rdata_reg[0] ),
        .I3(Q[2]),
        .I4(int_ap_idle),
        .I5(\rdata_reg[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[30]_i_1 
       (.I0(Q[30]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[30]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[31]_i_2 
       (.I0(Q[31]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[3]_i_1 
       (.I0(int_an32Coef_q1[3]),
        .I1(ar_hs__0),
        .I2(\rdata_reg[0] ),
        .I3(Q[3]),
        .I4(int_ap_ready__0),
        .I5(\rdata_reg[2] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[7]_i_1 
       (.I0(int_an32Coef_q1[7]),
        .I1(ar_hs__0),
        .I2(\rdata_reg[0] ),
        .I3(Q[7]),
        .I4(\rdata_reg[7] ),
        .I5(\rdata_reg[2] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \rdata[8]_i_1 
       (.I0(Q[8]),
        .I1(\rdata_reg[0] ),
        .I2(\q1_reg[31]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(int_an32Coef_q1[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[9]_i_1 
       (.I0(int_an32Coef_q1[9]),
        .I1(ar_hs__0),
        .I2(\rdata_reg[0] ),
        .I3(Q[9]),
        .I4(interrupt),
        .I5(\rdata_reg[2] ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[9]_i_2 
       (.I0(\q1_reg[31]_0 ),
        .I1(s_axi_control_ARVALID),
        .O(ar_hs__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_fir_n11_strm_Pipeline_XFER_LOOP
   (icmp_ln22_reg_556,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST,
    Q,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID,
    D,
    ap_ready_int,
    ap_enable_reg_pp0_iter0_reg_reg_0,
    pstrmInput_TREADY_int_regslice,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0,
    ap_enable_reg_pp0_iter1_reg_0,
    \tmp_keep_V_reg_660_reg[3]_0 ,
    \tmp_strb_V_reg_665_reg[3]_0 ,
    \add_ln35_reg_575_reg[29]_0 ,
    ap_rst_n_inv,
    ap_clk,
    pstrmInput_TLAST_int_regslice,
    q00,
    pstrmInput_TDATA_int_regslice,
    pstrmInput_TUSER_int_regslice,
    pstrmInput_TID_int_regslice,
    pstrmInput_TDEST_int_regslice,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready,
    ap_rst_n,
    pstrmOutput_TREADY_int_regslice,
    \ap_CS_fsm_reg[3]_0 ,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    ap_done,
    \icmp_ln22_reg_556_reg[0]_0 ,
    pstrmInput_TVALID_int_regslice,
    B_V_data_1_sel_wr,
    E,
    \tmp_keep_V_reg_660_reg[3]_1 ,
    \tmp_strb_V_reg_665_reg[3]_1 );
  output icmp_ln22_reg_556;
  output grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST;
  output grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER;
  output grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID;
  output grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST;
  output [0:0]Q;
  output grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  output [1:0]D;
  output ap_ready_int;
  output ap_enable_reg_pp0_iter0_reg_reg_0;
  output pstrmInput_TREADY_int_regslice;
  output [3:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0;
  output ap_enable_reg_pp0_iter1_reg_0;
  output [3:0]\tmp_keep_V_reg_660_reg[3]_0 ;
  output [3:0]\tmp_strb_V_reg_665_reg[3]_0 ;
  output [31:0]\add_ln35_reg_575_reg[29]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input pstrmInput_TLAST_int_regslice;
  input [31:0]q00;
  input [31:0]pstrmInput_TDATA_int_regslice;
  input pstrmInput_TUSER_int_regslice;
  input pstrmInput_TID_int_regslice;
  input pstrmInput_TDEST_int_regslice;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready;
  input ap_rst_n;
  input pstrmOutput_TREADY_int_regslice;
  input [2:0]\ap_CS_fsm_reg[3]_0 ;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input ap_done;
  input [30:0]\icmp_ln22_reg_556_reg[0]_0 ;
  input pstrmInput_TVALID_int_regslice;
  input B_V_data_1_sel_wr;
  input [0:0]E;
  input [3:0]\tmp_keep_V_reg_660_reg[3]_1 ;
  input [3:0]\tmp_strb_V_reg_665_reg[3]_1 ;

  wire B_V_data_1_sel_wr;
  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [31:0]add_ln35_2_fu_369_p2;
  wire add_ln35_2_fu_369_p2__0_carry__0_n_0;
  wire add_ln35_2_fu_369_p2__0_carry__0_n_1;
  wire add_ln35_2_fu_369_p2__0_carry__0_n_2;
  wire add_ln35_2_fu_369_p2__0_carry__0_n_3;
  wire add_ln35_2_fu_369_p2__0_carry__0_n_4;
  wire add_ln35_2_fu_369_p2__0_carry__0_n_5;
  wire add_ln35_2_fu_369_p2__0_carry__0_n_6;
  wire add_ln35_2_fu_369_p2__0_carry__0_n_7;
  wire add_ln35_2_fu_369_p2__0_carry__1_n_0;
  wire add_ln35_2_fu_369_p2__0_carry__1_n_1;
  wire add_ln35_2_fu_369_p2__0_carry__1_n_2;
  wire add_ln35_2_fu_369_p2__0_carry__1_n_3;
  wire add_ln35_2_fu_369_p2__0_carry__1_n_4;
  wire add_ln35_2_fu_369_p2__0_carry__1_n_5;
  wire add_ln35_2_fu_369_p2__0_carry__1_n_6;
  wire add_ln35_2_fu_369_p2__0_carry__1_n_7;
  wire add_ln35_2_fu_369_p2__0_carry__2_n_1;
  wire add_ln35_2_fu_369_p2__0_carry__2_n_2;
  wire add_ln35_2_fu_369_p2__0_carry__2_n_3;
  wire add_ln35_2_fu_369_p2__0_carry__2_n_4;
  wire add_ln35_2_fu_369_p2__0_carry__2_n_5;
  wire add_ln35_2_fu_369_p2__0_carry__2_n_6;
  wire add_ln35_2_fu_369_p2__0_carry__2_n_7;
  wire add_ln35_2_fu_369_p2__0_carry_n_0;
  wire add_ln35_2_fu_369_p2__0_carry_n_1;
  wire add_ln35_2_fu_369_p2__0_carry_n_2;
  wire add_ln35_2_fu_369_p2__0_carry_n_3;
  wire add_ln35_2_fu_369_p2__0_carry_n_4;
  wire add_ln35_2_fu_369_p2__0_carry_n_5;
  wire add_ln35_2_fu_369_p2__0_carry_n_6;
  wire add_ln35_2_fu_369_p2__0_carry_n_7;
  wire [31:0]add_ln35_2_reg_605;
  wire add_ln35_2_reg_6050;
  wire [31:0]add_ln35_4_fu_422_p2;
  wire add_ln35_4_fu_422_p2_carry__0_n_0;
  wire add_ln35_4_fu_422_p2_carry__0_n_1;
  wire add_ln35_4_fu_422_p2_carry__0_n_2;
  wire add_ln35_4_fu_422_p2_carry__0_n_3;
  wire add_ln35_4_fu_422_p2_carry__0_n_4;
  wire add_ln35_4_fu_422_p2_carry__0_n_5;
  wire add_ln35_4_fu_422_p2_carry__0_n_6;
  wire add_ln35_4_fu_422_p2_carry__0_n_7;
  wire add_ln35_4_fu_422_p2_carry__1_n_0;
  wire add_ln35_4_fu_422_p2_carry__1_n_1;
  wire add_ln35_4_fu_422_p2_carry__1_n_2;
  wire add_ln35_4_fu_422_p2_carry__1_n_3;
  wire add_ln35_4_fu_422_p2_carry__1_n_4;
  wire add_ln35_4_fu_422_p2_carry__1_n_5;
  wire add_ln35_4_fu_422_p2_carry__1_n_6;
  wire add_ln35_4_fu_422_p2_carry__1_n_7;
  wire add_ln35_4_fu_422_p2_carry__2_n_1;
  wire add_ln35_4_fu_422_p2_carry__2_n_2;
  wire add_ln35_4_fu_422_p2_carry__2_n_3;
  wire add_ln35_4_fu_422_p2_carry__2_n_4;
  wire add_ln35_4_fu_422_p2_carry__2_n_5;
  wire add_ln35_4_fu_422_p2_carry__2_n_6;
  wire add_ln35_4_fu_422_p2_carry__2_n_7;
  wire add_ln35_4_fu_422_p2_carry_n_0;
  wire add_ln35_4_fu_422_p2_carry_n_1;
  wire add_ln35_4_fu_422_p2_carry_n_2;
  wire add_ln35_4_fu_422_p2_carry_n_3;
  wire add_ln35_4_fu_422_p2_carry_n_4;
  wire add_ln35_4_fu_422_p2_carry_n_5;
  wire add_ln35_4_fu_422_p2_carry_n_6;
  wire add_ln35_4_fu_422_p2_carry_n_7;
  wire [31:0]add_ln35_4_reg_635;
  wire add_ln35_4_reg_6350;
  wire [31:0]add_ln35_fu_311_p2;
  wire add_ln35_fu_311_p2_carry__0_n_0;
  wire add_ln35_fu_311_p2_carry__0_n_1;
  wire add_ln35_fu_311_p2_carry__0_n_2;
  wire add_ln35_fu_311_p2_carry__0_n_3;
  wire add_ln35_fu_311_p2_carry__0_n_4;
  wire add_ln35_fu_311_p2_carry__0_n_5;
  wire add_ln35_fu_311_p2_carry__0_n_6;
  wire add_ln35_fu_311_p2_carry__0_n_7;
  wire add_ln35_fu_311_p2_carry__1_n_0;
  wire add_ln35_fu_311_p2_carry__1_n_1;
  wire add_ln35_fu_311_p2_carry__1_n_2;
  wire add_ln35_fu_311_p2_carry__1_n_3;
  wire add_ln35_fu_311_p2_carry__1_n_4;
  wire add_ln35_fu_311_p2_carry__1_n_5;
  wire add_ln35_fu_311_p2_carry__1_n_6;
  wire add_ln35_fu_311_p2_carry__1_n_7;
  wire add_ln35_fu_311_p2_carry__2_n_1;
  wire add_ln35_fu_311_p2_carry__2_n_2;
  wire add_ln35_fu_311_p2_carry__2_n_3;
  wire add_ln35_fu_311_p2_carry__2_n_4;
  wire add_ln35_fu_311_p2_carry__2_n_5;
  wire add_ln35_fu_311_p2_carry__2_n_6;
  wire add_ln35_fu_311_p2_carry__2_n_7;
  wire add_ln35_fu_311_p2_carry_n_0;
  wire add_ln35_fu_311_p2_carry_n_1;
  wire add_ln35_fu_311_p2_carry_n_2;
  wire add_ln35_fu_311_p2_carry_n_3;
  wire add_ln35_fu_311_p2_carry_n_4;
  wire add_ln35_fu_311_p2_carry_n_5;
  wire add_ln35_fu_311_p2_carry_n_6;
  wire add_ln35_fu_311_p2_carry_n_7;
  wire [31:0]add_ln35_reg_575;
  wire add_ln35_reg_5750;
  wire [31:0]\add_ln35_reg_575_reg[29]_0 ;
  wire [31:0]an32ShiftReg_0;
  wire [31:0]an32ShiftReg_1;
  wire [31:0]an32ShiftReg_2;
  wire an32ShiftReg_20;
  wire [31:0]an32ShiftReg_3;
  wire an32ShiftReg_30;
  wire [31:0]an32ShiftReg_4;
  wire an32ShiftReg_40;
  wire [31:0]an32ShiftReg_5;
  wire an32ShiftReg_50;
  wire [31:0]an32ShiftReg_6;
  wire an32ShiftReg_60;
  wire [31:0]an32ShiftReg_7;
  wire an32ShiftReg_70;
  wire an32ShiftReg_80;
  wire an32ShiftReg_90;
  wire \ap_CS_fsm[1]_i_3_n_0 ;
  wire \ap_CS_fsm[1]_i_7_n_0 ;
  wire \ap_CS_fsm[3]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire ap_CS_fsm_pp0_stage3;
  wire ap_CS_fsm_pp0_stage4;
  wire ap_CS_fsm_pp0_stage5;
  wire ap_CS_fsm_pp0_stage6;
  wire ap_CS_fsm_pp0_stage7;
  wire ap_CS_fsm_pp0_stage8;
  wire ap_CS_fsm_pp0_stage9;
  wire [2:0]\ap_CS_fsm_reg[3]_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [10:0]ap_NS_fsm;
  wire ap_NS_fsm115_out__2;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_reg_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter10;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [30:0]ap_sig_allocacmp_n32XferCnt_load;
  wire [31:16]dout__3;
  wire [30:16]dout__3_0;
  wire [31:30]dout__3_1;
  wire [31:16]dout__3_2;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_20;
  wire flow_control_loop_pipe_sequential_init_U_n_21;
  wire flow_control_loop_pipe_sequential_init_U_n_22;
  wire flow_control_loop_pipe_sequential_init_U_n_23;
  wire flow_control_loop_pipe_sequential_init_U_n_24;
  wire flow_control_loop_pipe_sequential_init_U_n_25;
  wire flow_control_loop_pipe_sequential_init_U_n_26;
  wire flow_control_loop_pipe_sequential_init_U_n_27;
  wire flow_control_loop_pipe_sequential_init_U_n_28;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_34;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire flow_control_loop_pipe_sequential_init_U_n_7;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire [3:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  wire icmp_ln22_fu_279_p2;
  wire icmp_ln22_fu_279_p2_carry__0_n_1;
  wire icmp_ln22_fu_279_p2_carry__0_n_2;
  wire icmp_ln22_fu_279_p2_carry__0_n_3;
  wire icmp_ln22_fu_279_p2_carry__0_n_4;
  wire icmp_ln22_fu_279_p2_carry__0_n_5;
  wire icmp_ln22_fu_279_p2_carry__0_n_6;
  wire icmp_ln22_fu_279_p2_carry__0_n_7;
  wire icmp_ln22_fu_279_p2_carry_n_0;
  wire icmp_ln22_fu_279_p2_carry_n_1;
  wire icmp_ln22_fu_279_p2_carry_n_2;
  wire icmp_ln22_fu_279_p2_carry_n_3;
  wire icmp_ln22_fu_279_p2_carry_n_4;
  wire icmp_ln22_fu_279_p2_carry_n_5;
  wire icmp_ln22_fu_279_p2_carry_n_6;
  wire icmp_ln22_fu_279_p2_carry_n_7;
  wire icmp_ln22_reg_556;
  wire icmp_ln22_reg_5560;
  wire [30:0]\icmp_ln22_reg_556_reg[0]_0 ;
  wire mem_reg_0_15_0_0_i_10_n_0;
  wire mem_reg_0_15_0_0_i_11_n_0;
  wire mem_reg_0_15_0_0_i_12_n_0;
  wire mul_32s_32s_32_1_1_U10_n_0;
  wire mul_32s_32s_32_1_1_U10_n_1;
  wire mul_32s_32s_32_1_1_U10_n_10;
  wire mul_32s_32s_32_1_1_U10_n_11;
  wire mul_32s_32s_32_1_1_U10_n_12;
  wire mul_32s_32s_32_1_1_U10_n_13;
  wire mul_32s_32s_32_1_1_U10_n_14;
  wire mul_32s_32s_32_1_1_U10_n_15;
  wire mul_32s_32s_32_1_1_U10_n_16;
  wire mul_32s_32s_32_1_1_U10_n_17;
  wire mul_32s_32s_32_1_1_U10_n_18;
  wire mul_32s_32s_32_1_1_U10_n_19;
  wire mul_32s_32s_32_1_1_U10_n_2;
  wire mul_32s_32s_32_1_1_U10_n_20;
  wire mul_32s_32s_32_1_1_U10_n_21;
  wire mul_32s_32s_32_1_1_U10_n_22;
  wire mul_32s_32s_32_1_1_U10_n_23;
  wire mul_32s_32s_32_1_1_U10_n_24;
  wire mul_32s_32s_32_1_1_U10_n_25;
  wire mul_32s_32s_32_1_1_U10_n_26;
  wire mul_32s_32s_32_1_1_U10_n_27;
  wire mul_32s_32s_32_1_1_U10_n_28;
  wire mul_32s_32s_32_1_1_U10_n_29;
  wire mul_32s_32s_32_1_1_U10_n_3;
  wire mul_32s_32s_32_1_1_U10_n_30;
  wire mul_32s_32s_32_1_1_U10_n_31;
  wire mul_32s_32s_32_1_1_U10_n_32;
  wire mul_32s_32s_32_1_1_U10_n_33;
  wire mul_32s_32s_32_1_1_U10_n_34;
  wire mul_32s_32s_32_1_1_U10_n_35;
  wire mul_32s_32s_32_1_1_U10_n_36;
  wire mul_32s_32s_32_1_1_U10_n_37;
  wire mul_32s_32s_32_1_1_U10_n_38;
  wire mul_32s_32s_32_1_1_U10_n_39;
  wire mul_32s_32s_32_1_1_U10_n_4;
  wire mul_32s_32s_32_1_1_U10_n_40;
  wire mul_32s_32s_32_1_1_U10_n_41;
  wire mul_32s_32s_32_1_1_U10_n_42;
  wire mul_32s_32s_32_1_1_U10_n_43;
  wire mul_32s_32s_32_1_1_U10_n_44;
  wire mul_32s_32s_32_1_1_U10_n_45;
  wire mul_32s_32s_32_1_1_U10_n_46;
  wire mul_32s_32s_32_1_1_U10_n_47;
  wire mul_32s_32s_32_1_1_U10_n_48;
  wire mul_32s_32s_32_1_1_U10_n_49;
  wire mul_32s_32s_32_1_1_U10_n_5;
  wire mul_32s_32s_32_1_1_U10_n_50;
  wire mul_32s_32s_32_1_1_U10_n_51;
  wire mul_32s_32s_32_1_1_U10_n_52;
  wire mul_32s_32s_32_1_1_U10_n_53;
  wire mul_32s_32s_32_1_1_U10_n_54;
  wire mul_32s_32s_32_1_1_U10_n_55;
  wire mul_32s_32s_32_1_1_U10_n_56;
  wire mul_32s_32s_32_1_1_U10_n_57;
  wire mul_32s_32s_32_1_1_U10_n_58;
  wire mul_32s_32s_32_1_1_U10_n_59;
  wire mul_32s_32s_32_1_1_U10_n_6;
  wire mul_32s_32s_32_1_1_U10_n_60;
  wire mul_32s_32s_32_1_1_U10_n_61;
  wire mul_32s_32s_32_1_1_U10_n_62;
  wire mul_32s_32s_32_1_1_U10_n_63;
  wire mul_32s_32s_32_1_1_U10_n_64;
  wire mul_32s_32s_32_1_1_U10_n_65;
  wire mul_32s_32s_32_1_1_U10_n_66;
  wire mul_32s_32s_32_1_1_U10_n_67;
  wire mul_32s_32s_32_1_1_U10_n_68;
  wire mul_32s_32s_32_1_1_U10_n_69;
  wire mul_32s_32s_32_1_1_U10_n_7;
  wire mul_32s_32s_32_1_1_U10_n_70;
  wire mul_32s_32s_32_1_1_U10_n_71;
  wire mul_32s_32s_32_1_1_U10_n_72;
  wire mul_32s_32s_32_1_1_U10_n_73;
  wire mul_32s_32s_32_1_1_U10_n_74;
  wire mul_32s_32s_32_1_1_U10_n_75;
  wire mul_32s_32s_32_1_1_U10_n_76;
  wire mul_32s_32s_32_1_1_U10_n_77;
  wire mul_32s_32s_32_1_1_U10_n_78;
  wire mul_32s_32s_32_1_1_U10_n_79;
  wire mul_32s_32s_32_1_1_U10_n_8;
  wire mul_32s_32s_32_1_1_U10_n_80;
  wire mul_32s_32s_32_1_1_U10_n_81;
  wire mul_32s_32s_32_1_1_U10_n_82;
  wire mul_32s_32s_32_1_1_U10_n_83;
  wire mul_32s_32s_32_1_1_U10_n_84;
  wire mul_32s_32s_32_1_1_U10_n_85;
  wire mul_32s_32s_32_1_1_U10_n_86;
  wire mul_32s_32s_32_1_1_U10_n_87;
  wire mul_32s_32s_32_1_1_U10_n_88;
  wire mul_32s_32s_32_1_1_U10_n_89;
  wire mul_32s_32s_32_1_1_U10_n_9;
  wire mul_32s_32s_32_1_1_U10_n_90;
  wire mul_32s_32s_32_1_1_U10_n_91;
  wire mul_32s_32s_32_1_1_U10_n_92;
  wire mul_32s_32s_32_1_1_U10_n_93;
  wire mul_32s_32s_32_1_1_U10_n_94;
  wire mul_32s_32s_32_1_1_U11_n_17;
  wire mul_32s_32s_32_1_1_U11_n_18;
  wire mul_32s_32s_32_1_1_U11_n_19;
  wire mul_32s_32s_32_1_1_U11_n_20;
  wire mul_32s_32s_32_1_1_U11_n_21;
  wire mul_32s_32s_32_1_1_U11_n_22;
  wire mul_32s_32s_32_1_1_U11_n_23;
  wire mul_32s_32s_32_1_1_U11_n_24;
  wire mul_32s_32s_32_1_1_U11_n_25;
  wire mul_32s_32s_32_1_1_U11_n_26;
  wire mul_32s_32s_32_1_1_U11_n_27;
  wire mul_32s_32s_32_1_1_U11_n_28;
  wire mul_32s_32s_32_1_1_U11_n_29;
  wire mul_32s_32s_32_1_1_U11_n_30;
  wire mul_32s_32s_32_1_1_U11_n_31;
  wire mul_32s_32s_32_1_1_U11_n_32;
  wire mul_32s_32s_32_1_1_U11_n_33;
  wire mul_32s_32s_32_1_1_U11_n_34;
  wire mul_32s_32s_32_1_1_U11_n_35;
  wire mul_32s_32s_32_1_1_U11_n_36;
  wire mul_32s_32s_32_1_1_U11_n_37;
  wire mul_32s_32s_32_1_1_U11_n_38;
  wire mul_32s_32s_32_1_1_U11_n_39;
  wire mul_32s_32s_32_1_1_U11_n_40;
  wire mul_32s_32s_32_1_1_U11_n_41;
  wire mul_32s_32s_32_1_1_U11_n_42;
  wire mul_32s_32s_32_1_1_U11_n_43;
  wire mul_32s_32s_32_1_1_U11_n_44;
  wire mul_32s_32s_32_1_1_U11_n_45;
  wire mul_32s_32s_32_1_1_U11_n_46;
  wire mul_32s_32s_32_1_1_U11_n_47;
  wire mul_32s_32s_32_1_1_U11_n_48;
  wire mul_32s_32s_32_1_1_U11_n_49;
  wire mul_32s_32s_32_1_1_U1_n_10;
  wire mul_32s_32s_32_1_1_U1_n_11;
  wire mul_32s_32s_32_1_1_U1_n_12;
  wire mul_32s_32s_32_1_1_U1_n_13;
  wire mul_32s_32s_32_1_1_U1_n_14;
  wire mul_32s_32s_32_1_1_U1_n_15;
  wire mul_32s_32s_32_1_1_U1_n_16;
  wire mul_32s_32s_32_1_1_U1_n_17;
  wire mul_32s_32s_32_1_1_U1_n_18;
  wire mul_32s_32s_32_1_1_U1_n_19;
  wire mul_32s_32s_32_1_1_U1_n_2;
  wire mul_32s_32s_32_1_1_U1_n_20;
  wire mul_32s_32s_32_1_1_U1_n_21;
  wire mul_32s_32s_32_1_1_U1_n_22;
  wire mul_32s_32s_32_1_1_U1_n_23;
  wire mul_32s_32s_32_1_1_U1_n_24;
  wire mul_32s_32s_32_1_1_U1_n_25;
  wire mul_32s_32s_32_1_1_U1_n_26;
  wire mul_32s_32s_32_1_1_U1_n_27;
  wire mul_32s_32s_32_1_1_U1_n_28;
  wire mul_32s_32s_32_1_1_U1_n_29;
  wire mul_32s_32s_32_1_1_U1_n_3;
  wire mul_32s_32s_32_1_1_U1_n_30;
  wire mul_32s_32s_32_1_1_U1_n_31;
  wire mul_32s_32s_32_1_1_U1_n_32;
  wire mul_32s_32s_32_1_1_U1_n_33;
  wire mul_32s_32s_32_1_1_U1_n_34;
  wire mul_32s_32s_32_1_1_U1_n_35;
  wire mul_32s_32s_32_1_1_U1_n_36;
  wire mul_32s_32s_32_1_1_U1_n_37;
  wire mul_32s_32s_32_1_1_U1_n_38;
  wire mul_32s_32s_32_1_1_U1_n_39;
  wire mul_32s_32s_32_1_1_U1_n_4;
  wire mul_32s_32s_32_1_1_U1_n_40;
  wire mul_32s_32s_32_1_1_U1_n_41;
  wire mul_32s_32s_32_1_1_U1_n_42;
  wire mul_32s_32s_32_1_1_U1_n_43;
  wire mul_32s_32s_32_1_1_U1_n_44;
  wire mul_32s_32s_32_1_1_U1_n_45;
  wire mul_32s_32s_32_1_1_U1_n_46;
  wire mul_32s_32s_32_1_1_U1_n_47;
  wire mul_32s_32s_32_1_1_U1_n_48;
  wire mul_32s_32s_32_1_1_U1_n_49;
  wire mul_32s_32s_32_1_1_U1_n_5;
  wire mul_32s_32s_32_1_1_U1_n_50;
  wire mul_32s_32s_32_1_1_U1_n_51;
  wire mul_32s_32s_32_1_1_U1_n_52;
  wire mul_32s_32s_32_1_1_U1_n_53;
  wire mul_32s_32s_32_1_1_U1_n_54;
  wire mul_32s_32s_32_1_1_U1_n_55;
  wire mul_32s_32s_32_1_1_U1_n_56;
  wire mul_32s_32s_32_1_1_U1_n_57;
  wire mul_32s_32s_32_1_1_U1_n_58;
  wire mul_32s_32s_32_1_1_U1_n_59;
  wire mul_32s_32s_32_1_1_U1_n_6;
  wire mul_32s_32s_32_1_1_U1_n_60;
  wire mul_32s_32s_32_1_1_U1_n_61;
  wire mul_32s_32s_32_1_1_U1_n_62;
  wire mul_32s_32s_32_1_1_U1_n_63;
  wire mul_32s_32s_32_1_1_U1_n_64;
  wire mul_32s_32s_32_1_1_U1_n_65;
  wire mul_32s_32s_32_1_1_U1_n_66;
  wire mul_32s_32s_32_1_1_U1_n_7;
  wire mul_32s_32s_32_1_1_U1_n_8;
  wire mul_32s_32s_32_1_1_U1_n_9;
  wire mul_32s_32s_32_1_1_U2_n_10;
  wire mul_32s_32s_32_1_1_U2_n_11;
  wire mul_32s_32s_32_1_1_U2_n_12;
  wire mul_32s_32s_32_1_1_U2_n_13;
  wire mul_32s_32s_32_1_1_U2_n_14;
  wire mul_32s_32s_32_1_1_U2_n_15;
  wire mul_32s_32s_32_1_1_U2_n_16;
  wire mul_32s_32s_32_1_1_U2_n_17;
  wire mul_32s_32s_32_1_1_U2_n_2;
  wire mul_32s_32s_32_1_1_U2_n_3;
  wire mul_32s_32s_32_1_1_U2_n_33;
  wire mul_32s_32s_32_1_1_U2_n_34;
  wire mul_32s_32s_32_1_1_U2_n_35;
  wire mul_32s_32s_32_1_1_U2_n_36;
  wire mul_32s_32s_32_1_1_U2_n_37;
  wire mul_32s_32s_32_1_1_U2_n_38;
  wire mul_32s_32s_32_1_1_U2_n_39;
  wire mul_32s_32s_32_1_1_U2_n_4;
  wire mul_32s_32s_32_1_1_U2_n_40;
  wire mul_32s_32s_32_1_1_U2_n_41;
  wire mul_32s_32s_32_1_1_U2_n_42;
  wire mul_32s_32s_32_1_1_U2_n_43;
  wire mul_32s_32s_32_1_1_U2_n_44;
  wire mul_32s_32s_32_1_1_U2_n_45;
  wire mul_32s_32s_32_1_1_U2_n_46;
  wire mul_32s_32s_32_1_1_U2_n_47;
  wire mul_32s_32s_32_1_1_U2_n_48;
  wire mul_32s_32s_32_1_1_U2_n_49;
  wire mul_32s_32s_32_1_1_U2_n_5;
  wire mul_32s_32s_32_1_1_U2_n_50;
  wire mul_32s_32s_32_1_1_U2_n_51;
  wire mul_32s_32s_32_1_1_U2_n_52;
  wire mul_32s_32s_32_1_1_U2_n_53;
  wire mul_32s_32s_32_1_1_U2_n_54;
  wire mul_32s_32s_32_1_1_U2_n_55;
  wire mul_32s_32s_32_1_1_U2_n_56;
  wire mul_32s_32s_32_1_1_U2_n_57;
  wire mul_32s_32s_32_1_1_U2_n_58;
  wire mul_32s_32s_32_1_1_U2_n_59;
  wire mul_32s_32s_32_1_1_U2_n_6;
  wire mul_32s_32s_32_1_1_U2_n_60;
  wire mul_32s_32s_32_1_1_U2_n_61;
  wire mul_32s_32s_32_1_1_U2_n_62;
  wire mul_32s_32s_32_1_1_U2_n_63;
  wire mul_32s_32s_32_1_1_U2_n_64;
  wire mul_32s_32s_32_1_1_U2_n_7;
  wire mul_32s_32s_32_1_1_U2_n_8;
  wire mul_32s_32s_32_1_1_U2_n_9;
  wire mul_32s_32s_32_1_1_U3_n_1;
  wire mul_32s_32s_32_1_1_U3_n_10;
  wire mul_32s_32s_32_1_1_U3_n_11;
  wire mul_32s_32s_32_1_1_U3_n_12;
  wire mul_32s_32s_32_1_1_U3_n_13;
  wire mul_32s_32s_32_1_1_U3_n_14;
  wire mul_32s_32s_32_1_1_U3_n_15;
  wire mul_32s_32s_32_1_1_U3_n_16;
  wire mul_32s_32s_32_1_1_U3_n_17;
  wire mul_32s_32s_32_1_1_U3_n_18;
  wire mul_32s_32s_32_1_1_U3_n_19;
  wire mul_32s_32s_32_1_1_U3_n_2;
  wire mul_32s_32s_32_1_1_U3_n_20;
  wire mul_32s_32s_32_1_1_U3_n_21;
  wire mul_32s_32s_32_1_1_U3_n_22;
  wire mul_32s_32s_32_1_1_U3_n_23;
  wire mul_32s_32s_32_1_1_U3_n_24;
  wire mul_32s_32s_32_1_1_U3_n_25;
  wire mul_32s_32s_32_1_1_U3_n_26;
  wire mul_32s_32s_32_1_1_U3_n_27;
  wire mul_32s_32s_32_1_1_U3_n_28;
  wire mul_32s_32s_32_1_1_U3_n_29;
  wire mul_32s_32s_32_1_1_U3_n_3;
  wire mul_32s_32s_32_1_1_U3_n_30;
  wire mul_32s_32s_32_1_1_U3_n_31;
  wire mul_32s_32s_32_1_1_U3_n_32;
  wire mul_32s_32s_32_1_1_U3_n_33;
  wire mul_32s_32s_32_1_1_U3_n_34;
  wire mul_32s_32s_32_1_1_U3_n_35;
  wire mul_32s_32s_32_1_1_U3_n_36;
  wire mul_32s_32s_32_1_1_U3_n_37;
  wire mul_32s_32s_32_1_1_U3_n_38;
  wire mul_32s_32s_32_1_1_U3_n_39;
  wire mul_32s_32s_32_1_1_U3_n_4;
  wire mul_32s_32s_32_1_1_U3_n_40;
  wire mul_32s_32s_32_1_1_U3_n_41;
  wire mul_32s_32s_32_1_1_U3_n_42;
  wire mul_32s_32s_32_1_1_U3_n_43;
  wire mul_32s_32s_32_1_1_U3_n_44;
  wire mul_32s_32s_32_1_1_U3_n_45;
  wire mul_32s_32s_32_1_1_U3_n_46;
  wire mul_32s_32s_32_1_1_U3_n_47;
  wire mul_32s_32s_32_1_1_U3_n_48;
  wire mul_32s_32s_32_1_1_U3_n_49;
  wire mul_32s_32s_32_1_1_U3_n_5;
  wire mul_32s_32s_32_1_1_U3_n_50;
  wire mul_32s_32s_32_1_1_U3_n_51;
  wire mul_32s_32s_32_1_1_U3_n_52;
  wire mul_32s_32s_32_1_1_U3_n_53;
  wire mul_32s_32s_32_1_1_U3_n_54;
  wire mul_32s_32s_32_1_1_U3_n_55;
  wire mul_32s_32s_32_1_1_U3_n_56;
  wire mul_32s_32s_32_1_1_U3_n_57;
  wire mul_32s_32s_32_1_1_U3_n_58;
  wire mul_32s_32s_32_1_1_U3_n_59;
  wire mul_32s_32s_32_1_1_U3_n_6;
  wire mul_32s_32s_32_1_1_U3_n_60;
  wire mul_32s_32s_32_1_1_U3_n_61;
  wire mul_32s_32s_32_1_1_U3_n_62;
  wire mul_32s_32s_32_1_1_U3_n_63;
  wire mul_32s_32s_32_1_1_U3_n_64;
  wire mul_32s_32s_32_1_1_U3_n_65;
  wire mul_32s_32s_32_1_1_U3_n_7;
  wire mul_32s_32s_32_1_1_U3_n_8;
  wire mul_32s_32s_32_1_1_U3_n_9;
  wire mul_32s_32s_32_1_1_U4_n_10;
  wire mul_32s_32s_32_1_1_U4_n_11;
  wire mul_32s_32s_32_1_1_U4_n_12;
  wire mul_32s_32s_32_1_1_U4_n_13;
  wire mul_32s_32s_32_1_1_U4_n_14;
  wire mul_32s_32s_32_1_1_U4_n_15;
  wire mul_32s_32s_32_1_1_U4_n_16;
  wire mul_32s_32s_32_1_1_U4_n_17;
  wire mul_32s_32s_32_1_1_U4_n_18;
  wire mul_32s_32s_32_1_1_U4_n_19;
  wire mul_32s_32s_32_1_1_U4_n_2;
  wire mul_32s_32s_32_1_1_U4_n_20;
  wire mul_32s_32s_32_1_1_U4_n_21;
  wire mul_32s_32s_32_1_1_U4_n_22;
  wire mul_32s_32s_32_1_1_U4_n_23;
  wire mul_32s_32s_32_1_1_U4_n_24;
  wire mul_32s_32s_32_1_1_U4_n_25;
  wire mul_32s_32s_32_1_1_U4_n_26;
  wire mul_32s_32s_32_1_1_U4_n_27;
  wire mul_32s_32s_32_1_1_U4_n_28;
  wire mul_32s_32s_32_1_1_U4_n_29;
  wire mul_32s_32s_32_1_1_U4_n_3;
  wire mul_32s_32s_32_1_1_U4_n_30;
  wire mul_32s_32s_32_1_1_U4_n_31;
  wire mul_32s_32s_32_1_1_U4_n_32;
  wire mul_32s_32s_32_1_1_U4_n_33;
  wire mul_32s_32s_32_1_1_U4_n_34;
  wire mul_32s_32s_32_1_1_U4_n_35;
  wire mul_32s_32s_32_1_1_U4_n_36;
  wire mul_32s_32s_32_1_1_U4_n_37;
  wire mul_32s_32s_32_1_1_U4_n_38;
  wire mul_32s_32s_32_1_1_U4_n_39;
  wire mul_32s_32s_32_1_1_U4_n_4;
  wire mul_32s_32s_32_1_1_U4_n_40;
  wire mul_32s_32s_32_1_1_U4_n_41;
  wire mul_32s_32s_32_1_1_U4_n_42;
  wire mul_32s_32s_32_1_1_U4_n_43;
  wire mul_32s_32s_32_1_1_U4_n_44;
  wire mul_32s_32s_32_1_1_U4_n_45;
  wire mul_32s_32s_32_1_1_U4_n_46;
  wire mul_32s_32s_32_1_1_U4_n_47;
  wire mul_32s_32s_32_1_1_U4_n_48;
  wire mul_32s_32s_32_1_1_U4_n_49;
  wire mul_32s_32s_32_1_1_U4_n_5;
  wire mul_32s_32s_32_1_1_U4_n_50;
  wire mul_32s_32s_32_1_1_U4_n_51;
  wire mul_32s_32s_32_1_1_U4_n_52;
  wire mul_32s_32s_32_1_1_U4_n_53;
  wire mul_32s_32s_32_1_1_U4_n_54;
  wire mul_32s_32s_32_1_1_U4_n_55;
  wire mul_32s_32s_32_1_1_U4_n_56;
  wire mul_32s_32s_32_1_1_U4_n_57;
  wire mul_32s_32s_32_1_1_U4_n_58;
  wire mul_32s_32s_32_1_1_U4_n_59;
  wire mul_32s_32s_32_1_1_U4_n_6;
  wire mul_32s_32s_32_1_1_U4_n_60;
  wire mul_32s_32s_32_1_1_U4_n_61;
  wire mul_32s_32s_32_1_1_U4_n_62;
  wire mul_32s_32s_32_1_1_U4_n_63;
  wire mul_32s_32s_32_1_1_U4_n_64;
  wire mul_32s_32s_32_1_1_U4_n_65;
  wire mul_32s_32s_32_1_1_U4_n_66;
  wire mul_32s_32s_32_1_1_U4_n_7;
  wire mul_32s_32s_32_1_1_U4_n_8;
  wire mul_32s_32s_32_1_1_U4_n_82;
  wire mul_32s_32s_32_1_1_U4_n_9;
  wire mul_32s_32s_32_1_1_U5_n_10;
  wire mul_32s_32s_32_1_1_U5_n_11;
  wire mul_32s_32s_32_1_1_U5_n_12;
  wire mul_32s_32s_32_1_1_U5_n_13;
  wire mul_32s_32s_32_1_1_U5_n_14;
  wire mul_32s_32s_32_1_1_U5_n_15;
  wire mul_32s_32s_32_1_1_U5_n_16;
  wire mul_32s_32s_32_1_1_U5_n_17;
  wire mul_32s_32s_32_1_1_U5_n_18;
  wire mul_32s_32s_32_1_1_U5_n_19;
  wire mul_32s_32s_32_1_1_U5_n_20;
  wire mul_32s_32s_32_1_1_U5_n_21;
  wire mul_32s_32s_32_1_1_U5_n_22;
  wire mul_32s_32s_32_1_1_U5_n_23;
  wire mul_32s_32s_32_1_1_U5_n_24;
  wire mul_32s_32s_32_1_1_U5_n_25;
  wire mul_32s_32s_32_1_1_U5_n_26;
  wire mul_32s_32s_32_1_1_U5_n_27;
  wire mul_32s_32s_32_1_1_U5_n_28;
  wire mul_32s_32s_32_1_1_U5_n_29;
  wire mul_32s_32s_32_1_1_U5_n_30;
  wire mul_32s_32s_32_1_1_U5_n_31;
  wire mul_32s_32s_32_1_1_U5_n_32;
  wire mul_32s_32s_32_1_1_U5_n_33;
  wire mul_32s_32s_32_1_1_U5_n_34;
  wire mul_32s_32s_32_1_1_U5_n_35;
  wire mul_32s_32s_32_1_1_U5_n_36;
  wire mul_32s_32s_32_1_1_U5_n_37;
  wire mul_32s_32s_32_1_1_U5_n_38;
  wire mul_32s_32s_32_1_1_U5_n_39;
  wire mul_32s_32s_32_1_1_U5_n_40;
  wire mul_32s_32s_32_1_1_U5_n_41;
  wire mul_32s_32s_32_1_1_U5_n_42;
  wire mul_32s_32s_32_1_1_U5_n_43;
  wire mul_32s_32s_32_1_1_U5_n_44;
  wire mul_32s_32s_32_1_1_U5_n_45;
  wire mul_32s_32s_32_1_1_U5_n_46;
  wire mul_32s_32s_32_1_1_U5_n_47;
  wire mul_32s_32s_32_1_1_U5_n_48;
  wire mul_32s_32s_32_1_1_U5_n_49;
  wire mul_32s_32s_32_1_1_U5_n_50;
  wire mul_32s_32s_32_1_1_U5_n_51;
  wire mul_32s_32s_32_1_1_U5_n_52;
  wire mul_32s_32s_32_1_1_U5_n_53;
  wire mul_32s_32s_32_1_1_U5_n_54;
  wire mul_32s_32s_32_1_1_U5_n_55;
  wire mul_32s_32s_32_1_1_U5_n_56;
  wire mul_32s_32s_32_1_1_U5_n_57;
  wire mul_32s_32s_32_1_1_U5_n_58;
  wire mul_32s_32s_32_1_1_U5_n_59;
  wire mul_32s_32s_32_1_1_U5_n_6;
  wire mul_32s_32s_32_1_1_U5_n_60;
  wire mul_32s_32s_32_1_1_U5_n_61;
  wire mul_32s_32s_32_1_1_U5_n_62;
  wire mul_32s_32s_32_1_1_U5_n_63;
  wire mul_32s_32s_32_1_1_U5_n_64;
  wire mul_32s_32s_32_1_1_U5_n_65;
  wire mul_32s_32s_32_1_1_U5_n_66;
  wire mul_32s_32s_32_1_1_U5_n_67;
  wire mul_32s_32s_32_1_1_U5_n_7;
  wire mul_32s_32s_32_1_1_U5_n_8;
  wire mul_32s_32s_32_1_1_U5_n_9;
  wire mul_32s_32s_32_1_1_U6_n_1;
  wire mul_32s_32s_32_1_1_U6_n_10;
  wire mul_32s_32s_32_1_1_U6_n_11;
  wire mul_32s_32s_32_1_1_U6_n_12;
  wire mul_32s_32s_32_1_1_U6_n_13;
  wire mul_32s_32s_32_1_1_U6_n_14;
  wire mul_32s_32s_32_1_1_U6_n_15;
  wire mul_32s_32s_32_1_1_U6_n_16;
  wire mul_32s_32s_32_1_1_U6_n_17;
  wire mul_32s_32s_32_1_1_U6_n_18;
  wire mul_32s_32s_32_1_1_U6_n_19;
  wire mul_32s_32s_32_1_1_U6_n_2;
  wire mul_32s_32s_32_1_1_U6_n_20;
  wire mul_32s_32s_32_1_1_U6_n_21;
  wire mul_32s_32s_32_1_1_U6_n_22;
  wire mul_32s_32s_32_1_1_U6_n_23;
  wire mul_32s_32s_32_1_1_U6_n_24;
  wire mul_32s_32s_32_1_1_U6_n_25;
  wire mul_32s_32s_32_1_1_U6_n_26;
  wire mul_32s_32s_32_1_1_U6_n_27;
  wire mul_32s_32s_32_1_1_U6_n_28;
  wire mul_32s_32s_32_1_1_U6_n_29;
  wire mul_32s_32s_32_1_1_U6_n_3;
  wire mul_32s_32s_32_1_1_U6_n_30;
  wire mul_32s_32s_32_1_1_U6_n_31;
  wire mul_32s_32s_32_1_1_U6_n_32;
  wire mul_32s_32s_32_1_1_U6_n_33;
  wire mul_32s_32s_32_1_1_U6_n_34;
  wire mul_32s_32s_32_1_1_U6_n_35;
  wire mul_32s_32s_32_1_1_U6_n_36;
  wire mul_32s_32s_32_1_1_U6_n_37;
  wire mul_32s_32s_32_1_1_U6_n_38;
  wire mul_32s_32s_32_1_1_U6_n_39;
  wire mul_32s_32s_32_1_1_U6_n_4;
  wire mul_32s_32s_32_1_1_U6_n_40;
  wire mul_32s_32s_32_1_1_U6_n_41;
  wire mul_32s_32s_32_1_1_U6_n_42;
  wire mul_32s_32s_32_1_1_U6_n_43;
  wire mul_32s_32s_32_1_1_U6_n_44;
  wire mul_32s_32s_32_1_1_U6_n_45;
  wire mul_32s_32s_32_1_1_U6_n_46;
  wire mul_32s_32s_32_1_1_U6_n_47;
  wire mul_32s_32s_32_1_1_U6_n_48;
  wire mul_32s_32s_32_1_1_U6_n_49;
  wire mul_32s_32s_32_1_1_U6_n_5;
  wire mul_32s_32s_32_1_1_U6_n_50;
  wire mul_32s_32s_32_1_1_U6_n_51;
  wire mul_32s_32s_32_1_1_U6_n_52;
  wire mul_32s_32s_32_1_1_U6_n_53;
  wire mul_32s_32s_32_1_1_U6_n_54;
  wire mul_32s_32s_32_1_1_U6_n_55;
  wire mul_32s_32s_32_1_1_U6_n_56;
  wire mul_32s_32s_32_1_1_U6_n_57;
  wire mul_32s_32s_32_1_1_U6_n_58;
  wire mul_32s_32s_32_1_1_U6_n_59;
  wire mul_32s_32s_32_1_1_U6_n_6;
  wire mul_32s_32s_32_1_1_U6_n_60;
  wire mul_32s_32s_32_1_1_U6_n_61;
  wire mul_32s_32s_32_1_1_U6_n_62;
  wire mul_32s_32s_32_1_1_U6_n_63;
  wire mul_32s_32s_32_1_1_U6_n_64;
  wire mul_32s_32s_32_1_1_U6_n_65;
  wire mul_32s_32s_32_1_1_U6_n_69;
  wire mul_32s_32s_32_1_1_U6_n_7;
  wire mul_32s_32s_32_1_1_U6_n_70;
  wire mul_32s_32s_32_1_1_U6_n_71;
  wire mul_32s_32s_32_1_1_U6_n_72;
  wire mul_32s_32s_32_1_1_U6_n_73;
  wire mul_32s_32s_32_1_1_U6_n_74;
  wire mul_32s_32s_32_1_1_U6_n_75;
  wire mul_32s_32s_32_1_1_U6_n_76;
  wire mul_32s_32s_32_1_1_U6_n_77;
  wire mul_32s_32s_32_1_1_U6_n_78;
  wire mul_32s_32s_32_1_1_U6_n_79;
  wire mul_32s_32s_32_1_1_U6_n_8;
  wire mul_32s_32s_32_1_1_U6_n_80;
  wire mul_32s_32s_32_1_1_U6_n_81;
  wire mul_32s_32s_32_1_1_U6_n_82;
  wire mul_32s_32s_32_1_1_U6_n_83;
  wire mul_32s_32s_32_1_1_U6_n_84;
  wire mul_32s_32s_32_1_1_U6_n_85;
  wire mul_32s_32s_32_1_1_U6_n_86;
  wire mul_32s_32s_32_1_1_U6_n_87;
  wire mul_32s_32s_32_1_1_U6_n_88;
  wire mul_32s_32s_32_1_1_U6_n_89;
  wire mul_32s_32s_32_1_1_U6_n_9;
  wire mul_32s_32s_32_1_1_U6_n_90;
  wire mul_32s_32s_32_1_1_U6_n_91;
  wire mul_32s_32s_32_1_1_U6_n_92;
  wire mul_32s_32s_32_1_1_U6_n_93;
  wire mul_32s_32s_32_1_1_U6_n_94;
  wire mul_32s_32s_32_1_1_U6_n_95;
  wire mul_32s_32s_32_1_1_U6_n_96;
  wire mul_32s_32s_32_1_1_U7_n_10;
  wire mul_32s_32s_32_1_1_U7_n_11;
  wire mul_32s_32s_32_1_1_U7_n_12;
  wire mul_32s_32s_32_1_1_U7_n_13;
  wire mul_32s_32s_32_1_1_U7_n_14;
  wire mul_32s_32s_32_1_1_U7_n_15;
  wire mul_32s_32s_32_1_1_U7_n_16;
  wire mul_32s_32s_32_1_1_U7_n_17;
  wire mul_32s_32s_32_1_1_U7_n_18;
  wire mul_32s_32s_32_1_1_U7_n_19;
  wire mul_32s_32s_32_1_1_U7_n_2;
  wire mul_32s_32s_32_1_1_U7_n_20;
  wire mul_32s_32s_32_1_1_U7_n_21;
  wire mul_32s_32s_32_1_1_U7_n_22;
  wire mul_32s_32s_32_1_1_U7_n_23;
  wire mul_32s_32s_32_1_1_U7_n_24;
  wire mul_32s_32s_32_1_1_U7_n_25;
  wire mul_32s_32s_32_1_1_U7_n_26;
  wire mul_32s_32s_32_1_1_U7_n_27;
  wire mul_32s_32s_32_1_1_U7_n_28;
  wire mul_32s_32s_32_1_1_U7_n_29;
  wire mul_32s_32s_32_1_1_U7_n_3;
  wire mul_32s_32s_32_1_1_U7_n_30;
  wire mul_32s_32s_32_1_1_U7_n_31;
  wire mul_32s_32s_32_1_1_U7_n_32;
  wire mul_32s_32s_32_1_1_U7_n_33;
  wire mul_32s_32s_32_1_1_U7_n_34;
  wire mul_32s_32s_32_1_1_U7_n_35;
  wire mul_32s_32s_32_1_1_U7_n_36;
  wire mul_32s_32s_32_1_1_U7_n_37;
  wire mul_32s_32s_32_1_1_U7_n_38;
  wire mul_32s_32s_32_1_1_U7_n_39;
  wire mul_32s_32s_32_1_1_U7_n_4;
  wire mul_32s_32s_32_1_1_U7_n_40;
  wire mul_32s_32s_32_1_1_U7_n_41;
  wire mul_32s_32s_32_1_1_U7_n_42;
  wire mul_32s_32s_32_1_1_U7_n_43;
  wire mul_32s_32s_32_1_1_U7_n_44;
  wire mul_32s_32s_32_1_1_U7_n_45;
  wire mul_32s_32s_32_1_1_U7_n_46;
  wire mul_32s_32s_32_1_1_U7_n_47;
  wire mul_32s_32s_32_1_1_U7_n_48;
  wire mul_32s_32s_32_1_1_U7_n_49;
  wire mul_32s_32s_32_1_1_U7_n_5;
  wire mul_32s_32s_32_1_1_U7_n_50;
  wire mul_32s_32s_32_1_1_U7_n_51;
  wire mul_32s_32s_32_1_1_U7_n_52;
  wire mul_32s_32s_32_1_1_U7_n_53;
  wire mul_32s_32s_32_1_1_U7_n_54;
  wire mul_32s_32s_32_1_1_U7_n_55;
  wire mul_32s_32s_32_1_1_U7_n_56;
  wire mul_32s_32s_32_1_1_U7_n_57;
  wire mul_32s_32s_32_1_1_U7_n_58;
  wire mul_32s_32s_32_1_1_U7_n_59;
  wire mul_32s_32s_32_1_1_U7_n_6;
  wire mul_32s_32s_32_1_1_U7_n_60;
  wire mul_32s_32s_32_1_1_U7_n_61;
  wire mul_32s_32s_32_1_1_U7_n_62;
  wire mul_32s_32s_32_1_1_U7_n_63;
  wire mul_32s_32s_32_1_1_U7_n_64;
  wire mul_32s_32s_32_1_1_U7_n_65;
  wire mul_32s_32s_32_1_1_U7_n_66;
  wire mul_32s_32s_32_1_1_U7_n_7;
  wire mul_32s_32s_32_1_1_U7_n_8;
  wire mul_32s_32s_32_1_1_U7_n_82;
  wire mul_32s_32s_32_1_1_U7_n_83;
  wire mul_32s_32s_32_1_1_U7_n_84;
  wire mul_32s_32s_32_1_1_U7_n_85;
  wire mul_32s_32s_32_1_1_U7_n_86;
  wire mul_32s_32s_32_1_1_U7_n_87;
  wire mul_32s_32s_32_1_1_U7_n_88;
  wire mul_32s_32s_32_1_1_U7_n_89;
  wire mul_32s_32s_32_1_1_U7_n_9;
  wire mul_32s_32s_32_1_1_U7_n_90;
  wire mul_32s_32s_32_1_1_U7_n_91;
  wire mul_32s_32s_32_1_1_U7_n_92;
  wire mul_32s_32s_32_1_1_U7_n_93;
  wire mul_32s_32s_32_1_1_U7_n_94;
  wire mul_32s_32s_32_1_1_U7_n_95;
  wire mul_32s_32s_32_1_1_U7_n_96;
  wire mul_32s_32s_32_1_1_U7_n_97;
  wire mul_32s_32s_32_1_1_U8_n_17;
  wire mul_32s_32s_32_1_1_U8_n_18;
  wire mul_32s_32s_32_1_1_U8_n_19;
  wire mul_32s_32s_32_1_1_U8_n_20;
  wire mul_32s_32s_32_1_1_U8_n_21;
  wire mul_32s_32s_32_1_1_U8_n_22;
  wire mul_32s_32s_32_1_1_U8_n_23;
  wire mul_32s_32s_32_1_1_U8_n_24;
  wire mul_32s_32s_32_1_1_U8_n_25;
  wire mul_32s_32s_32_1_1_U8_n_26;
  wire mul_32s_32s_32_1_1_U8_n_27;
  wire mul_32s_32s_32_1_1_U8_n_28;
  wire mul_32s_32s_32_1_1_U8_n_29;
  wire mul_32s_32s_32_1_1_U8_n_30;
  wire mul_32s_32s_32_1_1_U8_n_31;
  wire mul_32s_32s_32_1_1_U8_n_32;
  wire mul_32s_32s_32_1_1_U9_n_10;
  wire mul_32s_32s_32_1_1_U9_n_11;
  wire mul_32s_32s_32_1_1_U9_n_12;
  wire mul_32s_32s_32_1_1_U9_n_13;
  wire mul_32s_32s_32_1_1_U9_n_14;
  wire mul_32s_32s_32_1_1_U9_n_15;
  wire mul_32s_32s_32_1_1_U9_n_16;
  wire mul_32s_32s_32_1_1_U9_n_17;
  wire mul_32s_32s_32_1_1_U9_n_18;
  wire mul_32s_32s_32_1_1_U9_n_19;
  wire mul_32s_32s_32_1_1_U9_n_2;
  wire mul_32s_32s_32_1_1_U9_n_20;
  wire mul_32s_32s_32_1_1_U9_n_21;
  wire mul_32s_32s_32_1_1_U9_n_22;
  wire mul_32s_32s_32_1_1_U9_n_23;
  wire mul_32s_32s_32_1_1_U9_n_24;
  wire mul_32s_32s_32_1_1_U9_n_25;
  wire mul_32s_32s_32_1_1_U9_n_26;
  wire mul_32s_32s_32_1_1_U9_n_27;
  wire mul_32s_32s_32_1_1_U9_n_28;
  wire mul_32s_32s_32_1_1_U9_n_29;
  wire mul_32s_32s_32_1_1_U9_n_3;
  wire mul_32s_32s_32_1_1_U9_n_30;
  wire mul_32s_32s_32_1_1_U9_n_31;
  wire mul_32s_32s_32_1_1_U9_n_32;
  wire mul_32s_32s_32_1_1_U9_n_33;
  wire mul_32s_32s_32_1_1_U9_n_34;
  wire mul_32s_32s_32_1_1_U9_n_35;
  wire mul_32s_32s_32_1_1_U9_n_36;
  wire mul_32s_32s_32_1_1_U9_n_37;
  wire mul_32s_32s_32_1_1_U9_n_38;
  wire mul_32s_32s_32_1_1_U9_n_39;
  wire mul_32s_32s_32_1_1_U9_n_4;
  wire mul_32s_32s_32_1_1_U9_n_40;
  wire mul_32s_32s_32_1_1_U9_n_41;
  wire mul_32s_32s_32_1_1_U9_n_42;
  wire mul_32s_32s_32_1_1_U9_n_43;
  wire mul_32s_32s_32_1_1_U9_n_44;
  wire mul_32s_32s_32_1_1_U9_n_45;
  wire mul_32s_32s_32_1_1_U9_n_46;
  wire mul_32s_32s_32_1_1_U9_n_47;
  wire mul_32s_32s_32_1_1_U9_n_48;
  wire mul_32s_32s_32_1_1_U9_n_49;
  wire mul_32s_32s_32_1_1_U9_n_5;
  wire mul_32s_32s_32_1_1_U9_n_50;
  wire mul_32s_32s_32_1_1_U9_n_51;
  wire mul_32s_32s_32_1_1_U9_n_52;
  wire mul_32s_32s_32_1_1_U9_n_53;
  wire mul_32s_32s_32_1_1_U9_n_54;
  wire mul_32s_32s_32_1_1_U9_n_55;
  wire mul_32s_32s_32_1_1_U9_n_56;
  wire mul_32s_32s_32_1_1_U9_n_57;
  wire mul_32s_32s_32_1_1_U9_n_58;
  wire mul_32s_32s_32_1_1_U9_n_59;
  wire mul_32s_32s_32_1_1_U9_n_6;
  wire mul_32s_32s_32_1_1_U9_n_60;
  wire mul_32s_32s_32_1_1_U9_n_61;
  wire mul_32s_32s_32_1_1_U9_n_62;
  wire mul_32s_32s_32_1_1_U9_n_63;
  wire mul_32s_32s_32_1_1_U9_n_64;
  wire mul_32s_32s_32_1_1_U9_n_65;
  wire mul_32s_32s_32_1_1_U9_n_66;
  wire mul_32s_32s_32_1_1_U9_n_7;
  wire mul_32s_32s_32_1_1_U9_n_8;
  wire mul_32s_32s_32_1_1_U9_n_82;
  wire mul_32s_32s_32_1_1_U9_n_9;
  wire mul_ln35_2_reg_5850;
  wire \mul_ln35_2_reg_585_reg[0]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[10]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[11]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[12]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[13]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[14]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[15]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[16]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[1]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[2]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[3]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[4]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[5]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[6]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[7]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[8]__0_n_0 ;
  wire \mul_ln35_2_reg_585_reg[9]__0_n_0 ;
  wire [31:16]mul_ln35_2_reg_585_reg__1;
  wire mul_ln35_2_reg_585_reg_n_100;
  wire mul_ln35_2_reg_585_reg_n_101;
  wire mul_ln35_2_reg_585_reg_n_102;
  wire mul_ln35_2_reg_585_reg_n_103;
  wire mul_ln35_2_reg_585_reg_n_104;
  wire mul_ln35_2_reg_585_reg_n_105;
  wire mul_ln35_2_reg_585_reg_n_58;
  wire mul_ln35_2_reg_585_reg_n_59;
  wire mul_ln35_2_reg_585_reg_n_60;
  wire mul_ln35_2_reg_585_reg_n_61;
  wire mul_ln35_2_reg_585_reg_n_62;
  wire mul_ln35_2_reg_585_reg_n_63;
  wire mul_ln35_2_reg_585_reg_n_64;
  wire mul_ln35_2_reg_585_reg_n_65;
  wire mul_ln35_2_reg_585_reg_n_66;
  wire mul_ln35_2_reg_585_reg_n_67;
  wire mul_ln35_2_reg_585_reg_n_68;
  wire mul_ln35_2_reg_585_reg_n_69;
  wire mul_ln35_2_reg_585_reg_n_70;
  wire mul_ln35_2_reg_585_reg_n_71;
  wire mul_ln35_2_reg_585_reg_n_72;
  wire mul_ln35_2_reg_585_reg_n_73;
  wire mul_ln35_2_reg_585_reg_n_74;
  wire mul_ln35_2_reg_585_reg_n_75;
  wire mul_ln35_2_reg_585_reg_n_76;
  wire mul_ln35_2_reg_585_reg_n_77;
  wire mul_ln35_2_reg_585_reg_n_78;
  wire mul_ln35_2_reg_585_reg_n_79;
  wire mul_ln35_2_reg_585_reg_n_80;
  wire mul_ln35_2_reg_585_reg_n_81;
  wire mul_ln35_2_reg_585_reg_n_82;
  wire mul_ln35_2_reg_585_reg_n_83;
  wire mul_ln35_2_reg_585_reg_n_84;
  wire mul_ln35_2_reg_585_reg_n_85;
  wire mul_ln35_2_reg_585_reg_n_86;
  wire mul_ln35_2_reg_585_reg_n_87;
  wire mul_ln35_2_reg_585_reg_n_88;
  wire mul_ln35_2_reg_585_reg_n_89;
  wire mul_ln35_2_reg_585_reg_n_90;
  wire mul_ln35_2_reg_585_reg_n_91;
  wire mul_ln35_2_reg_585_reg_n_92;
  wire mul_ln35_2_reg_585_reg_n_93;
  wire mul_ln35_2_reg_585_reg_n_94;
  wire mul_ln35_2_reg_585_reg_n_95;
  wire mul_ln35_2_reg_585_reg_n_96;
  wire mul_ln35_2_reg_585_reg_n_97;
  wire mul_ln35_2_reg_585_reg_n_98;
  wire mul_ln35_2_reg_585_reg_n_99;
  wire mul_ln35_3_reg_5950;
  wire \mul_ln35_3_reg_595_reg[0]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[10]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[11]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[12]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[13]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[14]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[15]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[16]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[1]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[2]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[3]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[4]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[5]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[6]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[7]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[8]__0_n_0 ;
  wire \mul_ln35_3_reg_595_reg[9]__0_n_0 ;
  wire [30:16]mul_ln35_3_reg_595_reg__1;
  wire mul_ln35_3_reg_595_reg_n_100;
  wire mul_ln35_3_reg_595_reg_n_101;
  wire mul_ln35_3_reg_595_reg_n_102;
  wire mul_ln35_3_reg_595_reg_n_103;
  wire mul_ln35_3_reg_595_reg_n_104;
  wire mul_ln35_3_reg_595_reg_n_105;
  wire mul_ln35_3_reg_595_reg_n_58;
  wire mul_ln35_3_reg_595_reg_n_59;
  wire mul_ln35_3_reg_595_reg_n_60;
  wire mul_ln35_3_reg_595_reg_n_61;
  wire mul_ln35_3_reg_595_reg_n_62;
  wire mul_ln35_3_reg_595_reg_n_63;
  wire mul_ln35_3_reg_595_reg_n_64;
  wire mul_ln35_3_reg_595_reg_n_65;
  wire mul_ln35_3_reg_595_reg_n_66;
  wire mul_ln35_3_reg_595_reg_n_67;
  wire mul_ln35_3_reg_595_reg_n_68;
  wire mul_ln35_3_reg_595_reg_n_69;
  wire mul_ln35_3_reg_595_reg_n_70;
  wire mul_ln35_3_reg_595_reg_n_71;
  wire mul_ln35_3_reg_595_reg_n_72;
  wire mul_ln35_3_reg_595_reg_n_73;
  wire mul_ln35_3_reg_595_reg_n_74;
  wire mul_ln35_3_reg_595_reg_n_75;
  wire mul_ln35_3_reg_595_reg_n_76;
  wire mul_ln35_3_reg_595_reg_n_77;
  wire mul_ln35_3_reg_595_reg_n_78;
  wire mul_ln35_3_reg_595_reg_n_79;
  wire mul_ln35_3_reg_595_reg_n_80;
  wire mul_ln35_3_reg_595_reg_n_81;
  wire mul_ln35_3_reg_595_reg_n_82;
  wire mul_ln35_3_reg_595_reg_n_83;
  wire mul_ln35_3_reg_595_reg_n_84;
  wire mul_ln35_3_reg_595_reg_n_85;
  wire mul_ln35_3_reg_595_reg_n_86;
  wire mul_ln35_3_reg_595_reg_n_87;
  wire mul_ln35_3_reg_595_reg_n_88;
  wire mul_ln35_3_reg_595_reg_n_89;
  wire mul_ln35_3_reg_595_reg_n_90;
  wire mul_ln35_3_reg_595_reg_n_91;
  wire mul_ln35_3_reg_595_reg_n_92;
  wire mul_ln35_3_reg_595_reg_n_93;
  wire mul_ln35_3_reg_595_reg_n_94;
  wire mul_ln35_3_reg_595_reg_n_95;
  wire mul_ln35_3_reg_595_reg_n_96;
  wire mul_ln35_3_reg_595_reg_n_97;
  wire mul_ln35_3_reg_595_reg_n_98;
  wire mul_ln35_3_reg_595_reg_n_99;
  wire mul_ln35_5_reg_6150;
  wire \mul_ln35_5_reg_615_reg[0]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[10]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[11]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[12]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[13]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[14]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[15]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[16]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[1]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[2]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[3]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[4]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[5]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[6]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[7]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[8]__0_n_0 ;
  wire \mul_ln35_5_reg_615_reg[9]__0_n_0 ;
  wire [31:16]mul_ln35_5_reg_615_reg__1;
  wire mul_ln35_5_reg_615_reg_n_100;
  wire mul_ln35_5_reg_615_reg_n_101;
  wire mul_ln35_5_reg_615_reg_n_102;
  wire mul_ln35_5_reg_615_reg_n_103;
  wire mul_ln35_5_reg_615_reg_n_104;
  wire mul_ln35_5_reg_615_reg_n_105;
  wire mul_ln35_5_reg_615_reg_n_58;
  wire mul_ln35_5_reg_615_reg_n_59;
  wire mul_ln35_5_reg_615_reg_n_60;
  wire mul_ln35_5_reg_615_reg_n_61;
  wire mul_ln35_5_reg_615_reg_n_62;
  wire mul_ln35_5_reg_615_reg_n_63;
  wire mul_ln35_5_reg_615_reg_n_64;
  wire mul_ln35_5_reg_615_reg_n_65;
  wire mul_ln35_5_reg_615_reg_n_66;
  wire mul_ln35_5_reg_615_reg_n_67;
  wire mul_ln35_5_reg_615_reg_n_68;
  wire mul_ln35_5_reg_615_reg_n_69;
  wire mul_ln35_5_reg_615_reg_n_70;
  wire mul_ln35_5_reg_615_reg_n_71;
  wire mul_ln35_5_reg_615_reg_n_72;
  wire mul_ln35_5_reg_615_reg_n_73;
  wire mul_ln35_5_reg_615_reg_n_74;
  wire mul_ln35_5_reg_615_reg_n_75;
  wire mul_ln35_5_reg_615_reg_n_76;
  wire mul_ln35_5_reg_615_reg_n_77;
  wire mul_ln35_5_reg_615_reg_n_78;
  wire mul_ln35_5_reg_615_reg_n_79;
  wire mul_ln35_5_reg_615_reg_n_80;
  wire mul_ln35_5_reg_615_reg_n_81;
  wire mul_ln35_5_reg_615_reg_n_82;
  wire mul_ln35_5_reg_615_reg_n_83;
  wire mul_ln35_5_reg_615_reg_n_84;
  wire mul_ln35_5_reg_615_reg_n_85;
  wire mul_ln35_5_reg_615_reg_n_86;
  wire mul_ln35_5_reg_615_reg_n_87;
  wire mul_ln35_5_reg_615_reg_n_88;
  wire mul_ln35_5_reg_615_reg_n_89;
  wire mul_ln35_5_reg_615_reg_n_90;
  wire mul_ln35_5_reg_615_reg_n_91;
  wire mul_ln35_5_reg_615_reg_n_92;
  wire mul_ln35_5_reg_615_reg_n_93;
  wire mul_ln35_5_reg_615_reg_n_94;
  wire mul_ln35_5_reg_615_reg_n_95;
  wire mul_ln35_5_reg_615_reg_n_96;
  wire mul_ln35_5_reg_615_reg_n_97;
  wire mul_ln35_5_reg_615_reg_n_98;
  wire mul_ln35_5_reg_615_reg_n_99;
  wire mul_ln35_6_reg_6250;
  wire \mul_ln35_6_reg_625_reg[0]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[10]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[11]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[12]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[13]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[14]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[15]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[16]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[1]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[2]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[3]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[4]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[5]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[6]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[7]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[8]__0_n_0 ;
  wire \mul_ln35_6_reg_625_reg[9]__0_n_0 ;
  wire [30:16]mul_ln35_6_reg_625_reg__1;
  wire mul_ln35_6_reg_625_reg_n_100;
  wire mul_ln35_6_reg_625_reg_n_101;
  wire mul_ln35_6_reg_625_reg_n_102;
  wire mul_ln35_6_reg_625_reg_n_103;
  wire mul_ln35_6_reg_625_reg_n_104;
  wire mul_ln35_6_reg_625_reg_n_105;
  wire mul_ln35_6_reg_625_reg_n_58;
  wire mul_ln35_6_reg_625_reg_n_59;
  wire mul_ln35_6_reg_625_reg_n_60;
  wire mul_ln35_6_reg_625_reg_n_61;
  wire mul_ln35_6_reg_625_reg_n_62;
  wire mul_ln35_6_reg_625_reg_n_63;
  wire mul_ln35_6_reg_625_reg_n_64;
  wire mul_ln35_6_reg_625_reg_n_65;
  wire mul_ln35_6_reg_625_reg_n_66;
  wire mul_ln35_6_reg_625_reg_n_67;
  wire mul_ln35_6_reg_625_reg_n_68;
  wire mul_ln35_6_reg_625_reg_n_69;
  wire mul_ln35_6_reg_625_reg_n_70;
  wire mul_ln35_6_reg_625_reg_n_71;
  wire mul_ln35_6_reg_625_reg_n_72;
  wire mul_ln35_6_reg_625_reg_n_73;
  wire mul_ln35_6_reg_625_reg_n_74;
  wire mul_ln35_6_reg_625_reg_n_75;
  wire mul_ln35_6_reg_625_reg_n_76;
  wire mul_ln35_6_reg_625_reg_n_77;
  wire mul_ln35_6_reg_625_reg_n_78;
  wire mul_ln35_6_reg_625_reg_n_79;
  wire mul_ln35_6_reg_625_reg_n_80;
  wire mul_ln35_6_reg_625_reg_n_81;
  wire mul_ln35_6_reg_625_reg_n_82;
  wire mul_ln35_6_reg_625_reg_n_83;
  wire mul_ln35_6_reg_625_reg_n_84;
  wire mul_ln35_6_reg_625_reg_n_85;
  wire mul_ln35_6_reg_625_reg_n_86;
  wire mul_ln35_6_reg_625_reg_n_87;
  wire mul_ln35_6_reg_625_reg_n_88;
  wire mul_ln35_6_reg_625_reg_n_89;
  wire mul_ln35_6_reg_625_reg_n_90;
  wire mul_ln35_6_reg_625_reg_n_91;
  wire mul_ln35_6_reg_625_reg_n_92;
  wire mul_ln35_6_reg_625_reg_n_93;
  wire mul_ln35_6_reg_625_reg_n_94;
  wire mul_ln35_6_reg_625_reg_n_95;
  wire mul_ln35_6_reg_625_reg_n_96;
  wire mul_ln35_6_reg_625_reg_n_97;
  wire mul_ln35_6_reg_625_reg_n_98;
  wire mul_ln35_6_reg_625_reg_n_99;
  wire mul_ln35_8_reg_6450;
  wire \mul_ln35_8_reg_645_reg[0]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[10]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[11]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[12]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[13]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[14]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[15]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[16]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[1]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[2]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[3]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[4]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[5]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[6]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[7]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[8]__0_n_0 ;
  wire \mul_ln35_8_reg_645_reg[9]__0_n_0 ;
  wire [30:16]mul_ln35_8_reg_645_reg__1;
  wire mul_ln35_8_reg_645_reg_n_100;
  wire mul_ln35_8_reg_645_reg_n_101;
  wire mul_ln35_8_reg_645_reg_n_102;
  wire mul_ln35_8_reg_645_reg_n_103;
  wire mul_ln35_8_reg_645_reg_n_104;
  wire mul_ln35_8_reg_645_reg_n_105;
  wire mul_ln35_8_reg_645_reg_n_58;
  wire mul_ln35_8_reg_645_reg_n_59;
  wire mul_ln35_8_reg_645_reg_n_60;
  wire mul_ln35_8_reg_645_reg_n_61;
  wire mul_ln35_8_reg_645_reg_n_62;
  wire mul_ln35_8_reg_645_reg_n_63;
  wire mul_ln35_8_reg_645_reg_n_64;
  wire mul_ln35_8_reg_645_reg_n_65;
  wire mul_ln35_8_reg_645_reg_n_66;
  wire mul_ln35_8_reg_645_reg_n_67;
  wire mul_ln35_8_reg_645_reg_n_68;
  wire mul_ln35_8_reg_645_reg_n_69;
  wire mul_ln35_8_reg_645_reg_n_70;
  wire mul_ln35_8_reg_645_reg_n_71;
  wire mul_ln35_8_reg_645_reg_n_72;
  wire mul_ln35_8_reg_645_reg_n_73;
  wire mul_ln35_8_reg_645_reg_n_74;
  wire mul_ln35_8_reg_645_reg_n_75;
  wire mul_ln35_8_reg_645_reg_n_76;
  wire mul_ln35_8_reg_645_reg_n_77;
  wire mul_ln35_8_reg_645_reg_n_78;
  wire mul_ln35_8_reg_645_reg_n_79;
  wire mul_ln35_8_reg_645_reg_n_80;
  wire mul_ln35_8_reg_645_reg_n_81;
  wire mul_ln35_8_reg_645_reg_n_82;
  wire mul_ln35_8_reg_645_reg_n_83;
  wire mul_ln35_8_reg_645_reg_n_84;
  wire mul_ln35_8_reg_645_reg_n_85;
  wire mul_ln35_8_reg_645_reg_n_86;
  wire mul_ln35_8_reg_645_reg_n_87;
  wire mul_ln35_8_reg_645_reg_n_88;
  wire mul_ln35_8_reg_645_reg_n_89;
  wire mul_ln35_8_reg_645_reg_n_90;
  wire mul_ln35_8_reg_645_reg_n_91;
  wire mul_ln35_8_reg_645_reg_n_92;
  wire mul_ln35_8_reg_645_reg_n_93;
  wire mul_ln35_8_reg_645_reg_n_94;
  wire mul_ln35_8_reg_645_reg_n_95;
  wire mul_ln35_8_reg_645_reg_n_96;
  wire mul_ln35_8_reg_645_reg_n_97;
  wire mul_ln35_8_reg_645_reg_n_98;
  wire mul_ln35_8_reg_645_reg_n_99;
  wire mul_ln35_9_reg_6900;
  wire \mul_ln35_9_reg_690_reg[0]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[10]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[11]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[12]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[13]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[14]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[15]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[16]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[1]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[2]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[3]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[4]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[5]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[6]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[7]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[8]__0_n_0 ;
  wire \mul_ln35_9_reg_690_reg[9]__0_n_0 ;
  wire mul_ln35_9_reg_690_reg_n_100;
  wire mul_ln35_9_reg_690_reg_n_101;
  wire mul_ln35_9_reg_690_reg_n_102;
  wire mul_ln35_9_reg_690_reg_n_103;
  wire mul_ln35_9_reg_690_reg_n_104;
  wire mul_ln35_9_reg_690_reg_n_105;
  wire mul_ln35_9_reg_690_reg_n_58;
  wire mul_ln35_9_reg_690_reg_n_59;
  wire mul_ln35_9_reg_690_reg_n_60;
  wire mul_ln35_9_reg_690_reg_n_61;
  wire mul_ln35_9_reg_690_reg_n_62;
  wire mul_ln35_9_reg_690_reg_n_63;
  wire mul_ln35_9_reg_690_reg_n_64;
  wire mul_ln35_9_reg_690_reg_n_65;
  wire mul_ln35_9_reg_690_reg_n_66;
  wire mul_ln35_9_reg_690_reg_n_67;
  wire mul_ln35_9_reg_690_reg_n_68;
  wire mul_ln35_9_reg_690_reg_n_69;
  wire mul_ln35_9_reg_690_reg_n_70;
  wire mul_ln35_9_reg_690_reg_n_71;
  wire mul_ln35_9_reg_690_reg_n_72;
  wire mul_ln35_9_reg_690_reg_n_73;
  wire mul_ln35_9_reg_690_reg_n_74;
  wire mul_ln35_9_reg_690_reg_n_75;
  wire mul_ln35_9_reg_690_reg_n_76;
  wire mul_ln35_9_reg_690_reg_n_77;
  wire mul_ln35_9_reg_690_reg_n_78;
  wire mul_ln35_9_reg_690_reg_n_79;
  wire mul_ln35_9_reg_690_reg_n_80;
  wire mul_ln35_9_reg_690_reg_n_81;
  wire mul_ln35_9_reg_690_reg_n_82;
  wire mul_ln35_9_reg_690_reg_n_83;
  wire mul_ln35_9_reg_690_reg_n_84;
  wire mul_ln35_9_reg_690_reg_n_85;
  wire mul_ln35_9_reg_690_reg_n_86;
  wire mul_ln35_9_reg_690_reg_n_87;
  wire mul_ln35_9_reg_690_reg_n_88;
  wire mul_ln35_9_reg_690_reg_n_89;
  wire mul_ln35_9_reg_690_reg_n_90;
  wire mul_ln35_9_reg_690_reg_n_91;
  wire mul_ln35_9_reg_690_reg_n_92;
  wire mul_ln35_9_reg_690_reg_n_93;
  wire mul_ln35_9_reg_690_reg_n_94;
  wire mul_ln35_9_reg_690_reg_n_95;
  wire mul_ln35_9_reg_690_reg_n_96;
  wire mul_ln35_9_reg_690_reg_n_97;
  wire mul_ln35_9_reg_690_reg_n_98;
  wire mul_ln35_9_reg_690_reg_n_99;
  wire mul_ln35_reg_5650;
  wire \mul_ln35_reg_565_reg[0]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[10]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[11]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[12]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[13]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[14]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[15]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[16]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[1]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[2]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[3]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[4]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[5]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[6]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[7]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[8]__0_n_0 ;
  wire \mul_ln35_reg_565_reg[9]__0_n_0 ;
  wire [31:16]mul_ln35_reg_565_reg__1;
  wire mul_ln35_reg_565_reg_n_100;
  wire mul_ln35_reg_565_reg_n_101;
  wire mul_ln35_reg_565_reg_n_102;
  wire mul_ln35_reg_565_reg_n_103;
  wire mul_ln35_reg_565_reg_n_104;
  wire mul_ln35_reg_565_reg_n_105;
  wire mul_ln35_reg_565_reg_n_58;
  wire mul_ln35_reg_565_reg_n_59;
  wire mul_ln35_reg_565_reg_n_60;
  wire mul_ln35_reg_565_reg_n_61;
  wire mul_ln35_reg_565_reg_n_62;
  wire mul_ln35_reg_565_reg_n_63;
  wire mul_ln35_reg_565_reg_n_64;
  wire mul_ln35_reg_565_reg_n_65;
  wire mul_ln35_reg_565_reg_n_66;
  wire mul_ln35_reg_565_reg_n_67;
  wire mul_ln35_reg_565_reg_n_68;
  wire mul_ln35_reg_565_reg_n_69;
  wire mul_ln35_reg_565_reg_n_70;
  wire mul_ln35_reg_565_reg_n_71;
  wire mul_ln35_reg_565_reg_n_72;
  wire mul_ln35_reg_565_reg_n_73;
  wire mul_ln35_reg_565_reg_n_74;
  wire mul_ln35_reg_565_reg_n_75;
  wire mul_ln35_reg_565_reg_n_76;
  wire mul_ln35_reg_565_reg_n_77;
  wire mul_ln35_reg_565_reg_n_78;
  wire mul_ln35_reg_565_reg_n_79;
  wire mul_ln35_reg_565_reg_n_80;
  wire mul_ln35_reg_565_reg_n_81;
  wire mul_ln35_reg_565_reg_n_82;
  wire mul_ln35_reg_565_reg_n_83;
  wire mul_ln35_reg_565_reg_n_84;
  wire mul_ln35_reg_565_reg_n_85;
  wire mul_ln35_reg_565_reg_n_86;
  wire mul_ln35_reg_565_reg_n_87;
  wire mul_ln35_reg_565_reg_n_88;
  wire mul_ln35_reg_565_reg_n_89;
  wire mul_ln35_reg_565_reg_n_90;
  wire mul_ln35_reg_565_reg_n_91;
  wire mul_ln35_reg_565_reg_n_92;
  wire mul_ln35_reg_565_reg_n_93;
  wire mul_ln35_reg_565_reg_n_94;
  wire mul_ln35_reg_565_reg_n_95;
  wire mul_ln35_reg_565_reg_n_96;
  wire mul_ln35_reg_565_reg_n_97;
  wire mul_ln35_reg_565_reg_n_98;
  wire mul_ln35_reg_565_reg_n_99;
  wire [30:0]n32XferCnt_1_fu_443_p2;
  wire [30:0]n32XferCnt_fu_114;
  wire n32XferCnt_fu_1140;
  wire \n32XferCnt_fu_114_reg[16]_i_1_n_0 ;
  wire \n32XferCnt_fu_114_reg[16]_i_1_n_1 ;
  wire \n32XferCnt_fu_114_reg[16]_i_1_n_2 ;
  wire \n32XferCnt_fu_114_reg[16]_i_1_n_3 ;
  wire \n32XferCnt_fu_114_reg[16]_i_1_n_4 ;
  wire \n32XferCnt_fu_114_reg[16]_i_1_n_5 ;
  wire \n32XferCnt_fu_114_reg[16]_i_1_n_6 ;
  wire \n32XferCnt_fu_114_reg[16]_i_1_n_7 ;
  wire \n32XferCnt_fu_114_reg[24]_i_1_n_0 ;
  wire \n32XferCnt_fu_114_reg[24]_i_1_n_1 ;
  wire \n32XferCnt_fu_114_reg[24]_i_1_n_2 ;
  wire \n32XferCnt_fu_114_reg[24]_i_1_n_3 ;
  wire \n32XferCnt_fu_114_reg[24]_i_1_n_4 ;
  wire \n32XferCnt_fu_114_reg[24]_i_1_n_5 ;
  wire \n32XferCnt_fu_114_reg[24]_i_1_n_6 ;
  wire \n32XferCnt_fu_114_reg[24]_i_1_n_7 ;
  wire \n32XferCnt_fu_114_reg[30]_i_3_n_3 ;
  wire \n32XferCnt_fu_114_reg[30]_i_3_n_4 ;
  wire \n32XferCnt_fu_114_reg[30]_i_3_n_5 ;
  wire \n32XferCnt_fu_114_reg[30]_i_3_n_6 ;
  wire \n32XferCnt_fu_114_reg[30]_i_3_n_7 ;
  wire \n32XferCnt_fu_114_reg[8]_i_1_n_0 ;
  wire \n32XferCnt_fu_114_reg[8]_i_1_n_1 ;
  wire \n32XferCnt_fu_114_reg[8]_i_1_n_2 ;
  wire \n32XferCnt_fu_114_reg[8]_i_1_n_3 ;
  wire \n32XferCnt_fu_114_reg[8]_i_1_n_4 ;
  wire \n32XferCnt_fu_114_reg[8]_i_1_n_5 ;
  wire \n32XferCnt_fu_114_reg[8]_i_1_n_6 ;
  wire \n32XferCnt_fu_114_reg[8]_i_1_n_7 ;
  wire [30:0]n32XferCnt_load_reg_546;
  wire [31:0]pstrmInput_TDATA_int_regslice;
  wire pstrmInput_TDEST_int_regslice;
  wire pstrmInput_TID_int_regslice;
  wire pstrmInput_TLAST_int_regslice;
  wire pstrmInput_TREADY_int_regslice;
  wire pstrmInput_TUSER_int_regslice;
  wire pstrmInput_TVALID_int_regslice;
  wire pstrmOutput_TDATA__0_carry__0_i_10_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_11_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_12_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_13_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_14_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_15_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_16_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_1_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_2_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_3_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_4_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_5_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_6_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_7_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_8_n_0;
  wire pstrmOutput_TDATA__0_carry__0_i_9_n_0;
  wire pstrmOutput_TDATA__0_carry__0_n_0;
  wire pstrmOutput_TDATA__0_carry__0_n_1;
  wire pstrmOutput_TDATA__0_carry__0_n_10;
  wire pstrmOutput_TDATA__0_carry__0_n_11;
  wire pstrmOutput_TDATA__0_carry__0_n_12;
  wire pstrmOutput_TDATA__0_carry__0_n_13;
  wire pstrmOutput_TDATA__0_carry__0_n_14;
  wire pstrmOutput_TDATA__0_carry__0_n_15;
  wire pstrmOutput_TDATA__0_carry__0_n_2;
  wire pstrmOutput_TDATA__0_carry__0_n_3;
  wire pstrmOutput_TDATA__0_carry__0_n_4;
  wire pstrmOutput_TDATA__0_carry__0_n_5;
  wire pstrmOutput_TDATA__0_carry__0_n_6;
  wire pstrmOutput_TDATA__0_carry__0_n_7;
  wire pstrmOutput_TDATA__0_carry__0_n_8;
  wire pstrmOutput_TDATA__0_carry__0_n_9;
  wire pstrmOutput_TDATA__0_carry__1_i_8_n_0;
  wire pstrmOutput_TDATA__0_carry__1_n_0;
  wire pstrmOutput_TDATA__0_carry__1_n_1;
  wire pstrmOutput_TDATA__0_carry__1_n_10;
  wire pstrmOutput_TDATA__0_carry__1_n_11;
  wire pstrmOutput_TDATA__0_carry__1_n_12;
  wire pstrmOutput_TDATA__0_carry__1_n_13;
  wire pstrmOutput_TDATA__0_carry__1_n_14;
  wire pstrmOutput_TDATA__0_carry__1_n_15;
  wire pstrmOutput_TDATA__0_carry__1_n_2;
  wire pstrmOutput_TDATA__0_carry__1_n_3;
  wire pstrmOutput_TDATA__0_carry__1_n_4;
  wire pstrmOutput_TDATA__0_carry__1_n_5;
  wire pstrmOutput_TDATA__0_carry__1_n_6;
  wire pstrmOutput_TDATA__0_carry__1_n_7;
  wire pstrmOutput_TDATA__0_carry__1_n_8;
  wire pstrmOutput_TDATA__0_carry__1_n_9;
  wire pstrmOutput_TDATA__0_carry__2_n_1;
  wire pstrmOutput_TDATA__0_carry__2_n_10;
  wire pstrmOutput_TDATA__0_carry__2_n_11;
  wire pstrmOutput_TDATA__0_carry__2_n_12;
  wire pstrmOutput_TDATA__0_carry__2_n_13;
  wire pstrmOutput_TDATA__0_carry__2_n_14;
  wire pstrmOutput_TDATA__0_carry__2_n_15;
  wire pstrmOutput_TDATA__0_carry__2_n_2;
  wire pstrmOutput_TDATA__0_carry__2_n_3;
  wire pstrmOutput_TDATA__0_carry__2_n_4;
  wire pstrmOutput_TDATA__0_carry__2_n_5;
  wire pstrmOutput_TDATA__0_carry__2_n_6;
  wire pstrmOutput_TDATA__0_carry__2_n_7;
  wire pstrmOutput_TDATA__0_carry__2_n_8;
  wire pstrmOutput_TDATA__0_carry__2_n_9;
  wire pstrmOutput_TDATA__0_carry_i_10_n_0;
  wire pstrmOutput_TDATA__0_carry_i_11_n_0;
  wire pstrmOutput_TDATA__0_carry_i_12_n_0;
  wire pstrmOutput_TDATA__0_carry_i_13_n_0;
  wire pstrmOutput_TDATA__0_carry_i_14_n_0;
  wire pstrmOutput_TDATA__0_carry_i_15_n_0;
  wire pstrmOutput_TDATA__0_carry_i_1_n_0;
  wire pstrmOutput_TDATA__0_carry_i_2_n_0;
  wire pstrmOutput_TDATA__0_carry_i_3_n_0;
  wire pstrmOutput_TDATA__0_carry_i_4_n_0;
  wire pstrmOutput_TDATA__0_carry_i_5_n_0;
  wire pstrmOutput_TDATA__0_carry_i_6_n_0;
  wire pstrmOutput_TDATA__0_carry_i_7_n_0;
  wire pstrmOutput_TDATA__0_carry_i_8_n_0;
  wire pstrmOutput_TDATA__0_carry_i_9_n_0;
  wire pstrmOutput_TDATA__0_carry_n_0;
  wire pstrmOutput_TDATA__0_carry_n_1;
  wire pstrmOutput_TDATA__0_carry_n_10;
  wire pstrmOutput_TDATA__0_carry_n_11;
  wire pstrmOutput_TDATA__0_carry_n_12;
  wire pstrmOutput_TDATA__0_carry_n_13;
  wire pstrmOutput_TDATA__0_carry_n_14;
  wire pstrmOutput_TDATA__0_carry_n_15;
  wire pstrmOutput_TDATA__0_carry_n_2;
  wire pstrmOutput_TDATA__0_carry_n_3;
  wire pstrmOutput_TDATA__0_carry_n_4;
  wire pstrmOutput_TDATA__0_carry_n_5;
  wire pstrmOutput_TDATA__0_carry_n_6;
  wire pstrmOutput_TDATA__0_carry_n_7;
  wire pstrmOutput_TDATA__0_carry_n_8;
  wire pstrmOutput_TDATA__0_carry_n_9;
  wire pstrmOutput_TDATA__188_carry__0_i_10_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_11_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_12_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_13_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_14_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_15_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_16_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_1_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_2_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_3_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_4_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_5_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_6_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_7_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_8_n_0;
  wire pstrmOutput_TDATA__188_carry__0_i_9_n_0;
  wire pstrmOutput_TDATA__188_carry__0_n_0;
  wire pstrmOutput_TDATA__188_carry__0_n_1;
  wire pstrmOutput_TDATA__188_carry__0_n_2;
  wire pstrmOutput_TDATA__188_carry__0_n_3;
  wire pstrmOutput_TDATA__188_carry__0_n_4;
  wire pstrmOutput_TDATA__188_carry__0_n_5;
  wire pstrmOutput_TDATA__188_carry__0_n_6;
  wire pstrmOutput_TDATA__188_carry__0_n_7;
  wire pstrmOutput_TDATA__188_carry__1_i_10_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_11_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_12_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_13_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_14_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_15_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_16_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_1_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_2_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_3_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_4_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_5_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_6_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_7_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_8_n_0;
  wire pstrmOutput_TDATA__188_carry__1_i_9_n_0;
  wire pstrmOutput_TDATA__188_carry__1_n_0;
  wire pstrmOutput_TDATA__188_carry__1_n_1;
  wire pstrmOutput_TDATA__188_carry__1_n_2;
  wire pstrmOutput_TDATA__188_carry__1_n_3;
  wire pstrmOutput_TDATA__188_carry__1_n_4;
  wire pstrmOutput_TDATA__188_carry__1_n_5;
  wire pstrmOutput_TDATA__188_carry__1_n_6;
  wire pstrmOutput_TDATA__188_carry__1_n_7;
  wire pstrmOutput_TDATA__188_carry__2_i_10_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_11_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_12_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_13_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_14_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_15_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_1_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_2_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_3_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_4_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_5_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_6_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_7_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_8_n_0;
  wire pstrmOutput_TDATA__188_carry__2_i_9_n_0;
  wire pstrmOutput_TDATA__188_carry__2_n_1;
  wire pstrmOutput_TDATA__188_carry__2_n_2;
  wire pstrmOutput_TDATA__188_carry__2_n_3;
  wire pstrmOutput_TDATA__188_carry__2_n_4;
  wire pstrmOutput_TDATA__188_carry__2_n_5;
  wire pstrmOutput_TDATA__188_carry__2_n_6;
  wire pstrmOutput_TDATA__188_carry__2_n_7;
  wire pstrmOutput_TDATA__188_carry_i_10_n_0;
  wire pstrmOutput_TDATA__188_carry_i_11_n_0;
  wire pstrmOutput_TDATA__188_carry_i_12_n_0;
  wire pstrmOutput_TDATA__188_carry_i_13_n_0;
  wire pstrmOutput_TDATA__188_carry_i_14_n_0;
  wire pstrmOutput_TDATA__188_carry_i_15_n_0;
  wire pstrmOutput_TDATA__188_carry_i_1_n_0;
  wire pstrmOutput_TDATA__188_carry_i_2_n_0;
  wire pstrmOutput_TDATA__188_carry_i_3_n_0;
  wire pstrmOutput_TDATA__188_carry_i_4_n_0;
  wire pstrmOutput_TDATA__188_carry_i_5_n_0;
  wire pstrmOutput_TDATA__188_carry_i_6_n_0;
  wire pstrmOutput_TDATA__188_carry_i_7_n_0;
  wire pstrmOutput_TDATA__188_carry_i_8_n_0;
  wire pstrmOutput_TDATA__188_carry_i_9_n_0;
  wire pstrmOutput_TDATA__188_carry_n_0;
  wire pstrmOutput_TDATA__188_carry_n_1;
  wire pstrmOutput_TDATA__188_carry_n_2;
  wire pstrmOutput_TDATA__188_carry_n_3;
  wire pstrmOutput_TDATA__188_carry_n_4;
  wire pstrmOutput_TDATA__188_carry_n_5;
  wire pstrmOutput_TDATA__188_carry_n_6;
  wire pstrmOutput_TDATA__188_carry_n_7;
  wire pstrmOutput_TDATA__94_carry__0_n_0;
  wire pstrmOutput_TDATA__94_carry__0_n_1;
  wire pstrmOutput_TDATA__94_carry__0_n_10;
  wire pstrmOutput_TDATA__94_carry__0_n_11;
  wire pstrmOutput_TDATA__94_carry__0_n_12;
  wire pstrmOutput_TDATA__94_carry__0_n_13;
  wire pstrmOutput_TDATA__94_carry__0_n_14;
  wire pstrmOutput_TDATA__94_carry__0_n_15;
  wire pstrmOutput_TDATA__94_carry__0_n_2;
  wire pstrmOutput_TDATA__94_carry__0_n_3;
  wire pstrmOutput_TDATA__94_carry__0_n_4;
  wire pstrmOutput_TDATA__94_carry__0_n_5;
  wire pstrmOutput_TDATA__94_carry__0_n_6;
  wire pstrmOutput_TDATA__94_carry__0_n_7;
  wire pstrmOutput_TDATA__94_carry__0_n_8;
  wire pstrmOutput_TDATA__94_carry__0_n_9;
  wire pstrmOutput_TDATA__94_carry__1_n_0;
  wire pstrmOutput_TDATA__94_carry__1_n_1;
  wire pstrmOutput_TDATA__94_carry__1_n_10;
  wire pstrmOutput_TDATA__94_carry__1_n_11;
  wire pstrmOutput_TDATA__94_carry__1_n_12;
  wire pstrmOutput_TDATA__94_carry__1_n_13;
  wire pstrmOutput_TDATA__94_carry__1_n_14;
  wire pstrmOutput_TDATA__94_carry__1_n_15;
  wire pstrmOutput_TDATA__94_carry__1_n_2;
  wire pstrmOutput_TDATA__94_carry__1_n_3;
  wire pstrmOutput_TDATA__94_carry__1_n_4;
  wire pstrmOutput_TDATA__94_carry__1_n_5;
  wire pstrmOutput_TDATA__94_carry__1_n_6;
  wire pstrmOutput_TDATA__94_carry__1_n_7;
  wire pstrmOutput_TDATA__94_carry__1_n_8;
  wire pstrmOutput_TDATA__94_carry__1_n_9;
  wire pstrmOutput_TDATA__94_carry__2_n_1;
  wire pstrmOutput_TDATA__94_carry__2_n_10;
  wire pstrmOutput_TDATA__94_carry__2_n_11;
  wire pstrmOutput_TDATA__94_carry__2_n_12;
  wire pstrmOutput_TDATA__94_carry__2_n_13;
  wire pstrmOutput_TDATA__94_carry__2_n_14;
  wire pstrmOutput_TDATA__94_carry__2_n_15;
  wire pstrmOutput_TDATA__94_carry__2_n_2;
  wire pstrmOutput_TDATA__94_carry__2_n_3;
  wire pstrmOutput_TDATA__94_carry__2_n_4;
  wire pstrmOutput_TDATA__94_carry__2_n_5;
  wire pstrmOutput_TDATA__94_carry__2_n_6;
  wire pstrmOutput_TDATA__94_carry__2_n_7;
  wire pstrmOutput_TDATA__94_carry__2_n_8;
  wire pstrmOutput_TDATA__94_carry__2_n_9;
  wire pstrmOutput_TDATA__94_carry_n_0;
  wire pstrmOutput_TDATA__94_carry_n_1;
  wire pstrmOutput_TDATA__94_carry_n_10;
  wire pstrmOutput_TDATA__94_carry_n_11;
  wire pstrmOutput_TDATA__94_carry_n_12;
  wire pstrmOutput_TDATA__94_carry_n_13;
  wire pstrmOutput_TDATA__94_carry_n_14;
  wire pstrmOutput_TDATA__94_carry_n_15;
  wire pstrmOutput_TDATA__94_carry_n_2;
  wire pstrmOutput_TDATA__94_carry_n_3;
  wire pstrmOutput_TDATA__94_carry_n_4;
  wire pstrmOutput_TDATA__94_carry_n_5;
  wire pstrmOutput_TDATA__94_carry_n_6;
  wire pstrmOutput_TDATA__94_carry_n_7;
  wire pstrmOutput_TDATA__94_carry_n_8;
  wire pstrmOutput_TDATA__94_carry_n_9;
  wire pstrmOutput_TREADY_int_regslice;
  wire [31:0]q00;
  wire [3:0]\tmp_keep_V_reg_660_reg[3]_0 ;
  wire [3:0]\tmp_keep_V_reg_660_reg[3]_1 ;
  wire [3:0]\tmp_strb_V_reg_665_reg[3]_0 ;
  wire [3:0]\tmp_strb_V_reg_665_reg[3]_1 ;
  wire [7:7]NLW_add_ln35_2_fu_369_p2__0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_add_ln35_4_fu_422_p2_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_add_ln35_fu_311_p2_carry__2_CO_UNCONNECTED;
  wire [7:0]NLW_icmp_ln22_fu_279_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_icmp_ln22_fu_279_p2_carry__0_O_UNCONNECTED;
  wire NLW_mul_ln35_2_reg_585_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln35_2_reg_585_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln35_2_reg_585_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln35_2_reg_585_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln35_2_reg_585_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln35_2_reg_585_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln35_2_reg_585_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln35_2_reg_585_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln35_2_reg_585_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln35_2_reg_585_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln35_2_reg_585_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln35_3_reg_595_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln35_3_reg_595_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln35_3_reg_595_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln35_3_reg_595_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln35_3_reg_595_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln35_3_reg_595_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln35_3_reg_595_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln35_3_reg_595_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln35_3_reg_595_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln35_3_reg_595_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln35_3_reg_595_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln35_5_reg_615_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln35_5_reg_615_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln35_5_reg_615_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln35_5_reg_615_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln35_5_reg_615_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln35_5_reg_615_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln35_5_reg_615_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln35_5_reg_615_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln35_5_reg_615_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln35_5_reg_615_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln35_5_reg_615_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln35_6_reg_625_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln35_6_reg_625_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln35_6_reg_625_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln35_6_reg_625_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln35_6_reg_625_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln35_6_reg_625_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln35_6_reg_625_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln35_6_reg_625_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln35_6_reg_625_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln35_6_reg_625_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln35_6_reg_625_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln35_8_reg_645_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln35_8_reg_645_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln35_8_reg_645_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln35_8_reg_645_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln35_8_reg_645_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln35_8_reg_645_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln35_8_reg_645_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln35_8_reg_645_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln35_8_reg_645_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln35_8_reg_645_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln35_8_reg_645_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln35_9_reg_690_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln35_9_reg_690_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln35_9_reg_690_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln35_9_reg_690_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln35_9_reg_690_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln35_9_reg_690_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln35_9_reg_690_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln35_9_reg_690_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln35_9_reg_690_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln35_9_reg_690_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln35_9_reg_690_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln35_reg_565_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln35_reg_565_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln35_reg_565_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln35_reg_565_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln35_reg_565_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln35_reg_565_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln35_reg_565_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln35_reg_565_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln35_reg_565_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln35_reg_565_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln35_reg_565_reg_XOROUT_UNCONNECTED;
  wire [7:5]\NLW_n32XferCnt_fu_114_reg[30]_i_3_CO_UNCONNECTED ;
  wire [7:6]\NLW_n32XferCnt_fu_114_reg[30]_i_3_O_UNCONNECTED ;
  wire [7:7]NLW_pstrmOutput_TDATA__0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_pstrmOutput_TDATA__188_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_pstrmOutput_TDATA__94_carry__2_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    B_V_data_1_sel_wr_i_1__5
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(pstrmOutput_TREADY_int_regslice),
        .I2(\ap_CS_fsm_reg[3]_0 [1]),
        .I3(icmp_ln22_reg_556),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(B_V_data_1_sel_wr),
        .O(ap_enable_reg_pp0_iter1_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(pstrmOutput_TREADY_int_regslice),
        .I2(\ap_CS_fsm_reg[3]_0 [1]),
        .I3(icmp_ln22_reg_556),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \B_V_data_1_state[1]_i_3 
       (.I0(\ap_CS_fsm_reg[3]_0 [1]),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter0_reg_reg_0),
        .I3(pstrmInput_TVALID_int_regslice),
        .O(pstrmInput_TREADY_int_regslice));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_2_fu_369_p2__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln35_2_fu_369_p2__0_carry_n_0,add_ln35_2_fu_369_p2__0_carry_n_1,add_ln35_2_fu_369_p2__0_carry_n_2,add_ln35_2_fu_369_p2__0_carry_n_3,add_ln35_2_fu_369_p2__0_carry_n_4,add_ln35_2_fu_369_p2__0_carry_n_5,add_ln35_2_fu_369_p2__0_carry_n_6,add_ln35_2_fu_369_p2__0_carry_n_7}),
        .DI({mul_32s_32s_32_1_1_U5_n_21,mul_32s_32s_32_1_1_U5_n_22,mul_32s_32s_32_1_1_U5_n_23,mul_32s_32s_32_1_1_U5_n_24,mul_32s_32s_32_1_1_U5_n_25,mul_32s_32s_32_1_1_U5_n_26,mul_32s_32s_32_1_1_U5_n_27,1'b0}),
        .O(add_ln35_2_fu_369_p2[7:0]),
        .S({mul_32s_32s_32_1_1_U5_n_28,mul_32s_32s_32_1_1_U5_n_29,mul_32s_32s_32_1_1_U5_n_30,mul_32s_32s_32_1_1_U5_n_31,mul_32s_32s_32_1_1_U5_n_32,mul_32s_32s_32_1_1_U5_n_33,mul_32s_32s_32_1_1_U5_n_34,mul_32s_32s_32_1_1_U5_n_35}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_2_fu_369_p2__0_carry__0
       (.CI(add_ln35_2_fu_369_p2__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln35_2_fu_369_p2__0_carry__0_n_0,add_ln35_2_fu_369_p2__0_carry__0_n_1,add_ln35_2_fu_369_p2__0_carry__0_n_2,add_ln35_2_fu_369_p2__0_carry__0_n_3,add_ln35_2_fu_369_p2__0_carry__0_n_4,add_ln35_2_fu_369_p2__0_carry__0_n_5,add_ln35_2_fu_369_p2__0_carry__0_n_6,add_ln35_2_fu_369_p2__0_carry__0_n_7}),
        .DI({mul_32s_32s_32_1_1_U5_n_36,mul_32s_32s_32_1_1_U5_n_37,mul_32s_32s_32_1_1_U5_n_38,mul_32s_32s_32_1_1_U5_n_39,mul_32s_32s_32_1_1_U5_n_40,mul_32s_32s_32_1_1_U5_n_41,mul_32s_32s_32_1_1_U5_n_42,mul_32s_32s_32_1_1_U5_n_43}),
        .O(add_ln35_2_fu_369_p2[15:8]),
        .S({mul_32s_32s_32_1_1_U5_n_44,mul_32s_32s_32_1_1_U5_n_45,mul_32s_32s_32_1_1_U5_n_46,mul_32s_32s_32_1_1_U5_n_47,mul_32s_32s_32_1_1_U5_n_48,mul_32s_32s_32_1_1_U5_n_49,mul_32s_32s_32_1_1_U5_n_50,mul_32s_32s_32_1_1_U5_n_51}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_2_fu_369_p2__0_carry__1
       (.CI(add_ln35_2_fu_369_p2__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln35_2_fu_369_p2__0_carry__1_n_0,add_ln35_2_fu_369_p2__0_carry__1_n_1,add_ln35_2_fu_369_p2__0_carry__1_n_2,add_ln35_2_fu_369_p2__0_carry__1_n_3,add_ln35_2_fu_369_p2__0_carry__1_n_4,add_ln35_2_fu_369_p2__0_carry__1_n_5,add_ln35_2_fu_369_p2__0_carry__1_n_6,add_ln35_2_fu_369_p2__0_carry__1_n_7}),
        .DI({mul_32s_32s_32_1_1_U5_n_52,mul_32s_32s_32_1_1_U5_n_53,mul_32s_32s_32_1_1_U5_n_54,mul_32s_32s_32_1_1_U5_n_55,mul_32s_32s_32_1_1_U5_n_56,mul_32s_32s_32_1_1_U5_n_57,mul_32s_32s_32_1_1_U5_n_58,mul_32s_32s_32_1_1_U5_n_59}),
        .O(add_ln35_2_fu_369_p2[23:16]),
        .S({mul_32s_32s_32_1_1_U5_n_60,mul_32s_32s_32_1_1_U5_n_61,mul_32s_32s_32_1_1_U5_n_62,mul_32s_32s_32_1_1_U5_n_63,mul_32s_32s_32_1_1_U5_n_64,mul_32s_32s_32_1_1_U5_n_65,mul_32s_32s_32_1_1_U5_n_66,mul_32s_32s_32_1_1_U5_n_67}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_2_fu_369_p2__0_carry__2
       (.CI(add_ln35_2_fu_369_p2__0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln35_2_fu_369_p2__0_carry__2_CO_UNCONNECTED[7],add_ln35_2_fu_369_p2__0_carry__2_n_1,add_ln35_2_fu_369_p2__0_carry__2_n_2,add_ln35_2_fu_369_p2__0_carry__2_n_3,add_ln35_2_fu_369_p2__0_carry__2_n_4,add_ln35_2_fu_369_p2__0_carry__2_n_5,add_ln35_2_fu_369_p2__0_carry__2_n_6,add_ln35_2_fu_369_p2__0_carry__2_n_7}),
        .DI({1'b0,mul_32s_32s_32_1_1_U5_n_14,mul_32s_32s_32_1_1_U5_n_15,mul_32s_32s_32_1_1_U5_n_16,mul_32s_32s_32_1_1_U5_n_17,mul_32s_32s_32_1_1_U5_n_18,mul_32s_32s_32_1_1_U5_n_19,mul_32s_32s_32_1_1_U5_n_20}),
        .O(add_ln35_2_fu_369_p2[31:24]),
        .S({mul_32s_32s_32_1_1_U4_n_82,mul_32s_32s_32_1_1_U5_n_7,mul_32s_32s_32_1_1_U5_n_8,mul_32s_32s_32_1_1_U5_n_9,mul_32s_32s_32_1_1_U5_n_10,mul_32s_32s_32_1_1_U5_n_11,mul_32s_32s_32_1_1_U5_n_12,mul_32s_32s_32_1_1_U5_n_13}));
  LUT2 #(
    .INIT(4'h8)) 
    \add_ln35_2_reg_605[31]_i_1 
       (.I0(icmp_ln22_reg_556),
        .I1(ap_CS_fsm_pp0_stage5),
        .O(add_ln35_2_reg_6050));
  FDRE \add_ln35_2_reg_605_reg[0] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[0]),
        .Q(add_ln35_2_reg_605[0]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[10] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[10]),
        .Q(add_ln35_2_reg_605[10]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[11] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[11]),
        .Q(add_ln35_2_reg_605[11]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[12] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[12]),
        .Q(add_ln35_2_reg_605[12]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[13] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[13]),
        .Q(add_ln35_2_reg_605[13]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[14] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[14]),
        .Q(add_ln35_2_reg_605[14]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[15] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[15]),
        .Q(add_ln35_2_reg_605[15]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[16] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[16]),
        .Q(add_ln35_2_reg_605[16]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[17] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[17]),
        .Q(add_ln35_2_reg_605[17]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[18] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[18]),
        .Q(add_ln35_2_reg_605[18]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[19] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[19]),
        .Q(add_ln35_2_reg_605[19]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[1] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[1]),
        .Q(add_ln35_2_reg_605[1]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[20] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[20]),
        .Q(add_ln35_2_reg_605[20]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[21] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[21]),
        .Q(add_ln35_2_reg_605[21]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[22] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[22]),
        .Q(add_ln35_2_reg_605[22]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[23] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[23]),
        .Q(add_ln35_2_reg_605[23]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[24] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[24]),
        .Q(add_ln35_2_reg_605[24]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[25] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[25]),
        .Q(add_ln35_2_reg_605[25]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[26] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[26]),
        .Q(add_ln35_2_reg_605[26]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[27] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[27]),
        .Q(add_ln35_2_reg_605[27]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[28] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[28]),
        .Q(add_ln35_2_reg_605[28]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[29] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[29]),
        .Q(add_ln35_2_reg_605[29]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[2] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[2]),
        .Q(add_ln35_2_reg_605[2]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[30] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[30]),
        .Q(add_ln35_2_reg_605[30]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[31] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[31]),
        .Q(add_ln35_2_reg_605[31]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[3] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[3]),
        .Q(add_ln35_2_reg_605[3]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[4] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[4]),
        .Q(add_ln35_2_reg_605[4]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[5] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[5]),
        .Q(add_ln35_2_reg_605[5]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[6] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[6]),
        .Q(add_ln35_2_reg_605[6]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[7] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[7]),
        .Q(add_ln35_2_reg_605[7]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[8] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[8]),
        .Q(add_ln35_2_reg_605[8]),
        .R(1'b0));
  FDRE \add_ln35_2_reg_605_reg[9] 
       (.C(ap_clk),
        .CE(add_ln35_2_reg_6050),
        .D(add_ln35_2_fu_369_p2[9]),
        .Q(add_ln35_2_reg_605[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_4_fu_422_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln35_4_fu_422_p2_carry_n_0,add_ln35_4_fu_422_p2_carry_n_1,add_ln35_4_fu_422_p2_carry_n_2,add_ln35_4_fu_422_p2_carry_n_3,add_ln35_4_fu_422_p2_carry_n_4,add_ln35_4_fu_422_p2_carry_n_5,add_ln35_4_fu_422_p2_carry_n_6,add_ln35_4_fu_422_p2_carry_n_7}),
        .DI({\mul_ln35_6_reg_625_reg[7]__0_n_0 ,\mul_ln35_6_reg_625_reg[6]__0_n_0 ,\mul_ln35_6_reg_625_reg[5]__0_n_0 ,\mul_ln35_6_reg_625_reg[4]__0_n_0 ,\mul_ln35_6_reg_625_reg[3]__0_n_0 ,\mul_ln35_6_reg_625_reg[2]__0_n_0 ,\mul_ln35_6_reg_625_reg[1]__0_n_0 ,\mul_ln35_6_reg_625_reg[0]__0_n_0 }),
        .O(add_ln35_4_fu_422_p2[7:0]),
        .S({mul_32s_32s_32_1_1_U8_n_17,mul_32s_32s_32_1_1_U8_n_18,mul_32s_32s_32_1_1_U8_n_19,mul_32s_32s_32_1_1_U8_n_20,mul_32s_32s_32_1_1_U8_n_21,mul_32s_32s_32_1_1_U8_n_22,mul_32s_32s_32_1_1_U8_n_23,mul_32s_32s_32_1_1_U8_n_24}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_4_fu_422_p2_carry__0
       (.CI(add_ln35_4_fu_422_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln35_4_fu_422_p2_carry__0_n_0,add_ln35_4_fu_422_p2_carry__0_n_1,add_ln35_4_fu_422_p2_carry__0_n_2,add_ln35_4_fu_422_p2_carry__0_n_3,add_ln35_4_fu_422_p2_carry__0_n_4,add_ln35_4_fu_422_p2_carry__0_n_5,add_ln35_4_fu_422_p2_carry__0_n_6,add_ln35_4_fu_422_p2_carry__0_n_7}),
        .DI({\mul_ln35_6_reg_625_reg[15]__0_n_0 ,\mul_ln35_6_reg_625_reg[14]__0_n_0 ,\mul_ln35_6_reg_625_reg[13]__0_n_0 ,\mul_ln35_6_reg_625_reg[12]__0_n_0 ,\mul_ln35_6_reg_625_reg[11]__0_n_0 ,\mul_ln35_6_reg_625_reg[10]__0_n_0 ,\mul_ln35_6_reg_625_reg[9]__0_n_0 ,\mul_ln35_6_reg_625_reg[8]__0_n_0 }),
        .O(add_ln35_4_fu_422_p2[15:8]),
        .S({mul_32s_32s_32_1_1_U8_n_25,mul_32s_32s_32_1_1_U8_n_26,mul_32s_32s_32_1_1_U8_n_27,mul_32s_32s_32_1_1_U8_n_28,mul_32s_32s_32_1_1_U8_n_29,mul_32s_32s_32_1_1_U8_n_30,mul_32s_32s_32_1_1_U8_n_31,mul_32s_32s_32_1_1_U8_n_32}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_4_fu_422_p2_carry__1
       (.CI(add_ln35_4_fu_422_p2_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln35_4_fu_422_p2_carry__1_n_0,add_ln35_4_fu_422_p2_carry__1_n_1,add_ln35_4_fu_422_p2_carry__1_n_2,add_ln35_4_fu_422_p2_carry__1_n_3,add_ln35_4_fu_422_p2_carry__1_n_4,add_ln35_4_fu_422_p2_carry__1_n_5,add_ln35_4_fu_422_p2_carry__1_n_6,add_ln35_4_fu_422_p2_carry__1_n_7}),
        .DI(mul_ln35_6_reg_625_reg__1[23:16]),
        .O(add_ln35_4_fu_422_p2[23:16]),
        .S({mul_32s_32s_32_1_1_U7_n_82,mul_32s_32s_32_1_1_U7_n_83,mul_32s_32s_32_1_1_U7_n_84,mul_32s_32s_32_1_1_U7_n_85,mul_32s_32s_32_1_1_U7_n_86,mul_32s_32s_32_1_1_U7_n_87,mul_32s_32s_32_1_1_U7_n_88,mul_32s_32s_32_1_1_U7_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_4_fu_422_p2_carry__2
       (.CI(add_ln35_4_fu_422_p2_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln35_4_fu_422_p2_carry__2_CO_UNCONNECTED[7],add_ln35_4_fu_422_p2_carry__2_n_1,add_ln35_4_fu_422_p2_carry__2_n_2,add_ln35_4_fu_422_p2_carry__2_n_3,add_ln35_4_fu_422_p2_carry__2_n_4,add_ln35_4_fu_422_p2_carry__2_n_5,add_ln35_4_fu_422_p2_carry__2_n_6,add_ln35_4_fu_422_p2_carry__2_n_7}),
        .DI({1'b0,mul_ln35_6_reg_625_reg__1[30:24]}),
        .O(add_ln35_4_fu_422_p2[31:24]),
        .S({mul_32s_32s_32_1_1_U7_n_90,mul_32s_32s_32_1_1_U7_n_91,mul_32s_32s_32_1_1_U7_n_92,mul_32s_32s_32_1_1_U7_n_93,mul_32s_32s_32_1_1_U7_n_94,mul_32s_32s_32_1_1_U7_n_95,mul_32s_32s_32_1_1_U7_n_96,mul_32s_32s_32_1_1_U7_n_97}));
  LUT2 #(
    .INIT(4'h8)) 
    \add_ln35_4_reg_635[31]_i_1 
       (.I0(icmp_ln22_reg_556),
        .I1(ap_CS_fsm_pp0_stage8),
        .O(add_ln35_4_reg_6350));
  FDRE \add_ln35_4_reg_635_reg[0] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[0]),
        .Q(add_ln35_4_reg_635[0]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[10] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[10]),
        .Q(add_ln35_4_reg_635[10]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[11] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[11]),
        .Q(add_ln35_4_reg_635[11]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[12] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[12]),
        .Q(add_ln35_4_reg_635[12]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[13] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[13]),
        .Q(add_ln35_4_reg_635[13]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[14] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[14]),
        .Q(add_ln35_4_reg_635[14]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[15] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[15]),
        .Q(add_ln35_4_reg_635[15]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[16] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[16]),
        .Q(add_ln35_4_reg_635[16]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[17] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[17]),
        .Q(add_ln35_4_reg_635[17]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[18] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[18]),
        .Q(add_ln35_4_reg_635[18]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[19] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[19]),
        .Q(add_ln35_4_reg_635[19]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[1] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[1]),
        .Q(add_ln35_4_reg_635[1]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[20] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[20]),
        .Q(add_ln35_4_reg_635[20]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[21] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[21]),
        .Q(add_ln35_4_reg_635[21]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[22] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[22]),
        .Q(add_ln35_4_reg_635[22]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[23] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[23]),
        .Q(add_ln35_4_reg_635[23]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[24] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[24]),
        .Q(add_ln35_4_reg_635[24]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[25] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[25]),
        .Q(add_ln35_4_reg_635[25]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[26] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[26]),
        .Q(add_ln35_4_reg_635[26]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[27] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[27]),
        .Q(add_ln35_4_reg_635[27]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[28] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[28]),
        .Q(add_ln35_4_reg_635[28]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[29] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[29]),
        .Q(add_ln35_4_reg_635[29]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[2] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[2]),
        .Q(add_ln35_4_reg_635[2]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[30] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[30]),
        .Q(add_ln35_4_reg_635[30]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[31] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[31]),
        .Q(add_ln35_4_reg_635[31]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[3] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[3]),
        .Q(add_ln35_4_reg_635[3]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[4] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[4]),
        .Q(add_ln35_4_reg_635[4]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[5] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[5]),
        .Q(add_ln35_4_reg_635[5]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[6] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[6]),
        .Q(add_ln35_4_reg_635[6]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[7] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[7]),
        .Q(add_ln35_4_reg_635[7]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[8] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[8]),
        .Q(add_ln35_4_reg_635[8]),
        .R(1'b0));
  FDRE \add_ln35_4_reg_635_reg[9] 
       (.C(ap_clk),
        .CE(add_ln35_4_reg_6350),
        .D(add_ln35_4_fu_422_p2[9]),
        .Q(add_ln35_4_reg_635[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_fu_311_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln35_fu_311_p2_carry_n_0,add_ln35_fu_311_p2_carry_n_1,add_ln35_fu_311_p2_carry_n_2,add_ln35_fu_311_p2_carry_n_3,add_ln35_fu_311_p2_carry_n_4,add_ln35_fu_311_p2_carry_n_5,add_ln35_fu_311_p2_carry_n_6,add_ln35_fu_311_p2_carry_n_7}),
        .DI({mul_32s_32s_32_1_1_U2_n_10,mul_32s_32s_32_1_1_U2_n_11,mul_32s_32s_32_1_1_U2_n_12,mul_32s_32s_32_1_1_U2_n_13,mul_32s_32s_32_1_1_U2_n_14,mul_32s_32s_32_1_1_U2_n_15,mul_32s_32s_32_1_1_U2_n_16,mul_32s_32s_32_1_1_U2_n_17}),
        .O(add_ln35_fu_311_p2[7:0]),
        .S({mul_32s_32s_32_1_1_U2_n_33,mul_32s_32s_32_1_1_U2_n_34,mul_32s_32s_32_1_1_U2_n_35,mul_32s_32s_32_1_1_U2_n_36,mul_32s_32s_32_1_1_U2_n_37,mul_32s_32s_32_1_1_U2_n_38,mul_32s_32s_32_1_1_U2_n_39,mul_32s_32s_32_1_1_U2_n_40}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_fu_311_p2_carry__0
       (.CI(add_ln35_fu_311_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln35_fu_311_p2_carry__0_n_0,add_ln35_fu_311_p2_carry__0_n_1,add_ln35_fu_311_p2_carry__0_n_2,add_ln35_fu_311_p2_carry__0_n_3,add_ln35_fu_311_p2_carry__0_n_4,add_ln35_fu_311_p2_carry__0_n_5,add_ln35_fu_311_p2_carry__0_n_6,add_ln35_fu_311_p2_carry__0_n_7}),
        .DI({mul_32s_32s_32_1_1_U2_n_2,mul_32s_32s_32_1_1_U2_n_3,mul_32s_32s_32_1_1_U2_n_4,mul_32s_32s_32_1_1_U2_n_5,mul_32s_32s_32_1_1_U2_n_6,mul_32s_32s_32_1_1_U2_n_7,mul_32s_32s_32_1_1_U2_n_8,mul_32s_32s_32_1_1_U2_n_9}),
        .O(add_ln35_fu_311_p2[15:8]),
        .S({mul_32s_32s_32_1_1_U2_n_41,mul_32s_32s_32_1_1_U2_n_42,mul_32s_32s_32_1_1_U2_n_43,mul_32s_32s_32_1_1_U2_n_44,mul_32s_32s_32_1_1_U2_n_45,mul_32s_32s_32_1_1_U2_n_46,mul_32s_32s_32_1_1_U2_n_47,mul_32s_32s_32_1_1_U2_n_48}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_fu_311_p2_carry__1
       (.CI(add_ln35_fu_311_p2_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln35_fu_311_p2_carry__1_n_0,add_ln35_fu_311_p2_carry__1_n_1,add_ln35_fu_311_p2_carry__1_n_2,add_ln35_fu_311_p2_carry__1_n_3,add_ln35_fu_311_p2_carry__1_n_4,add_ln35_fu_311_p2_carry__1_n_5,add_ln35_fu_311_p2_carry__1_n_6,add_ln35_fu_311_p2_carry__1_n_7}),
        .DI(dout__3_0[23:16]),
        .O(add_ln35_fu_311_p2[23:16]),
        .S({mul_32s_32s_32_1_1_U2_n_49,mul_32s_32s_32_1_1_U2_n_50,mul_32s_32s_32_1_1_U2_n_51,mul_32s_32s_32_1_1_U2_n_52,mul_32s_32s_32_1_1_U2_n_53,mul_32s_32s_32_1_1_U2_n_54,mul_32s_32s_32_1_1_U2_n_55,mul_32s_32s_32_1_1_U2_n_56}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_fu_311_p2_carry__2
       (.CI(add_ln35_fu_311_p2_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln35_fu_311_p2_carry__2_CO_UNCONNECTED[7],add_ln35_fu_311_p2_carry__2_n_1,add_ln35_fu_311_p2_carry__2_n_2,add_ln35_fu_311_p2_carry__2_n_3,add_ln35_fu_311_p2_carry__2_n_4,add_ln35_fu_311_p2_carry__2_n_5,add_ln35_fu_311_p2_carry__2_n_6,add_ln35_fu_311_p2_carry__2_n_7}),
        .DI({1'b0,dout__3_0[30:24]}),
        .O(add_ln35_fu_311_p2[31:24]),
        .S({mul_32s_32s_32_1_1_U2_n_57,mul_32s_32s_32_1_1_U2_n_58,mul_32s_32s_32_1_1_U2_n_59,mul_32s_32s_32_1_1_U2_n_60,mul_32s_32s_32_1_1_U2_n_61,mul_32s_32s_32_1_1_U2_n_62,mul_32s_32s_32_1_1_U2_n_63,mul_32s_32s_32_1_1_U2_n_64}));
  LUT2 #(
    .INIT(4'h8)) 
    \add_ln35_reg_575[31]_i_1 
       (.I0(icmp_ln22_reg_556),
        .I1(ap_CS_fsm_pp0_stage2),
        .O(add_ln35_reg_5750));
  FDRE \add_ln35_reg_575_reg[0] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[0]),
        .Q(add_ln35_reg_575[0]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[10] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[10]),
        .Q(add_ln35_reg_575[10]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[11] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[11]),
        .Q(add_ln35_reg_575[11]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[12] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[12]),
        .Q(add_ln35_reg_575[12]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[13] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[13]),
        .Q(add_ln35_reg_575[13]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[14] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[14]),
        .Q(add_ln35_reg_575[14]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[15] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[15]),
        .Q(add_ln35_reg_575[15]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[16] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[16]),
        .Q(add_ln35_reg_575[16]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[17] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[17]),
        .Q(add_ln35_reg_575[17]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[18] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[18]),
        .Q(add_ln35_reg_575[18]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[19] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[19]),
        .Q(add_ln35_reg_575[19]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[1] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[1]),
        .Q(add_ln35_reg_575[1]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[20] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[20]),
        .Q(add_ln35_reg_575[20]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[21] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[21]),
        .Q(add_ln35_reg_575[21]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[22] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[22]),
        .Q(add_ln35_reg_575[22]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[23] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[23]),
        .Q(add_ln35_reg_575[23]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[24] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[24]),
        .Q(add_ln35_reg_575[24]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[25] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[25]),
        .Q(add_ln35_reg_575[25]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[26] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[26]),
        .Q(add_ln35_reg_575[26]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[27] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[27]),
        .Q(add_ln35_reg_575[27]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[28] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[28]),
        .Q(add_ln35_reg_575[28]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[29] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[29]),
        .Q(add_ln35_reg_575[29]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[2] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[2]),
        .Q(add_ln35_reg_575[2]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[30] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[30]),
        .Q(add_ln35_reg_575[30]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[31] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[31]),
        .Q(add_ln35_reg_575[31]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[3] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[3]),
        .Q(add_ln35_reg_575[3]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[4] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[4]),
        .Q(add_ln35_reg_575[4]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[5] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[5]),
        .Q(add_ln35_reg_575[5]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[6] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[6]),
        .Q(add_ln35_reg_575[6]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[7] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[7]),
        .Q(add_ln35_reg_575[7]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[8] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[8]),
        .Q(add_ln35_reg_575[8]),
        .R(1'b0));
  FDRE \add_ln35_reg_575_reg[9] 
       (.C(ap_clk),
        .CE(add_ln35_reg_5750),
        .D(add_ln35_fu_311_p2[9]),
        .Q(add_ln35_reg_575[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[0] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[0]),
        .Q(an32ShiftReg_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[10] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[10]),
        .Q(an32ShiftReg_0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[11] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[11]),
        .Q(an32ShiftReg_0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[12] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[12]),
        .Q(an32ShiftReg_0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[13] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[13]),
        .Q(an32ShiftReg_0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[14] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[14]),
        .Q(an32ShiftReg_0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[15] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[15]),
        .Q(an32ShiftReg_0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[16] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[16]),
        .Q(an32ShiftReg_0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[17] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[17]),
        .Q(an32ShiftReg_0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[18] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[18]),
        .Q(an32ShiftReg_0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[19] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[19]),
        .Q(an32ShiftReg_0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[1] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[1]),
        .Q(an32ShiftReg_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[20] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[20]),
        .Q(an32ShiftReg_0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[21] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[21]),
        .Q(an32ShiftReg_0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[22] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[22]),
        .Q(an32ShiftReg_0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[23] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[23]),
        .Q(an32ShiftReg_0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[24] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[24]),
        .Q(an32ShiftReg_0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[25] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[25]),
        .Q(an32ShiftReg_0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[26] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[26]),
        .Q(an32ShiftReg_0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[27] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[27]),
        .Q(an32ShiftReg_0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[28] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[28]),
        .Q(an32ShiftReg_0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[29] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[29]),
        .Q(an32ShiftReg_0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[2] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[2]),
        .Q(an32ShiftReg_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[30] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[30]),
        .Q(an32ShiftReg_0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[31] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[31]),
        .Q(an32ShiftReg_0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[3] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[3]),
        .Q(an32ShiftReg_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[4] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[4]),
        .Q(an32ShiftReg_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[5] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[5]),
        .Q(an32ShiftReg_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[6] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[6]),
        .Q(an32ShiftReg_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[7] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[7]),
        .Q(an32ShiftReg_0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[8] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[8]),
        .Q(an32ShiftReg_0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_0_reg[9] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(pstrmInput_TDATA_int_regslice[9]),
        .Q(an32ShiftReg_0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[0] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[0]),
        .Q(an32ShiftReg_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[10] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[10]),
        .Q(an32ShiftReg_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[11] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[11]),
        .Q(an32ShiftReg_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[12] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[12]),
        .Q(an32ShiftReg_1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[13] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[13]),
        .Q(an32ShiftReg_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[14] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[14]),
        .Q(an32ShiftReg_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[15] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[15]),
        .Q(an32ShiftReg_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[16] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[16]),
        .Q(an32ShiftReg_1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[17] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[17]),
        .Q(an32ShiftReg_1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[18] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[18]),
        .Q(an32ShiftReg_1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[19] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[19]),
        .Q(an32ShiftReg_1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[1] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[1]),
        .Q(an32ShiftReg_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[20] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[20]),
        .Q(an32ShiftReg_1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[21] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[21]),
        .Q(an32ShiftReg_1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[22] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[22]),
        .Q(an32ShiftReg_1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[23] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[23]),
        .Q(an32ShiftReg_1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[24] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[24]),
        .Q(an32ShiftReg_1[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[25] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[25]),
        .Q(an32ShiftReg_1[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[26] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[26]),
        .Q(an32ShiftReg_1[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[27] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[27]),
        .Q(an32ShiftReg_1[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[28] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[28]),
        .Q(an32ShiftReg_1[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[29] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[29]),
        .Q(an32ShiftReg_1[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[2] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[2]),
        .Q(an32ShiftReg_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[30] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[30]),
        .Q(an32ShiftReg_1[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[31] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[31]),
        .Q(an32ShiftReg_1[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[3] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[3]),
        .Q(an32ShiftReg_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[4] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[4]),
        .Q(an32ShiftReg_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[5] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[5]),
        .Q(an32ShiftReg_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[6] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[6]),
        .Q(an32ShiftReg_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[7] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[7]),
        .Q(an32ShiftReg_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[8] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[8]),
        .Q(an32ShiftReg_1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_1_reg[9] 
       (.C(ap_clk),
        .CE(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D(an32ShiftReg_0[9]),
        .Q(an32ShiftReg_1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[0] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[0]),
        .Q(an32ShiftReg_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[10] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[10]),
        .Q(an32ShiftReg_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[11] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[11]),
        .Q(an32ShiftReg_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[12] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[12]),
        .Q(an32ShiftReg_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[13] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[13]),
        .Q(an32ShiftReg_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[14] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[14]),
        .Q(an32ShiftReg_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[15] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[15]),
        .Q(an32ShiftReg_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[16] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[16]),
        .Q(an32ShiftReg_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[17] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[17]),
        .Q(an32ShiftReg_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[18] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[18]),
        .Q(an32ShiftReg_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[19] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[19]),
        .Q(an32ShiftReg_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[1] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[1]),
        .Q(an32ShiftReg_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[20] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[20]),
        .Q(an32ShiftReg_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[21] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[21]),
        .Q(an32ShiftReg_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[22] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[22]),
        .Q(an32ShiftReg_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[23] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[23]),
        .Q(an32ShiftReg_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[24] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[24]),
        .Q(an32ShiftReg_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[25] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[25]),
        .Q(an32ShiftReg_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[26] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[26]),
        .Q(an32ShiftReg_2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[27] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[27]),
        .Q(an32ShiftReg_2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[28] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[28]),
        .Q(an32ShiftReg_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[29] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[29]),
        .Q(an32ShiftReg_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[2] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[2]),
        .Q(an32ShiftReg_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[30] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[30]),
        .Q(an32ShiftReg_2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[31] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[31]),
        .Q(an32ShiftReg_2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[3] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[3]),
        .Q(an32ShiftReg_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[4] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[4]),
        .Q(an32ShiftReg_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[5] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[5]),
        .Q(an32ShiftReg_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[6] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[6]),
        .Q(an32ShiftReg_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[7] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[7]),
        .Q(an32ShiftReg_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[8] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[8]),
        .Q(an32ShiftReg_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_2_reg[9] 
       (.C(ap_clk),
        .CE(an32ShiftReg_20),
        .D(an32ShiftReg_1[9]),
        .Q(an32ShiftReg_2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[0] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[0]),
        .Q(an32ShiftReg_3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[10] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[10]),
        .Q(an32ShiftReg_3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[11] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[11]),
        .Q(an32ShiftReg_3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[12] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[12]),
        .Q(an32ShiftReg_3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[13] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[13]),
        .Q(an32ShiftReg_3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[14] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[14]),
        .Q(an32ShiftReg_3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[15] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[15]),
        .Q(an32ShiftReg_3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[16] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[16]),
        .Q(an32ShiftReg_3[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[17] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[17]),
        .Q(an32ShiftReg_3[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[18] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[18]),
        .Q(an32ShiftReg_3[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[19] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[19]),
        .Q(an32ShiftReg_3[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[1] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[1]),
        .Q(an32ShiftReg_3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[20] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[20]),
        .Q(an32ShiftReg_3[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[21] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[21]),
        .Q(an32ShiftReg_3[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[22] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[22]),
        .Q(an32ShiftReg_3[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[23] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[23]),
        .Q(an32ShiftReg_3[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[24] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[24]),
        .Q(an32ShiftReg_3[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[25] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[25]),
        .Q(an32ShiftReg_3[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[26] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[26]),
        .Q(an32ShiftReg_3[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[27] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[27]),
        .Q(an32ShiftReg_3[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[28] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[28]),
        .Q(an32ShiftReg_3[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[29] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[29]),
        .Q(an32ShiftReg_3[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[2] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[2]),
        .Q(an32ShiftReg_3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[30] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[30]),
        .Q(an32ShiftReg_3[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[31] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[31]),
        .Q(an32ShiftReg_3[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[3] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[3]),
        .Q(an32ShiftReg_3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[4] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[4]),
        .Q(an32ShiftReg_3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[5] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[5]),
        .Q(an32ShiftReg_3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[6] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[6]),
        .Q(an32ShiftReg_3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[7] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[7]),
        .Q(an32ShiftReg_3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[8] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[8]),
        .Q(an32ShiftReg_3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_3_reg[9] 
       (.C(ap_clk),
        .CE(an32ShiftReg_30),
        .D(an32ShiftReg_2[9]),
        .Q(an32ShiftReg_3[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[0] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[0]),
        .Q(an32ShiftReg_4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[10] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[10]),
        .Q(an32ShiftReg_4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[11] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[11]),
        .Q(an32ShiftReg_4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[12] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[12]),
        .Q(an32ShiftReg_4[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[13] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[13]),
        .Q(an32ShiftReg_4[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[14] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[14]),
        .Q(an32ShiftReg_4[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[15] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[15]),
        .Q(an32ShiftReg_4[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[16] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[16]),
        .Q(an32ShiftReg_4[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[17] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[17]),
        .Q(an32ShiftReg_4[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[18] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[18]),
        .Q(an32ShiftReg_4[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[19] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[19]),
        .Q(an32ShiftReg_4[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[1] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[1]),
        .Q(an32ShiftReg_4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[20] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[20]),
        .Q(an32ShiftReg_4[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[21] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[21]),
        .Q(an32ShiftReg_4[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[22] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[22]),
        .Q(an32ShiftReg_4[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[23] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[23]),
        .Q(an32ShiftReg_4[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[24] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[24]),
        .Q(an32ShiftReg_4[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[25] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[25]),
        .Q(an32ShiftReg_4[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[26] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[26]),
        .Q(an32ShiftReg_4[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[27] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[27]),
        .Q(an32ShiftReg_4[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[28] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[28]),
        .Q(an32ShiftReg_4[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[29] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[29]),
        .Q(an32ShiftReg_4[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[2] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[2]),
        .Q(an32ShiftReg_4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[30] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[30]),
        .Q(an32ShiftReg_4[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[31] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[31]),
        .Q(an32ShiftReg_4[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[3] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[3]),
        .Q(an32ShiftReg_4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[4] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[4]),
        .Q(an32ShiftReg_4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[5] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[5]),
        .Q(an32ShiftReg_4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[6] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[6]),
        .Q(an32ShiftReg_4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[7] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[7]),
        .Q(an32ShiftReg_4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[8] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[8]),
        .Q(an32ShiftReg_4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_4_reg[9] 
       (.C(ap_clk),
        .CE(an32ShiftReg_40),
        .D(an32ShiftReg_3[9]),
        .Q(an32ShiftReg_4[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[0] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[0]),
        .Q(an32ShiftReg_5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[10] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[10]),
        .Q(an32ShiftReg_5[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[11] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[11]),
        .Q(an32ShiftReg_5[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[12] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[12]),
        .Q(an32ShiftReg_5[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[13] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[13]),
        .Q(an32ShiftReg_5[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[14] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[14]),
        .Q(an32ShiftReg_5[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[15] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[15]),
        .Q(an32ShiftReg_5[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[16] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[16]),
        .Q(an32ShiftReg_5[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[17] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[17]),
        .Q(an32ShiftReg_5[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[18] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[18]),
        .Q(an32ShiftReg_5[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[19] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[19]),
        .Q(an32ShiftReg_5[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[1] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[1]),
        .Q(an32ShiftReg_5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[20] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[20]),
        .Q(an32ShiftReg_5[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[21] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[21]),
        .Q(an32ShiftReg_5[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[22] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[22]),
        .Q(an32ShiftReg_5[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[23] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[23]),
        .Q(an32ShiftReg_5[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[24] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[24]),
        .Q(an32ShiftReg_5[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[25] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[25]),
        .Q(an32ShiftReg_5[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[26] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[26]),
        .Q(an32ShiftReg_5[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[27] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[27]),
        .Q(an32ShiftReg_5[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[28] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[28]),
        .Q(an32ShiftReg_5[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[29] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[29]),
        .Q(an32ShiftReg_5[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[2] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[2]),
        .Q(an32ShiftReg_5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[30] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[30]),
        .Q(an32ShiftReg_5[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[31] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[31]),
        .Q(an32ShiftReg_5[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[3] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[3]),
        .Q(an32ShiftReg_5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[4] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[4]),
        .Q(an32ShiftReg_5[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[5] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[5]),
        .Q(an32ShiftReg_5[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[6] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[6]),
        .Q(an32ShiftReg_5[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[7] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[7]),
        .Q(an32ShiftReg_5[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[8] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[8]),
        .Q(an32ShiftReg_5[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_5_reg[9] 
       (.C(ap_clk),
        .CE(an32ShiftReg_50),
        .D(an32ShiftReg_4[9]),
        .Q(an32ShiftReg_5[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[0] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[0]),
        .Q(an32ShiftReg_6[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[10] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[10]),
        .Q(an32ShiftReg_6[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[11] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[11]),
        .Q(an32ShiftReg_6[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[12] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[12]),
        .Q(an32ShiftReg_6[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[13] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[13]),
        .Q(an32ShiftReg_6[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[14] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[14]),
        .Q(an32ShiftReg_6[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[15] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[15]),
        .Q(an32ShiftReg_6[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[16] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[16]),
        .Q(an32ShiftReg_6[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[17] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[17]),
        .Q(an32ShiftReg_6[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[18] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[18]),
        .Q(an32ShiftReg_6[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[19] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[19]),
        .Q(an32ShiftReg_6[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[1] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[1]),
        .Q(an32ShiftReg_6[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[20] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[20]),
        .Q(an32ShiftReg_6[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[21] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[21]),
        .Q(an32ShiftReg_6[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[22] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[22]),
        .Q(an32ShiftReg_6[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[23] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[23]),
        .Q(an32ShiftReg_6[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[24] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[24]),
        .Q(an32ShiftReg_6[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[25] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[25]),
        .Q(an32ShiftReg_6[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[26] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[26]),
        .Q(an32ShiftReg_6[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[27] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[27]),
        .Q(an32ShiftReg_6[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[28] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[28]),
        .Q(an32ShiftReg_6[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[29] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[29]),
        .Q(an32ShiftReg_6[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[2] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[2]),
        .Q(an32ShiftReg_6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[30] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[30]),
        .Q(an32ShiftReg_6[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[31] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[31]),
        .Q(an32ShiftReg_6[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[3] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[3]),
        .Q(an32ShiftReg_6[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[4] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[4]),
        .Q(an32ShiftReg_6[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[5] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[5]),
        .Q(an32ShiftReg_6[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[6] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[6]),
        .Q(an32ShiftReg_6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[7] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[7]),
        .Q(an32ShiftReg_6[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[8] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[8]),
        .Q(an32ShiftReg_6[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_6_reg[9] 
       (.C(ap_clk),
        .CE(an32ShiftReg_60),
        .D(an32ShiftReg_5[9]),
        .Q(an32ShiftReg_6[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[0] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[0]),
        .Q(an32ShiftReg_7[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[10] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[10]),
        .Q(an32ShiftReg_7[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[11] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[11]),
        .Q(an32ShiftReg_7[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[12] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[12]),
        .Q(an32ShiftReg_7[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[13] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[13]),
        .Q(an32ShiftReg_7[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[14] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[14]),
        .Q(an32ShiftReg_7[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[15] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[15]),
        .Q(an32ShiftReg_7[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[16] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[16]),
        .Q(an32ShiftReg_7[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[17] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[17]),
        .Q(an32ShiftReg_7[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[18] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[18]),
        .Q(an32ShiftReg_7[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[19] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[19]),
        .Q(an32ShiftReg_7[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[1] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[1]),
        .Q(an32ShiftReg_7[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[20] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[20]),
        .Q(an32ShiftReg_7[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[21] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[21]),
        .Q(an32ShiftReg_7[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[22] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[22]),
        .Q(an32ShiftReg_7[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[23] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[23]),
        .Q(an32ShiftReg_7[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[24] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[24]),
        .Q(an32ShiftReg_7[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[25] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[25]),
        .Q(an32ShiftReg_7[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[26] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[26]),
        .Q(an32ShiftReg_7[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[27] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[27]),
        .Q(an32ShiftReg_7[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[28] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[28]),
        .Q(an32ShiftReg_7[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[29] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[29]),
        .Q(an32ShiftReg_7[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[2] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[2]),
        .Q(an32ShiftReg_7[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[30] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[30]),
        .Q(an32ShiftReg_7[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[31] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[31]),
        .Q(an32ShiftReg_7[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[3] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[3]),
        .Q(an32ShiftReg_7[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[4] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[4]),
        .Q(an32ShiftReg_7[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[5] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[5]),
        .Q(an32ShiftReg_7[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[6] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[6]),
        .Q(an32ShiftReg_7[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[7] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[7]),
        .Q(an32ShiftReg_7[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[8] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[8]),
        .Q(an32ShiftReg_7[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an32ShiftReg_7_reg[9] 
       (.C(ap_clk),
        .CE(an32ShiftReg_70),
        .D(an32ShiftReg_6[9]),
        .Q(an32ShiftReg_7[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFA2AAA2A2)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(ap_NS_fsm115_out__2),
        .I3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready),
        .I4(\ap_CS_fsm[1]_i_3_n_0 ),
        .I5(ap_enable_reg_pp0_iter10),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(ap_enable_reg_pp0_iter0_reg_reg_0),
        .I1(Q),
        .I2(pstrmInput_TVALID_int_regslice),
        .I3(ap_CS_fsm_pp0_stage9),
        .O(ap_NS_fsm[10]));
  LUT6 #(
    .INIT(64'h0000110100000000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q),
        .I1(mul_32s_32s_32_1_1_U5_n_6),
        .I2(\ap_CS_fsm[1]_i_3_n_0 ),
        .I3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready),
        .I4(ap_NS_fsm115_out__2),
        .I5(ap_block_pp0_stage0_subdone),
        .O(ap_NS_fsm[1]));
  LUT3 #(
    .INIT(8'h01)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .O(\ap_CS_fsm[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047004747)) 
    \ap_CS_fsm[1]_i_5 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST),
        .I4(icmp_ln22_reg_556),
        .I5(\ap_CS_fsm[1]_i_7_n_0 ),
        .O(ap_NS_fsm115_out__2));
  LUT4 #(
    .INIT(16'hF777)) 
    \ap_CS_fsm[1]_i_6 
       (.I0(icmp_ln22_reg_556),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\ap_CS_fsm_reg[3]_0 [1]),
        .I3(pstrmOutput_TREADY_int_regslice),
        .O(ap_block_pp0_stage0_subdone));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h5DDDFFFF)) 
    \ap_CS_fsm[1]_i_7 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(icmp_ln22_reg_556),
        .I2(\ap_CS_fsm_reg[3]_0 [1]),
        .I3(pstrmOutput_TREADY_int_regslice),
        .I4(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55D5D5D5FFFFFFFF)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(icmp_ln22_reg_556),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\ap_CS_fsm_reg[3]_0 [1]),
        .I4(pstrmOutput_TREADY_int_regslice),
        .I5(ap_loop_exit_ready_pp0_iter1_reg),
        .O(\ap_CS_fsm[3]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(Q),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage1),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage2),
        .Q(ap_CS_fsm_pp0_stage3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage3),
        .Q(ap_CS_fsm_pp0_stage4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage4),
        .Q(ap_CS_fsm_pp0_stage5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage5),
        .Q(ap_CS_fsm_pp0_stage6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage6),
        .Q(ap_CS_fsm_pp0_stage7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage7),
        .Q(ap_CS_fsm_pp0_stage8),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage8),
        .Q(ap_CS_fsm_pp0_stage9),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hB0800080)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter10),
        .I2(ap_rst_n),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(flow_control_loop_pipe_sequential_init_U_n_3),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h54105400)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_NS_fsm115_out__2),
        .I1(ap_enable_reg_pp0_iter10),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready),
        .I4(flow_control_loop_pipe_sequential_init_U_n_3),
        .O(ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.\B_V_data_1_state_reg[1] (flow_control_loop_pipe_sequential_init_U_n_3),
        .D(D),
        .DI({flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19,flow_control_loop_pipe_sequential_init_U_n_20}),
        .Q({Q,\ap_CS_fsm_reg_n_0_[0] }),
        .S({flow_control_loop_pipe_sequential_init_U_n_5,flow_control_loop_pipe_sequential_init_U_n_6,flow_control_loop_pipe_sequential_init_U_n_7,flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12}),
        .SR(n32XferCnt_fu_1140),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3]_0 ),
        .\ap_CS_fsm_reg[3]_0 (\ap_CS_fsm[3]_i_2_n_0 ),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_ready_int(ap_ready_int),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .\icmp_ln22_reg_556_reg[0] (\icmp_ln22_reg_556_reg[0]_0 ),
        .\n32XferCnt_fu_114_reg[0] (icmp_ln22_reg_556),
        .\n32XferCnt_fu_114_reg[30] ({flow_control_loop_pipe_sequential_init_U_n_21,flow_control_loop_pipe_sequential_init_U_n_22,flow_control_loop_pipe_sequential_init_U_n_23,flow_control_loop_pipe_sequential_init_U_n_24,flow_control_loop_pipe_sequential_init_U_n_25,flow_control_loop_pipe_sequential_init_U_n_26,flow_control_loop_pipe_sequential_init_U_n_27,flow_control_loop_pipe_sequential_init_U_n_28}),
        .\n32XferCnt_fu_114_reg[30]_0 ({flow_control_loop_pipe_sequential_init_U_n_29,flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36}),
        .\n32XferCnt_fu_114_reg[30]_1 (ap_sig_allocacmp_n32XferCnt_load),
        .\n32XferCnt_load_reg_546_reg[30] (n32XferCnt_fu_114),
        .pstrmInput_TVALID_int_regslice(pstrmInput_TVALID_int_regslice),
        .pstrmOutput_TREADY_int_regslice(pstrmOutput_TREADY_int_regslice));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 icmp_ln22_fu_279_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({icmp_ln22_fu_279_p2_carry_n_0,icmp_ln22_fu_279_p2_carry_n_1,icmp_ln22_fu_279_p2_carry_n_2,icmp_ln22_fu_279_p2_carry_n_3,icmp_ln22_fu_279_p2_carry_n_4,icmp_ln22_fu_279_p2_carry_n_5,icmp_ln22_fu_279_p2_carry_n_6,icmp_ln22_fu_279_p2_carry_n_7}),
        .DI({flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19,flow_control_loop_pipe_sequential_init_U_n_20}),
        .O(NLW_icmp_ln22_fu_279_p2_carry_O_UNCONNECTED[7:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_5,flow_control_loop_pipe_sequential_init_U_n_6,flow_control_loop_pipe_sequential_init_U_n_7,flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12}));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 icmp_ln22_fu_279_p2_carry__0
       (.CI(icmp_ln22_fu_279_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({icmp_ln22_fu_279_p2,icmp_ln22_fu_279_p2_carry__0_n_1,icmp_ln22_fu_279_p2_carry__0_n_2,icmp_ln22_fu_279_p2_carry__0_n_3,icmp_ln22_fu_279_p2_carry__0_n_4,icmp_ln22_fu_279_p2_carry__0_n_5,icmp_ln22_fu_279_p2_carry__0_n_6,icmp_ln22_fu_279_p2_carry__0_n_7}),
        .DI({flow_control_loop_pipe_sequential_init_U_n_29,flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36}),
        .O(NLW_icmp_ln22_fu_279_p2_carry__0_O_UNCONNECTED[7:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_21,flow_control_loop_pipe_sequential_init_U_n_22,flow_control_loop_pipe_sequential_init_U_n_23,flow_control_loop_pipe_sequential_init_U_n_24,flow_control_loop_pipe_sequential_init_U_n_25,flow_control_loop_pipe_sequential_init_U_n_26,flow_control_loop_pipe_sequential_init_U_n_27,flow_control_loop_pipe_sequential_init_U_n_28}));
  FDRE \icmp_ln22_reg_556_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(icmp_ln22_fu_279_p2),
        .Q(icmp_ln22_reg_556),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    mem_reg_0_15_0_0_i_10
       (.I0(ap_CS_fsm_pp0_stage5),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(ap_CS_fsm_pp0_stage4),
        .I5(ap_CS_fsm_pp0_stage6),
        .O(mem_reg_0_15_0_0_i_10_n_0));
  LUT5 #(
    .INIT(32'h0000FFF1)) 
    mem_reg_0_15_0_0_i_11
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_CS_fsm_pp0_stage4),
        .I3(ap_CS_fsm_pp0_stage3),
        .I4(ap_CS_fsm_pp0_stage5),
        .O(mem_reg_0_15_0_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_reg_0_15_0_0_i_12
       (.I0(ap_CS_fsm_pp0_stage6),
        .I1(ap_CS_fsm_pp0_stage5),
        .I2(ap_CS_fsm_pp0_stage3),
        .I3(ap_CS_fsm_pp0_stage4),
        .O(mem_reg_0_15_0_0_i_12_n_0));
  LUT5 #(
    .INIT(32'h00FF000E)) 
    mem_reg_0_15_0_0_i_6
       (.I0(mem_reg_0_15_0_0_i_10_n_0),
        .I1(ap_CS_fsm_pp0_stage7),
        .I2(ap_CS_fsm_pp0_stage8),
        .I3(Q),
        .I4(ap_CS_fsm_pp0_stage9),
        .O(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[0]));
  LUT6 #(
    .INIT(64'h0303030003030302)) 
    mem_reg_0_15_0_0_i_7
       (.I0(mem_reg_0_15_0_0_i_11_n_0),
        .I1(Q),
        .I2(ap_CS_fsm_pp0_stage9),
        .I3(ap_CS_fsm_pp0_stage7),
        .I4(ap_CS_fsm_pp0_stage8),
        .I5(ap_CS_fsm_pp0_stage6),
        .O(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[1]));
  LUT5 #(
    .INIT(32'h00000004)) 
    mem_reg_0_15_0_0_i_8
       (.I0(Q),
        .I1(mem_reg_0_15_0_0_i_12_n_0),
        .I2(ap_CS_fsm_pp0_stage9),
        .I3(ap_CS_fsm_pp0_stage7),
        .I4(ap_CS_fsm_pp0_stage8),
        .O(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[2]));
  LUT5 #(
    .INIT(32'h00000001)) 
    mem_reg_0_15_0_0_i_9
       (.I0(mem_reg_0_15_0_0_i_12_n_0),
        .I1(ap_CS_fsm_pp0_stage8),
        .I2(ap_CS_fsm_pp0_stage7),
        .I3(ap_CS_fsm_pp0_stage9),
        .I4(Q),
        .O(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_address0[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1 mul_32s_32s_32_1_1_U1
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB2(an32ShiftReg_80),
        .D({mul_32s_32s_32_1_1_U1_n_2,mul_32s_32s_32_1_1_U1_n_3,mul_32s_32s_32_1_1_U1_n_4,mul_32s_32s_32_1_1_U1_n_5,mul_32s_32s_32_1_1_U1_n_6,mul_32s_32s_32_1_1_U1_n_7,mul_32s_32s_32_1_1_U1_n_8,mul_32s_32s_32_1_1_U1_n_9,mul_32s_32s_32_1_1_U1_n_10,mul_32s_32s_32_1_1_U1_n_11,mul_32s_32s_32_1_1_U1_n_12,mul_32s_32s_32_1_1_U1_n_13,mul_32s_32s_32_1_1_U1_n_14,mul_32s_32s_32_1_1_U1_n_15,mul_32s_32s_32_1_1_U1_n_16,mul_32s_32s_32_1_1_U1_n_17,mul_32s_32s_32_1_1_U1_n_18}),
        .DSP_A_B_DATA_INST({ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_0_[0] }),
        .E(mul_ln35_reg_5650),
        .P({mul_ln35_reg_565_reg_n_91,mul_ln35_reg_565_reg_n_92,mul_ln35_reg_565_reg_n_93,mul_ln35_reg_565_reg_n_94,mul_ln35_reg_565_reg_n_95,mul_ln35_reg_565_reg_n_96,mul_ln35_reg_565_reg_n_97,mul_ln35_reg_565_reg_n_98,mul_ln35_reg_565_reg_n_99,mul_ln35_reg_565_reg_n_100,mul_ln35_reg_565_reg_n_101,mul_ln35_reg_565_reg_n_102,mul_ln35_reg_565_reg_n_103,mul_ln35_reg_565_reg_n_104,mul_ln35_reg_565_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U1_n_19,mul_32s_32s_32_1_1_U1_n_20,mul_32s_32s_32_1_1_U1_n_21,mul_32s_32s_32_1_1_U1_n_22,mul_32s_32s_32_1_1_U1_n_23,mul_32s_32s_32_1_1_U1_n_24,mul_32s_32s_32_1_1_U1_n_25,mul_32s_32s_32_1_1_U1_n_26,mul_32s_32s_32_1_1_U1_n_27,mul_32s_32s_32_1_1_U1_n_28,mul_32s_32s_32_1_1_U1_n_29,mul_32s_32s_32_1_1_U1_n_30,mul_32s_32s_32_1_1_U1_n_31,mul_32s_32s_32_1_1_U1_n_32,mul_32s_32s_32_1_1_U1_n_33,mul_32s_32s_32_1_1_U1_n_34,mul_32s_32s_32_1_1_U1_n_35,mul_32s_32s_32_1_1_U1_n_36,mul_32s_32s_32_1_1_U1_n_37,mul_32s_32s_32_1_1_U1_n_38,mul_32s_32s_32_1_1_U1_n_39,mul_32s_32s_32_1_1_U1_n_40,mul_32s_32s_32_1_1_U1_n_41,mul_32s_32s_32_1_1_U1_n_42,mul_32s_32s_32_1_1_U1_n_43,mul_32s_32s_32_1_1_U1_n_44,mul_32s_32s_32_1_1_U1_n_45,mul_32s_32s_32_1_1_U1_n_46,mul_32s_32s_32_1_1_U1_n_47,mul_32s_32s_32_1_1_U1_n_48,mul_32s_32s_32_1_1_U1_n_49,mul_32s_32s_32_1_1_U1_n_50,mul_32s_32s_32_1_1_U1_n_51,mul_32s_32s_32_1_1_U1_n_52,mul_32s_32s_32_1_1_U1_n_53,mul_32s_32s_32_1_1_U1_n_54,mul_32s_32s_32_1_1_U1_n_55,mul_32s_32s_32_1_1_U1_n_56,mul_32s_32s_32_1_1_U1_n_57,mul_32s_32s_32_1_1_U1_n_58,mul_32s_32s_32_1_1_U1_n_59,mul_32s_32s_32_1_1_U1_n_60,mul_32s_32s_32_1_1_U1_n_61,mul_32s_32s_32_1_1_U1_n_62,mul_32s_32s_32_1_1_U1_n_63,mul_32s_32s_32_1_1_U1_n_64,mul_32s_32s_32_1_1_U1_n_65,mul_32s_32s_32_1_1_U1_n_66}),
        .Q(an32ShiftReg_7[16:0]),
        .add_ln35_fu_311_p2_carry__1_i_8(\mul_ln35_reg_565_reg[16]__0_n_0 ),
        .\ap_CS_fsm_reg[2] (an32ShiftReg_90),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .\mul_ln35_reg_565_reg[0]__0 (icmp_ln22_reg_556),
        .mul_ln35_reg_565_reg__1(mul_ln35_reg_565_reg__1),
        .q00(q00));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_11 mul_32s_32s_32_1_1_U10
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .CEP(mul_ln35_9_reg_6900),
        .D({mul_32s_32s_32_1_1_U10_n_0,mul_32s_32s_32_1_1_U10_n_1,mul_32s_32s_32_1_1_U10_n_2,mul_32s_32s_32_1_1_U10_n_3,mul_32s_32s_32_1_1_U10_n_4,mul_32s_32s_32_1_1_U10_n_5,mul_32s_32s_32_1_1_U10_n_6,mul_32s_32s_32_1_1_U10_n_7,mul_32s_32s_32_1_1_U10_n_8,mul_32s_32s_32_1_1_U10_n_9,mul_32s_32s_32_1_1_U10_n_10,mul_32s_32s_32_1_1_U10_n_11,mul_32s_32s_32_1_1_U10_n_12,mul_32s_32s_32_1_1_U10_n_13,mul_32s_32s_32_1_1_U10_n_14,mul_32s_32s_32_1_1_U10_n_15,mul_32s_32s_32_1_1_U10_n_16}),
        .DI({mul_32s_32s_32_1_1_U10_n_73,mul_32s_32s_32_1_1_U10_n_74,mul_32s_32s_32_1_1_U10_n_75,mul_32s_32s_32_1_1_U10_n_76,mul_32s_32s_32_1_1_U10_n_77,mul_32s_32s_32_1_1_U10_n_78,mul_32s_32s_32_1_1_U10_n_79}),
        .P({mul_ln35_9_reg_690_reg_n_91,mul_ln35_9_reg_690_reg_n_92,mul_ln35_9_reg_690_reg_n_93,mul_ln35_9_reg_690_reg_n_94,mul_ln35_9_reg_690_reg_n_95,mul_ln35_9_reg_690_reg_n_96,mul_ln35_9_reg_690_reg_n_97,mul_ln35_9_reg_690_reg_n_98,mul_ln35_9_reg_690_reg_n_99,mul_ln35_9_reg_690_reg_n_100,mul_ln35_9_reg_690_reg_n_101,mul_ln35_9_reg_690_reg_n_102,mul_ln35_9_reg_690_reg_n_103,mul_ln35_9_reg_690_reg_n_104,mul_ln35_9_reg_690_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U10_n_17,mul_32s_32s_32_1_1_U10_n_18,mul_32s_32s_32_1_1_U10_n_19,mul_32s_32s_32_1_1_U10_n_20,mul_32s_32s_32_1_1_U10_n_21,mul_32s_32s_32_1_1_U10_n_22,mul_32s_32s_32_1_1_U10_n_23,mul_32s_32s_32_1_1_U10_n_24,mul_32s_32s_32_1_1_U10_n_25,mul_32s_32s_32_1_1_U10_n_26,mul_32s_32s_32_1_1_U10_n_27,mul_32s_32s_32_1_1_U10_n_28,mul_32s_32s_32_1_1_U10_n_29,mul_32s_32s_32_1_1_U10_n_30,mul_32s_32s_32_1_1_U10_n_31,mul_32s_32s_32_1_1_U10_n_32,mul_32s_32s_32_1_1_U10_n_33,mul_32s_32s_32_1_1_U10_n_34,mul_32s_32s_32_1_1_U10_n_35,mul_32s_32s_32_1_1_U10_n_36,mul_32s_32s_32_1_1_U10_n_37,mul_32s_32s_32_1_1_U10_n_38,mul_32s_32s_32_1_1_U10_n_39,mul_32s_32s_32_1_1_U10_n_40,mul_32s_32s_32_1_1_U10_n_41,mul_32s_32s_32_1_1_U10_n_42,mul_32s_32s_32_1_1_U10_n_43,mul_32s_32s_32_1_1_U10_n_44,mul_32s_32s_32_1_1_U10_n_45,mul_32s_32s_32_1_1_U10_n_46,mul_32s_32s_32_1_1_U10_n_47,mul_32s_32s_32_1_1_U10_n_48,mul_32s_32s_32_1_1_U10_n_49,mul_32s_32s_32_1_1_U10_n_50,mul_32s_32s_32_1_1_U10_n_51,mul_32s_32s_32_1_1_U10_n_52,mul_32s_32s_32_1_1_U10_n_53,mul_32s_32s_32_1_1_U10_n_54,mul_32s_32s_32_1_1_U10_n_55,mul_32s_32s_32_1_1_U10_n_56,mul_32s_32s_32_1_1_U10_n_57,mul_32s_32s_32_1_1_U10_n_58,mul_32s_32s_32_1_1_U10_n_59,mul_32s_32s_32_1_1_U10_n_60,mul_32s_32s_32_1_1_U10_n_61,mul_32s_32s_32_1_1_U10_n_62,mul_32s_32s_32_1_1_U10_n_63,mul_32s_32s_32_1_1_U10_n_64}),
        .Q(\mul_ln35_9_reg_690_reg[16]__0_n_0 ),
        .S({mul_32s_32s_32_1_1_U10_n_65,mul_32s_32s_32_1_1_U10_n_66,mul_32s_32s_32_1_1_U10_n_67,mul_32s_32s_32_1_1_U10_n_68,mul_32s_32s_32_1_1_U10_n_69,mul_32s_32s_32_1_1_U10_n_70,mul_32s_32s_32_1_1_U10_n_71,mul_32s_32s_32_1_1_U10_n_72}),
        .\add_ln35_4_reg_635_reg[22] ({mul_32s_32s_32_1_1_U10_n_80,mul_32s_32s_32_1_1_U10_n_81,mul_32s_32s_32_1_1_U10_n_82,mul_32s_32s_32_1_1_U10_n_83,mul_32s_32s_32_1_1_U10_n_84,mul_32s_32s_32_1_1_U10_n_85,mul_32s_32s_32_1_1_U10_n_86}),
        .\add_ln35_4_reg_635_reg[23] ({mul_32s_32s_32_1_1_U10_n_87,mul_32s_32s_32_1_1_U10_n_88,mul_32s_32s_32_1_1_U10_n_89,mul_32s_32s_32_1_1_U10_n_90,mul_32s_32s_32_1_1_U10_n_91,mul_32s_32s_32_1_1_U10_n_92,mul_32s_32s_32_1_1_U10_n_93,mul_32s_32s_32_1_1_U10_n_94}),
        .ap_clk(ap_clk),
        .pstrmInput_TDATA_int_regslice(pstrmInput_TDATA_int_regslice[16:0]),
        .pstrmOutput_TDATA__0_carry__1(pstrmOutput_TDATA__0_carry__1_i_8_n_0),
        .pstrmOutput_TDATA__0_carry__2(add_ln35_2_reg_605[31:16]),
        .pstrmOutput_TDATA__0_carry__2_0(add_ln35_4_reg_635[31:16]),
        .q00(q00));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_12 mul_32s_32s_32_1_1_U11
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEP(mul_ln35_9_reg_6900),
        .DI({mul_32s_32s_32_1_1_U11_n_17,mul_32s_32s_32_1_1_U11_n_18,mul_32s_32s_32_1_1_U11_n_19,mul_32s_32s_32_1_1_U11_n_20,mul_32s_32s_32_1_1_U11_n_21,mul_32s_32s_32_1_1_U11_n_22,mul_32s_32s_32_1_1_U11_n_23}),
        .O(mul_ln35_5_reg_615_reg__1[16]),
        .Q({Q,\ap_CS_fsm_reg_n_0_[0] }),
        .S({mul_32s_32s_32_1_1_U11_n_24,mul_32s_32s_32_1_1_U11_n_25,mul_32s_32s_32_1_1_U11_n_26,mul_32s_32s_32_1_1_U11_n_27,mul_32s_32s_32_1_1_U11_n_28,mul_32s_32s_32_1_1_U11_n_29,mul_32s_32s_32_1_1_U11_n_30,mul_32s_32s_32_1_1_U11_n_31}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .dout__3(dout__3),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .\mul_ln35_5_reg_615_reg[14]__0 ({mul_32s_32s_32_1_1_U11_n_32,mul_32s_32s_32_1_1_U11_n_33,mul_32s_32s_32_1_1_U11_n_34,mul_32s_32s_32_1_1_U11_n_35,mul_32s_32s_32_1_1_U11_n_36,mul_32s_32s_32_1_1_U11_n_37,mul_32s_32s_32_1_1_U11_n_38,mul_32s_32s_32_1_1_U11_n_39}),
        .\mul_ln35_5_reg_615_reg[15]__0 ({mul_32s_32s_32_1_1_U11_n_40,mul_32s_32s_32_1_1_U11_n_41,mul_32s_32s_32_1_1_U11_n_42,mul_32s_32s_32_1_1_U11_n_43,mul_32s_32s_32_1_1_U11_n_44,mul_32s_32s_32_1_1_U11_n_45,mul_32s_32s_32_1_1_U11_n_46,mul_32s_32s_32_1_1_U11_n_47}),
        .\mul_ln35_5_reg_615_reg[15]__0_0 (mul_32s_32s_32_1_1_U11_n_48),
        .\mul_ln35_5_reg_615_reg[16]__0 (mul_32s_32s_32_1_1_U11_n_49),
        .pstrmInput_TDATA_int_regslice(pstrmInput_TDATA_int_regslice),
        .pstrmInput_TVALID_int_regslice(pstrmInput_TVALID_int_regslice),
        .pstrmOutput_TDATA__94_carry__0({\mul_ln35_5_reg_615_reg[15]__0_n_0 ,\mul_ln35_5_reg_615_reg[14]__0_n_0 ,\mul_ln35_5_reg_615_reg[13]__0_n_0 ,\mul_ln35_5_reg_615_reg[12]__0_n_0 ,\mul_ln35_5_reg_615_reg[11]__0_n_0 ,\mul_ln35_5_reg_615_reg[10]__0_n_0 ,\mul_ln35_5_reg_615_reg[9]__0_n_0 ,\mul_ln35_5_reg_615_reg[8]__0_n_0 ,\mul_ln35_5_reg_615_reg[7]__0_n_0 ,\mul_ln35_5_reg_615_reg[6]__0_n_0 ,\mul_ln35_5_reg_615_reg[5]__0_n_0 ,\mul_ln35_5_reg_615_reg[4]__0_n_0 ,\mul_ln35_5_reg_615_reg[3]__0_n_0 ,\mul_ln35_5_reg_615_reg[2]__0_n_0 ,\mul_ln35_5_reg_615_reg[1]__0_n_0 ,\mul_ln35_5_reg_615_reg[0]__0_n_0 }),
        .pstrmOutput_TDATA__94_carry__0_0({\mul_ln35_8_reg_645_reg[15]__0_n_0 ,\mul_ln35_8_reg_645_reg[14]__0_n_0 ,\mul_ln35_8_reg_645_reg[13]__0_n_0 ,\mul_ln35_8_reg_645_reg[12]__0_n_0 ,\mul_ln35_8_reg_645_reg[11]__0_n_0 ,\mul_ln35_8_reg_645_reg[10]__0_n_0 ,\mul_ln35_8_reg_645_reg[9]__0_n_0 ,\mul_ln35_8_reg_645_reg[8]__0_n_0 ,\mul_ln35_8_reg_645_reg[7]__0_n_0 ,\mul_ln35_8_reg_645_reg[6]__0_n_0 ,\mul_ln35_8_reg_645_reg[5]__0_n_0 ,\mul_ln35_8_reg_645_reg[4]__0_n_0 ,\mul_ln35_8_reg_645_reg[3]__0_n_0 ,\mul_ln35_8_reg_645_reg[2]__0_n_0 ,\mul_ln35_8_reg_645_reg[1]__0_n_0 ,\mul_ln35_8_reg_645_reg[0]__0_n_0 }),
        .pstrmOutput_TDATA__94_carry__1(mul_ln35_8_reg_645_reg__1[16]),
        .q00(q00),
        .\tmp_dest_V_reg_685_reg[0] (icmp_ln22_reg_556));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_13 mul_32s_32s_32_1_1_U2
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB2(an32ShiftReg_70),
        .P({mul_32s_32s_32_1_1_U2_n_2,mul_32s_32s_32_1_1_U2_n_3,mul_32s_32s_32_1_1_U2_n_4,mul_32s_32s_32_1_1_U2_n_5,mul_32s_32s_32_1_1_U2_n_6,mul_32s_32s_32_1_1_U2_n_7,mul_32s_32s_32_1_1_U2_n_8,mul_32s_32s_32_1_1_U2_n_9,mul_32s_32s_32_1_1_U2_n_10,mul_32s_32s_32_1_1_U2_n_11,mul_32s_32s_32_1_1_U2_n_12,mul_32s_32s_32_1_1_U2_n_13,mul_32s_32s_32_1_1_U2_n_14,mul_32s_32s_32_1_1_U2_n_15,mul_32s_32s_32_1_1_U2_n_16,mul_32s_32s_32_1_1_U2_n_17}),
        .Q(an32ShiftReg_6),
        .S({mul_32s_32s_32_1_1_U2_n_33,mul_32s_32s_32_1_1_U2_n_34,mul_32s_32s_32_1_1_U2_n_35,mul_32s_32s_32_1_1_U2_n_36,mul_32s_32s_32_1_1_U2_n_37,mul_32s_32s_32_1_1_U2_n_38,mul_32s_32s_32_1_1_U2_n_39,mul_32s_32s_32_1_1_U2_n_40}),
        .\add_ln35_reg_575_reg[15] ({\mul_ln35_reg_565_reg[15]__0_n_0 ,\mul_ln35_reg_565_reg[14]__0_n_0 ,\mul_ln35_reg_565_reg[13]__0_n_0 ,\mul_ln35_reg_565_reg[12]__0_n_0 ,\mul_ln35_reg_565_reg[11]__0_n_0 ,\mul_ln35_reg_565_reg[10]__0_n_0 ,\mul_ln35_reg_565_reg[9]__0_n_0 ,\mul_ln35_reg_565_reg[8]__0_n_0 ,\mul_ln35_reg_565_reg[7]__0_n_0 ,\mul_ln35_reg_565_reg[6]__0_n_0 ,\mul_ln35_reg_565_reg[5]__0_n_0 ,\mul_ln35_reg_565_reg[4]__0_n_0 ,\mul_ln35_reg_565_reg[3]__0_n_0 ,\mul_ln35_reg_565_reg[2]__0_n_0 ,\mul_ln35_reg_565_reg[1]__0_n_0 ,\mul_ln35_reg_565_reg[0]__0_n_0 }),
        .\an32ShiftReg_7_reg[0] ({ap_CS_fsm_pp0_stage4,ap_CS_fsm_pp0_stage3,\ap_CS_fsm_reg_n_0_[0] }),
        .\an32ShiftReg_7_reg[0]_0 (icmp_ln22_reg_556),
        .\ap_CS_fsm_reg[3] (an32ShiftReg_80),
        .ap_clk(ap_clk),
        .ap_clk_0(dout__3_0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .dout_carry__0_0({mul_32s_32s_32_1_1_U2_n_57,mul_32s_32s_32_1_1_U2_n_58,mul_32s_32s_32_1_1_U2_n_59,mul_32s_32s_32_1_1_U2_n_60,mul_32s_32s_32_1_1_U2_n_61,mul_32s_32s_32_1_1_U2_n_62,mul_32s_32s_32_1_1_U2_n_63,mul_32s_32s_32_1_1_U2_n_64}),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .\mul_ln35_reg_565_reg[15]__0 ({mul_32s_32s_32_1_1_U2_n_41,mul_32s_32s_32_1_1_U2_n_42,mul_32s_32s_32_1_1_U2_n_43,mul_32s_32s_32_1_1_U2_n_44,mul_32s_32s_32_1_1_U2_n_45,mul_32s_32s_32_1_1_U2_n_46,mul_32s_32s_32_1_1_U2_n_47,mul_32s_32s_32_1_1_U2_n_48}),
        .\mul_ln35_reg_565_reg[16]__0 ({mul_32s_32s_32_1_1_U2_n_49,mul_32s_32s_32_1_1_U2_n_50,mul_32s_32s_32_1_1_U2_n_51,mul_32s_32s_32_1_1_U2_n_52,mul_32s_32s_32_1_1_U2_n_53,mul_32s_32s_32_1_1_U2_n_54,mul_32s_32s_32_1_1_U2_n_55,mul_32s_32s_32_1_1_U2_n_56}),
        .mul_ln35_reg_565_reg__1(mul_ln35_reg_565_reg__1),
        .q00(q00));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_14 mul_32s_32s_32_1_1_U3
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB2(an32ShiftReg_60),
        .D({mul_32s_32s_32_1_1_U3_n_1,mul_32s_32s_32_1_1_U3_n_2,mul_32s_32s_32_1_1_U3_n_3,mul_32s_32s_32_1_1_U3_n_4,mul_32s_32s_32_1_1_U3_n_5,mul_32s_32s_32_1_1_U3_n_6,mul_32s_32s_32_1_1_U3_n_7,mul_32s_32s_32_1_1_U3_n_8,mul_32s_32s_32_1_1_U3_n_9,mul_32s_32s_32_1_1_U3_n_10,mul_32s_32s_32_1_1_U3_n_11,mul_32s_32s_32_1_1_U3_n_12,mul_32s_32s_32_1_1_U3_n_13,mul_32s_32s_32_1_1_U3_n_14,mul_32s_32s_32_1_1_U3_n_15,mul_32s_32s_32_1_1_U3_n_16,mul_32s_32s_32_1_1_U3_n_17}),
        .DSP_ALU_INST(an32ShiftReg_70),
        .E(mul_ln35_2_reg_5850),
        .P({mul_ln35_2_reg_585_reg_n_91,mul_ln35_2_reg_585_reg_n_92,mul_ln35_2_reg_585_reg_n_93,mul_ln35_2_reg_585_reg_n_94,mul_ln35_2_reg_585_reg_n_95,mul_ln35_2_reg_585_reg_n_96,mul_ln35_2_reg_585_reg_n_97,mul_ln35_2_reg_585_reg_n_98,mul_ln35_2_reg_585_reg_n_99,mul_ln35_2_reg_585_reg_n_100,mul_ln35_2_reg_585_reg_n_101,mul_ln35_2_reg_585_reg_n_102,mul_ln35_2_reg_585_reg_n_103,mul_ln35_2_reg_585_reg_n_104,mul_ln35_2_reg_585_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U3_n_18,mul_32s_32s_32_1_1_U3_n_19,mul_32s_32s_32_1_1_U3_n_20,mul_32s_32s_32_1_1_U3_n_21,mul_32s_32s_32_1_1_U3_n_22,mul_32s_32s_32_1_1_U3_n_23,mul_32s_32s_32_1_1_U3_n_24,mul_32s_32s_32_1_1_U3_n_25,mul_32s_32s_32_1_1_U3_n_26,mul_32s_32s_32_1_1_U3_n_27,mul_32s_32s_32_1_1_U3_n_28,mul_32s_32s_32_1_1_U3_n_29,mul_32s_32s_32_1_1_U3_n_30,mul_32s_32s_32_1_1_U3_n_31,mul_32s_32s_32_1_1_U3_n_32,mul_32s_32s_32_1_1_U3_n_33,mul_32s_32s_32_1_1_U3_n_34,mul_32s_32s_32_1_1_U3_n_35,mul_32s_32s_32_1_1_U3_n_36,mul_32s_32s_32_1_1_U3_n_37,mul_32s_32s_32_1_1_U3_n_38,mul_32s_32s_32_1_1_U3_n_39,mul_32s_32s_32_1_1_U3_n_40,mul_32s_32s_32_1_1_U3_n_41,mul_32s_32s_32_1_1_U3_n_42,mul_32s_32s_32_1_1_U3_n_43,mul_32s_32s_32_1_1_U3_n_44,mul_32s_32s_32_1_1_U3_n_45,mul_32s_32s_32_1_1_U3_n_46,mul_32s_32s_32_1_1_U3_n_47,mul_32s_32s_32_1_1_U3_n_48,mul_32s_32s_32_1_1_U3_n_49,mul_32s_32s_32_1_1_U3_n_50,mul_32s_32s_32_1_1_U3_n_51,mul_32s_32s_32_1_1_U3_n_52,mul_32s_32s_32_1_1_U3_n_53,mul_32s_32s_32_1_1_U3_n_54,mul_32s_32s_32_1_1_U3_n_55,mul_32s_32s_32_1_1_U3_n_56,mul_32s_32s_32_1_1_U3_n_57,mul_32s_32s_32_1_1_U3_n_58,mul_32s_32s_32_1_1_U3_n_59,mul_32s_32s_32_1_1_U3_n_60,mul_32s_32s_32_1_1_U3_n_61,mul_32s_32s_32_1_1_U3_n_62,mul_32s_32s_32_1_1_U3_n_63,mul_32s_32s_32_1_1_U3_n_64,mul_32s_32s_32_1_1_U3_n_65}),
        .Q(an32ShiftReg_5[16:0]),
        .add_ln35_2_fu_369_p2__0_carry__1_i_16(\mul_ln35_2_reg_585_reg[16]__0_n_0 ),
        .ap_clk(ap_clk),
        .\mul_ln35_2_reg_585_reg[0]__0 (icmp_ln22_reg_556),
        .\mul_ln35_2_reg_585_reg[0]__0_0 (ap_CS_fsm_pp0_stage3),
        .mul_ln35_2_reg_585_reg__1(mul_ln35_2_reg_585_reg__1),
        .q00(q00));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_15 mul_32s_32s_32_1_1_U4
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB1(an32ShiftReg_50),
        .CEB2(an32ShiftReg_60),
        .D({mul_32s_32s_32_1_1_U4_n_2,mul_32s_32s_32_1_1_U4_n_3,mul_32s_32s_32_1_1_U4_n_4,mul_32s_32s_32_1_1_U4_n_5,mul_32s_32s_32_1_1_U4_n_6,mul_32s_32s_32_1_1_U4_n_7,mul_32s_32s_32_1_1_U4_n_8,mul_32s_32s_32_1_1_U4_n_9,mul_32s_32s_32_1_1_U4_n_10,mul_32s_32s_32_1_1_U4_n_11,mul_32s_32s_32_1_1_U4_n_12,mul_32s_32s_32_1_1_U4_n_13,mul_32s_32s_32_1_1_U4_n_14,mul_32s_32s_32_1_1_U4_n_15,mul_32s_32s_32_1_1_U4_n_16,mul_32s_32s_32_1_1_U4_n_17,mul_32s_32s_32_1_1_U4_n_18}),
        .E(mul_ln35_3_reg_5950),
        .O(dout__3_1),
        .P({mul_ln35_3_reg_595_reg_n_91,mul_ln35_3_reg_595_reg_n_92,mul_ln35_3_reg_595_reg_n_93,mul_ln35_3_reg_595_reg_n_94,mul_ln35_3_reg_595_reg_n_95,mul_ln35_3_reg_595_reg_n_96,mul_ln35_3_reg_595_reg_n_97,mul_ln35_3_reg_595_reg_n_98,mul_ln35_3_reg_595_reg_n_99,mul_ln35_3_reg_595_reg_n_100,mul_ln35_3_reg_595_reg_n_101,mul_ln35_3_reg_595_reg_n_102,mul_ln35_3_reg_595_reg_n_103,mul_ln35_3_reg_595_reg_n_104,mul_ln35_3_reg_595_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U4_n_19,mul_32s_32s_32_1_1_U4_n_20,mul_32s_32s_32_1_1_U4_n_21,mul_32s_32s_32_1_1_U4_n_22,mul_32s_32s_32_1_1_U4_n_23,mul_32s_32s_32_1_1_U4_n_24,mul_32s_32s_32_1_1_U4_n_25,mul_32s_32s_32_1_1_U4_n_26,mul_32s_32s_32_1_1_U4_n_27,mul_32s_32s_32_1_1_U4_n_28,mul_32s_32s_32_1_1_U4_n_29,mul_32s_32s_32_1_1_U4_n_30,mul_32s_32s_32_1_1_U4_n_31,mul_32s_32s_32_1_1_U4_n_32,mul_32s_32s_32_1_1_U4_n_33,mul_32s_32s_32_1_1_U4_n_34,mul_32s_32s_32_1_1_U4_n_35,mul_32s_32s_32_1_1_U4_n_36,mul_32s_32s_32_1_1_U4_n_37,mul_32s_32s_32_1_1_U4_n_38,mul_32s_32s_32_1_1_U4_n_39,mul_32s_32s_32_1_1_U4_n_40,mul_32s_32s_32_1_1_U4_n_41,mul_32s_32s_32_1_1_U4_n_42,mul_32s_32s_32_1_1_U4_n_43,mul_32s_32s_32_1_1_U4_n_44,mul_32s_32s_32_1_1_U4_n_45,mul_32s_32s_32_1_1_U4_n_46,mul_32s_32s_32_1_1_U4_n_47,mul_32s_32s_32_1_1_U4_n_48,mul_32s_32s_32_1_1_U4_n_49,mul_32s_32s_32_1_1_U4_n_50,mul_32s_32s_32_1_1_U4_n_51,mul_32s_32s_32_1_1_U4_n_52,mul_32s_32s_32_1_1_U4_n_53,mul_32s_32s_32_1_1_U4_n_54,mul_32s_32s_32_1_1_U4_n_55,mul_32s_32s_32_1_1_U4_n_56,mul_32s_32s_32_1_1_U4_n_57,mul_32s_32s_32_1_1_U4_n_58,mul_32s_32s_32_1_1_U4_n_59,mul_32s_32s_32_1_1_U4_n_60,mul_32s_32s_32_1_1_U4_n_61,mul_32s_32s_32_1_1_U4_n_62,mul_32s_32s_32_1_1_U4_n_63,mul_32s_32s_32_1_1_U4_n_64,mul_32s_32s_32_1_1_U4_n_65,mul_32s_32s_32_1_1_U4_n_66}),
        .Q(an32ShiftReg_4[16:0]),
        .S(mul_32s_32s_32_1_1_U4_n_82),
        .add_ln35_2_fu_369_p2__0_carry__1_i_16(\mul_ln35_3_reg_595_reg[16]__0_n_0 ),
        .\an32ShiftReg_6_reg[0] ({ap_CS_fsm_pp0_stage5,ap_CS_fsm_pp0_stage4,\ap_CS_fsm_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .mul_ln35_2_reg_585_reg__1(mul_ln35_2_reg_585_reg__1[31:30]),
        .\mul_ln35_3_reg_595_reg[0]__0 (icmp_ln22_reg_556),
        .\mul_ln35_3_reg_595_reg[16]__0 (mul_ln35_3_reg_595_reg__1),
        .q00(q00));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_16 mul_32s_32s_32_1_1_U5
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB1(an32ShiftReg_40),
        .DI({mul_32s_32s_32_1_1_U5_n_14,mul_32s_32s_32_1_1_U5_n_15,mul_32s_32s_32_1_1_U5_n_16,mul_32s_32s_32_1_1_U5_n_17,mul_32s_32s_32_1_1_U5_n_18,mul_32s_32s_32_1_1_U5_n_19,mul_32s_32s_32_1_1_U5_n_20}),
        .DSP_A_B_DATA_INST(flow_control_loop_pipe_sequential_init_U_n_3),
        .O(dout__3_1),
        .Q(an32ShiftReg_3),
        .S({mul_32s_32s_32_1_1_U5_n_7,mul_32s_32s_32_1_1_U5_n_8,mul_32s_32s_32_1_1_U5_n_9,mul_32s_32s_32_1_1_U5_n_10,mul_32s_32s_32_1_1_U5_n_11,mul_32s_32s_32_1_1_U5_n_12,mul_32s_32s_32_1_1_U5_n_13}),
        .\add_ln35_2_reg_605_reg[23] ({\mul_ln35_2_reg_585_reg[15]__0_n_0 ,\mul_ln35_2_reg_585_reg[14]__0_n_0 ,\mul_ln35_2_reg_585_reg[13]__0_n_0 ,\mul_ln35_2_reg_585_reg[12]__0_n_0 ,\mul_ln35_2_reg_585_reg[11]__0_n_0 ,\mul_ln35_2_reg_585_reg[10]__0_n_0 ,\mul_ln35_2_reg_585_reg[9]__0_n_0 ,\mul_ln35_2_reg_585_reg[8]__0_n_0 ,\mul_ln35_2_reg_585_reg[7]__0_n_0 ,\mul_ln35_2_reg_585_reg[6]__0_n_0 ,\mul_ln35_2_reg_585_reg[5]__0_n_0 ,\mul_ln35_2_reg_585_reg[4]__0_n_0 ,\mul_ln35_2_reg_585_reg[3]__0_n_0 ,\mul_ln35_2_reg_585_reg[2]__0_n_0 ,\mul_ln35_2_reg_585_reg[1]__0_n_0 ,\mul_ln35_2_reg_585_reg[0]__0_n_0 }),
        .\add_ln35_2_reg_605_reg[23]_0 ({\mul_ln35_3_reg_595_reg[15]__0_n_0 ,\mul_ln35_3_reg_595_reg[14]__0_n_0 ,\mul_ln35_3_reg_595_reg[13]__0_n_0 ,\mul_ln35_3_reg_595_reg[12]__0_n_0 ,\mul_ln35_3_reg_595_reg[11]__0_n_0 ,\mul_ln35_3_reg_595_reg[10]__0_n_0 ,\mul_ln35_3_reg_595_reg[9]__0_n_0 ,\mul_ln35_3_reg_595_reg[8]__0_n_0 ,\mul_ln35_3_reg_595_reg[7]__0_n_0 ,\mul_ln35_3_reg_595_reg[6]__0_n_0 ,\mul_ln35_3_reg_595_reg[5]__0_n_0 ,\mul_ln35_3_reg_595_reg[4]__0_n_0 ,\mul_ln35_3_reg_595_reg[3]__0_n_0 ,\mul_ln35_3_reg_595_reg[2]__0_n_0 ,\mul_ln35_3_reg_595_reg[1]__0_n_0 ,\mul_ln35_3_reg_595_reg[0]__0_n_0 }),
        .\add_ln35_2_reg_605_reg[31] (mul_ln35_3_reg_595_reg__1),
        .\an32ShiftReg_5_reg[0] (icmp_ln22_reg_556),
        .\ap_CS_fsm_reg[0] ({Q,ap_CS_fsm_pp0_stage9,ap_CS_fsm_pp0_stage8,ap_CS_fsm_pp0_stage7,ap_CS_fsm_pp0_stage6,ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_0_[0] }),
        .\ap_CS_fsm_reg[1] (mem_reg_0_15_0_0_i_12_n_0),
        .\ap_CS_fsm_reg[6] (an32ShiftReg_50),
        .\ap_CS_fsm_reg[8] (mul_32s_32s_32_1_1_U5_n_6),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter10(ap_enable_reg_pp0_iter10),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .\mul_ln35_2_reg_585_reg[14]__0 ({mul_32s_32s_32_1_1_U5_n_36,mul_32s_32s_32_1_1_U5_n_37,mul_32s_32s_32_1_1_U5_n_38,mul_32s_32s_32_1_1_U5_n_39,mul_32s_32s_32_1_1_U5_n_40,mul_32s_32s_32_1_1_U5_n_41,mul_32s_32s_32_1_1_U5_n_42,mul_32s_32s_32_1_1_U5_n_43}),
        .\mul_ln35_2_reg_585_reg[15]__0 ({mul_32s_32s_32_1_1_U5_n_44,mul_32s_32s_32_1_1_U5_n_45,mul_32s_32s_32_1_1_U5_n_46,mul_32s_32s_32_1_1_U5_n_47,mul_32s_32s_32_1_1_U5_n_48,mul_32s_32s_32_1_1_U5_n_49,mul_32s_32s_32_1_1_U5_n_50,mul_32s_32s_32_1_1_U5_n_51}),
        .\mul_ln35_2_reg_585_reg[16]__0 ({mul_32s_32s_32_1_1_U5_n_52,mul_32s_32s_32_1_1_U5_n_53,mul_32s_32s_32_1_1_U5_n_54,mul_32s_32s_32_1_1_U5_n_55,mul_32s_32s_32_1_1_U5_n_56,mul_32s_32s_32_1_1_U5_n_57,mul_32s_32s_32_1_1_U5_n_58,mul_32s_32s_32_1_1_U5_n_59}),
        .\mul_ln35_2_reg_585_reg[16]__0_0 ({mul_32s_32s_32_1_1_U5_n_60,mul_32s_32s_32_1_1_U5_n_61,mul_32s_32s_32_1_1_U5_n_62,mul_32s_32s_32_1_1_U5_n_63,mul_32s_32s_32_1_1_U5_n_64,mul_32s_32s_32_1_1_U5_n_65,mul_32s_32s_32_1_1_U5_n_66,mul_32s_32s_32_1_1_U5_n_67}),
        .\mul_ln35_2_reg_585_reg[6]__0 ({mul_32s_32s_32_1_1_U5_n_21,mul_32s_32s_32_1_1_U5_n_22,mul_32s_32s_32_1_1_U5_n_23,mul_32s_32s_32_1_1_U5_n_24,mul_32s_32s_32_1_1_U5_n_25,mul_32s_32s_32_1_1_U5_n_26,mul_32s_32s_32_1_1_U5_n_27}),
        .\mul_ln35_2_reg_585_reg[7]__0 ({mul_32s_32s_32_1_1_U5_n_28,mul_32s_32s_32_1_1_U5_n_29,mul_32s_32s_32_1_1_U5_n_30,mul_32s_32s_32_1_1_U5_n_31,mul_32s_32s_32_1_1_U5_n_32,mul_32s_32s_32_1_1_U5_n_33,mul_32s_32s_32_1_1_U5_n_34,mul_32s_32s_32_1_1_U5_n_35}),
        .mul_ln35_2_reg_585_reg__1(mul_ln35_2_reg_585_reg__1[30:16]),
        .pstrmInput_TVALID_int_regslice(pstrmInput_TVALID_int_regslice),
        .q00(q00));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_17 mul_32s_32s_32_1_1_U6
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB1(an32ShiftReg_40),
        .CEB2(an32ShiftReg_30),
        .D({mul_32s_32s_32_1_1_U6_n_1,mul_32s_32s_32_1_1_U6_n_2,mul_32s_32s_32_1_1_U6_n_3,mul_32s_32s_32_1_1_U6_n_4,mul_32s_32s_32_1_1_U6_n_5,mul_32s_32s_32_1_1_U6_n_6,mul_32s_32s_32_1_1_U6_n_7,mul_32s_32s_32_1_1_U6_n_8,mul_32s_32s_32_1_1_U6_n_9,mul_32s_32s_32_1_1_U6_n_10,mul_32s_32s_32_1_1_U6_n_11,mul_32s_32s_32_1_1_U6_n_12,mul_32s_32s_32_1_1_U6_n_13,mul_32s_32s_32_1_1_U6_n_14,mul_32s_32s_32_1_1_U6_n_15,mul_32s_32s_32_1_1_U6_n_16,mul_32s_32s_32_1_1_U6_n_17}),
        .DI({mul_32s_32s_32_1_1_U6_n_76,mul_32s_32s_32_1_1_U6_n_77,mul_32s_32s_32_1_1_U6_n_78,mul_32s_32s_32_1_1_U6_n_79,mul_32s_32s_32_1_1_U6_n_80,mul_32s_32s_32_1_1_U6_n_81,mul_32s_32s_32_1_1_U6_n_82}),
        .E(mul_ln35_5_reg_6150),
        .P({mul_ln35_5_reg_615_reg_n_91,mul_ln35_5_reg_615_reg_n_92,mul_ln35_5_reg_615_reg_n_93,mul_ln35_5_reg_615_reg_n_94,mul_ln35_5_reg_615_reg_n_95,mul_ln35_5_reg_615_reg_n_96,mul_ln35_5_reg_615_reg_n_97,mul_ln35_5_reg_615_reg_n_98,mul_ln35_5_reg_615_reg_n_99,mul_ln35_5_reg_615_reg_n_100,mul_ln35_5_reg_615_reg_n_101,mul_ln35_5_reg_615_reg_n_102,mul_ln35_5_reg_615_reg_n_103,mul_ln35_5_reg_615_reg_n_104,mul_ln35_5_reg_615_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U6_n_18,mul_32s_32s_32_1_1_U6_n_19,mul_32s_32s_32_1_1_U6_n_20,mul_32s_32s_32_1_1_U6_n_21,mul_32s_32s_32_1_1_U6_n_22,mul_32s_32s_32_1_1_U6_n_23,mul_32s_32s_32_1_1_U6_n_24,mul_32s_32s_32_1_1_U6_n_25,mul_32s_32s_32_1_1_U6_n_26,mul_32s_32s_32_1_1_U6_n_27,mul_32s_32s_32_1_1_U6_n_28,mul_32s_32s_32_1_1_U6_n_29,mul_32s_32s_32_1_1_U6_n_30,mul_32s_32s_32_1_1_U6_n_31,mul_32s_32s_32_1_1_U6_n_32,mul_32s_32s_32_1_1_U6_n_33,mul_32s_32s_32_1_1_U6_n_34,mul_32s_32s_32_1_1_U6_n_35,mul_32s_32s_32_1_1_U6_n_36,mul_32s_32s_32_1_1_U6_n_37,mul_32s_32s_32_1_1_U6_n_38,mul_32s_32s_32_1_1_U6_n_39,mul_32s_32s_32_1_1_U6_n_40,mul_32s_32s_32_1_1_U6_n_41,mul_32s_32s_32_1_1_U6_n_42,mul_32s_32s_32_1_1_U6_n_43,mul_32s_32s_32_1_1_U6_n_44,mul_32s_32s_32_1_1_U6_n_45,mul_32s_32s_32_1_1_U6_n_46,mul_32s_32s_32_1_1_U6_n_47,mul_32s_32s_32_1_1_U6_n_48,mul_32s_32s_32_1_1_U6_n_49,mul_32s_32s_32_1_1_U6_n_50,mul_32s_32s_32_1_1_U6_n_51,mul_32s_32s_32_1_1_U6_n_52,mul_32s_32s_32_1_1_U6_n_53,mul_32s_32s_32_1_1_U6_n_54,mul_32s_32s_32_1_1_U6_n_55,mul_32s_32s_32_1_1_U6_n_56,mul_32s_32s_32_1_1_U6_n_57,mul_32s_32s_32_1_1_U6_n_58,mul_32s_32s_32_1_1_U6_n_59,mul_32s_32s_32_1_1_U6_n_60,mul_32s_32s_32_1_1_U6_n_61,mul_32s_32s_32_1_1_U6_n_62,mul_32s_32s_32_1_1_U6_n_63,mul_32s_32s_32_1_1_U6_n_64,mul_32s_32s_32_1_1_U6_n_65}),
        .Q(an32ShiftReg_2[16:0]),
        .S({mul_32s_32s_32_1_1_U6_n_69,mul_32s_32s_32_1_1_U6_n_70,mul_32s_32s_32_1_1_U6_n_71,mul_32s_32s_32_1_1_U6_n_72,mul_32s_32s_32_1_1_U6_n_73,mul_32s_32s_32_1_1_U6_n_74,mul_32s_32s_32_1_1_U6_n_75}),
        .ap_clk(ap_clk),
        .dout__3(dout__3[30:16]),
        .\mul_ln35_5_reg_615_reg[0]__0 (icmp_ln22_reg_556),
        .\mul_ln35_5_reg_615_reg[0]__0_0 (ap_CS_fsm_pp0_stage6),
        .\mul_ln35_5_reg_615_reg[16]__0 ({mul_ln35_5_reg_615_reg__1[31:30],mul_ln35_5_reg_615_reg__1[16]}),
        .\mul_ln35_5_reg_615_reg[16]__0_0 ({mul_32s_32s_32_1_1_U6_n_83,mul_32s_32s_32_1_1_U6_n_84,mul_32s_32s_32_1_1_U6_n_85,mul_32s_32s_32_1_1_U6_n_86,mul_32s_32s_32_1_1_U6_n_87,mul_32s_32s_32_1_1_U6_n_88,mul_32s_32s_32_1_1_U6_n_89}),
        .\mul_ln35_5_reg_615_reg[16]__0_1 ({mul_32s_32s_32_1_1_U6_n_90,mul_32s_32s_32_1_1_U6_n_91,mul_32s_32s_32_1_1_U6_n_92,mul_32s_32s_32_1_1_U6_n_93,mul_32s_32s_32_1_1_U6_n_94,mul_32s_32s_32_1_1_U6_n_95,mul_32s_32s_32_1_1_U6_n_96}),
        .mul_ln35_8_reg_645_reg__1(mul_ln35_8_reg_645_reg__1),
        .pstrmOutput_TDATA__94_carry__1_i_16(\mul_ln35_5_reg_615_reg[16]__0_n_0 ),
        .q00(q00));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_18 mul_32s_32s_32_1_1_U7
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB1(an32ShiftReg_20),
        .CEB2(an32ShiftReg_30),
        .D({mul_32s_32s_32_1_1_U7_n_2,mul_32s_32s_32_1_1_U7_n_3,mul_32s_32s_32_1_1_U7_n_4,mul_32s_32s_32_1_1_U7_n_5,mul_32s_32s_32_1_1_U7_n_6,mul_32s_32s_32_1_1_U7_n_7,mul_32s_32s_32_1_1_U7_n_8,mul_32s_32s_32_1_1_U7_n_9,mul_32s_32s_32_1_1_U7_n_10,mul_32s_32s_32_1_1_U7_n_11,mul_32s_32s_32_1_1_U7_n_12,mul_32s_32s_32_1_1_U7_n_13,mul_32s_32s_32_1_1_U7_n_14,mul_32s_32s_32_1_1_U7_n_15,mul_32s_32s_32_1_1_U7_n_16,mul_32s_32s_32_1_1_U7_n_17,mul_32s_32s_32_1_1_U7_n_18}),
        .E(mul_ln35_6_reg_6250),
        .P({mul_ln35_6_reg_625_reg_n_91,mul_ln35_6_reg_625_reg_n_92,mul_ln35_6_reg_625_reg_n_93,mul_ln35_6_reg_625_reg_n_94,mul_ln35_6_reg_625_reg_n_95,mul_ln35_6_reg_625_reg_n_96,mul_ln35_6_reg_625_reg_n_97,mul_ln35_6_reg_625_reg_n_98,mul_ln35_6_reg_625_reg_n_99,mul_ln35_6_reg_625_reg_n_100,mul_ln35_6_reg_625_reg_n_101,mul_ln35_6_reg_625_reg_n_102,mul_ln35_6_reg_625_reg_n_103,mul_ln35_6_reg_625_reg_n_104,mul_ln35_6_reg_625_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U7_n_19,mul_32s_32s_32_1_1_U7_n_20,mul_32s_32s_32_1_1_U7_n_21,mul_32s_32s_32_1_1_U7_n_22,mul_32s_32s_32_1_1_U7_n_23,mul_32s_32s_32_1_1_U7_n_24,mul_32s_32s_32_1_1_U7_n_25,mul_32s_32s_32_1_1_U7_n_26,mul_32s_32s_32_1_1_U7_n_27,mul_32s_32s_32_1_1_U7_n_28,mul_32s_32s_32_1_1_U7_n_29,mul_32s_32s_32_1_1_U7_n_30,mul_32s_32s_32_1_1_U7_n_31,mul_32s_32s_32_1_1_U7_n_32,mul_32s_32s_32_1_1_U7_n_33,mul_32s_32s_32_1_1_U7_n_34,mul_32s_32s_32_1_1_U7_n_35,mul_32s_32s_32_1_1_U7_n_36,mul_32s_32s_32_1_1_U7_n_37,mul_32s_32s_32_1_1_U7_n_38,mul_32s_32s_32_1_1_U7_n_39,mul_32s_32s_32_1_1_U7_n_40,mul_32s_32s_32_1_1_U7_n_41,mul_32s_32s_32_1_1_U7_n_42,mul_32s_32s_32_1_1_U7_n_43,mul_32s_32s_32_1_1_U7_n_44,mul_32s_32s_32_1_1_U7_n_45,mul_32s_32s_32_1_1_U7_n_46,mul_32s_32s_32_1_1_U7_n_47,mul_32s_32s_32_1_1_U7_n_48,mul_32s_32s_32_1_1_U7_n_49,mul_32s_32s_32_1_1_U7_n_50,mul_32s_32s_32_1_1_U7_n_51,mul_32s_32s_32_1_1_U7_n_52,mul_32s_32s_32_1_1_U7_n_53,mul_32s_32s_32_1_1_U7_n_54,mul_32s_32s_32_1_1_U7_n_55,mul_32s_32s_32_1_1_U7_n_56,mul_32s_32s_32_1_1_U7_n_57,mul_32s_32s_32_1_1_U7_n_58,mul_32s_32s_32_1_1_U7_n_59,mul_32s_32s_32_1_1_U7_n_60,mul_32s_32s_32_1_1_U7_n_61,mul_32s_32s_32_1_1_U7_n_62,mul_32s_32s_32_1_1_U7_n_63,mul_32s_32s_32_1_1_U7_n_64,mul_32s_32s_32_1_1_U7_n_65,mul_32s_32s_32_1_1_U7_n_66}),
        .Q(an32ShiftReg_1[16:0]),
        .S({mul_32s_32s_32_1_1_U7_n_82,mul_32s_32s_32_1_1_U7_n_83,mul_32s_32s_32_1_1_U7_n_84,mul_32s_32s_32_1_1_U7_n_85,mul_32s_32s_32_1_1_U7_n_86,mul_32s_32s_32_1_1_U7_n_87,mul_32s_32s_32_1_1_U7_n_88,mul_32s_32s_32_1_1_U7_n_89}),
        .\add_ln35_4_reg_635_reg[23] (\mul_ln35_6_reg_625_reg[16]__0_n_0 ),
        .\an32ShiftReg_3_reg[0] ({ap_CS_fsm_pp0_stage8,ap_CS_fsm_pp0_stage7,\ap_CS_fsm_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .dout__3(dout__3_2),
        .dout_carry__0_0({mul_32s_32s_32_1_1_U7_n_90,mul_32s_32s_32_1_1_U7_n_91,mul_32s_32s_32_1_1_U7_n_92,mul_32s_32s_32_1_1_U7_n_93,mul_32s_32s_32_1_1_U7_n_94,mul_32s_32s_32_1_1_U7_n_95,mul_32s_32s_32_1_1_U7_n_96,mul_32s_32s_32_1_1_U7_n_97}),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .\mul_ln35_6_reg_625_reg[0]__0 (icmp_ln22_reg_556),
        .\mul_ln35_6_reg_625_reg[16]__0 (mul_ln35_6_reg_625_reg__1),
        .q00(q00));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_19 mul_32s_32s_32_1_1_U8
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .Q(an32ShiftReg_0),
        .S({mul_32s_32s_32_1_1_U8_n_17,mul_32s_32s_32_1_1_U8_n_18,mul_32s_32s_32_1_1_U8_n_19,mul_32s_32s_32_1_1_U8_n_20,mul_32s_32s_32_1_1_U8_n_21,mul_32s_32s_32_1_1_U8_n_22,mul_32s_32s_32_1_1_U8_n_23,mul_32s_32s_32_1_1_U8_n_24}),
        .\add_ln35_4_reg_635_reg[15] ({\mul_ln35_6_reg_625_reg[15]__0_n_0 ,\mul_ln35_6_reg_625_reg[14]__0_n_0 ,\mul_ln35_6_reg_625_reg[13]__0_n_0 ,\mul_ln35_6_reg_625_reg[12]__0_n_0 ,\mul_ln35_6_reg_625_reg[11]__0_n_0 ,\mul_ln35_6_reg_625_reg[10]__0_n_0 ,\mul_ln35_6_reg_625_reg[9]__0_n_0 ,\mul_ln35_6_reg_625_reg[8]__0_n_0 ,\mul_ln35_6_reg_625_reg[7]__0_n_0 ,\mul_ln35_6_reg_625_reg[6]__0_n_0 ,\mul_ln35_6_reg_625_reg[5]__0_n_0 ,\mul_ln35_6_reg_625_reg[4]__0_n_0 ,\mul_ln35_6_reg_625_reg[3]__0_n_0 ,\mul_ln35_6_reg_625_reg[2]__0_n_0 ,\mul_ln35_6_reg_625_reg[1]__0_n_0 ,\mul_ln35_6_reg_625_reg[0]__0_n_0 }),
        .\an32ShiftReg_2_reg[0] ({ap_CS_fsm_pp0_stage9,\ap_CS_fsm_reg_n_0_[0] }),
        .\an32ShiftReg_2_reg[0]_0 (icmp_ln22_reg_556),
        .\ap_CS_fsm_reg[9] (an32ShiftReg_20),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .dout__3(dout__3_2),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .\mul_ln35_6_reg_625_reg[15]__0 ({mul_32s_32s_32_1_1_U8_n_25,mul_32s_32s_32_1_1_U8_n_26,mul_32s_32s_32_1_1_U8_n_27,mul_32s_32s_32_1_1_U8_n_28,mul_32s_32s_32_1_1_U8_n_29,mul_32s_32s_32_1_1_U8_n_30,mul_32s_32s_32_1_1_U8_n_31,mul_32s_32s_32_1_1_U8_n_32}),
        .q00(q00));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_20 mul_32s_32s_32_1_1_U9
       (.CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEB1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .D({mul_32s_32s_32_1_1_U9_n_2,mul_32s_32s_32_1_1_U9_n_3,mul_32s_32s_32_1_1_U9_n_4,mul_32s_32s_32_1_1_U9_n_5,mul_32s_32s_32_1_1_U9_n_6,mul_32s_32s_32_1_1_U9_n_7,mul_32s_32s_32_1_1_U9_n_8,mul_32s_32s_32_1_1_U9_n_9,mul_32s_32s_32_1_1_U9_n_10,mul_32s_32s_32_1_1_U9_n_11,mul_32s_32s_32_1_1_U9_n_12,mul_32s_32s_32_1_1_U9_n_13,mul_32s_32s_32_1_1_U9_n_14,mul_32s_32s_32_1_1_U9_n_15,mul_32s_32s_32_1_1_U9_n_16,mul_32s_32s_32_1_1_U9_n_17,mul_32s_32s_32_1_1_U9_n_18}),
        .E(mul_ln35_8_reg_6450),
        .P({mul_ln35_8_reg_645_reg_n_91,mul_ln35_8_reg_645_reg_n_92,mul_ln35_8_reg_645_reg_n_93,mul_ln35_8_reg_645_reg_n_94,mul_ln35_8_reg_645_reg_n_95,mul_ln35_8_reg_645_reg_n_96,mul_ln35_8_reg_645_reg_n_97,mul_ln35_8_reg_645_reg_n_98,mul_ln35_8_reg_645_reg_n_99,mul_ln35_8_reg_645_reg_n_100,mul_ln35_8_reg_645_reg_n_101,mul_ln35_8_reg_645_reg_n_102,mul_ln35_8_reg_645_reg_n_103,mul_ln35_8_reg_645_reg_n_104,mul_ln35_8_reg_645_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U9_n_19,mul_32s_32s_32_1_1_U9_n_20,mul_32s_32s_32_1_1_U9_n_21,mul_32s_32s_32_1_1_U9_n_22,mul_32s_32s_32_1_1_U9_n_23,mul_32s_32s_32_1_1_U9_n_24,mul_32s_32s_32_1_1_U9_n_25,mul_32s_32s_32_1_1_U9_n_26,mul_32s_32s_32_1_1_U9_n_27,mul_32s_32s_32_1_1_U9_n_28,mul_32s_32s_32_1_1_U9_n_29,mul_32s_32s_32_1_1_U9_n_30,mul_32s_32s_32_1_1_U9_n_31,mul_32s_32s_32_1_1_U9_n_32,mul_32s_32s_32_1_1_U9_n_33,mul_32s_32s_32_1_1_U9_n_34,mul_32s_32s_32_1_1_U9_n_35,mul_32s_32s_32_1_1_U9_n_36,mul_32s_32s_32_1_1_U9_n_37,mul_32s_32s_32_1_1_U9_n_38,mul_32s_32s_32_1_1_U9_n_39,mul_32s_32s_32_1_1_U9_n_40,mul_32s_32s_32_1_1_U9_n_41,mul_32s_32s_32_1_1_U9_n_42,mul_32s_32s_32_1_1_U9_n_43,mul_32s_32s_32_1_1_U9_n_44,mul_32s_32s_32_1_1_U9_n_45,mul_32s_32s_32_1_1_U9_n_46,mul_32s_32s_32_1_1_U9_n_47,mul_32s_32s_32_1_1_U9_n_48,mul_32s_32s_32_1_1_U9_n_49,mul_32s_32s_32_1_1_U9_n_50,mul_32s_32s_32_1_1_U9_n_51,mul_32s_32s_32_1_1_U9_n_52,mul_32s_32s_32_1_1_U9_n_53,mul_32s_32s_32_1_1_U9_n_54,mul_32s_32s_32_1_1_U9_n_55,mul_32s_32s_32_1_1_U9_n_56,mul_32s_32s_32_1_1_U9_n_57,mul_32s_32s_32_1_1_U9_n_58,mul_32s_32s_32_1_1_U9_n_59,mul_32s_32s_32_1_1_U9_n_60,mul_32s_32s_32_1_1_U9_n_61,mul_32s_32s_32_1_1_U9_n_62,mul_32s_32s_32_1_1_U9_n_63,mul_32s_32s_32_1_1_U9_n_64,mul_32s_32s_32_1_1_U9_n_65,mul_32s_32s_32_1_1_U9_n_66}),
        .Q(\mul_ln35_8_reg_645_reg[16]__0_n_0 ),
        .S(mul_32s_32s_32_1_1_U9_n_82),
        .\an32ShiftReg_1_reg[0] ({Q,ap_CS_fsm_pp0_stage9,\ap_CS_fsm_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .dout__3(dout__3[31:30]),
        .grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .\mul_ln35_8_reg_645_reg[0]__0 (icmp_ln22_reg_556),
        .\mul_ln35_8_reg_645_reg[16]__0 (mul_ln35_8_reg_645_reg__1),
        .pstrmInput_TDATA_int_regslice(pstrmInput_TDATA_int_regslice[16:0]),
        .pstrmInput_TVALID_int_regslice(pstrmInput_TVALID_int_regslice),
        .pstrmOutput_TDATA__94_carry__2(mul_ln35_5_reg_615_reg__1[31:30]),
        .q00(q00));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln35_2_reg_585_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln35_2_reg_585_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({an32ShiftReg_5[31],an32ShiftReg_5[31],an32ShiftReg_5[31],an32ShiftReg_5[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln35_2_reg_585_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln35_2_reg_585_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln35_2_reg_585_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(an32ShiftReg_60),
        .CEB2(an32ShiftReg_70),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln35_2_reg_5850),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln35_2_reg_585_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln35_2_reg_585_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln35_2_reg_585_reg_n_58,mul_ln35_2_reg_585_reg_n_59,mul_ln35_2_reg_585_reg_n_60,mul_ln35_2_reg_585_reg_n_61,mul_ln35_2_reg_585_reg_n_62,mul_ln35_2_reg_585_reg_n_63,mul_ln35_2_reg_585_reg_n_64,mul_ln35_2_reg_585_reg_n_65,mul_ln35_2_reg_585_reg_n_66,mul_ln35_2_reg_585_reg_n_67,mul_ln35_2_reg_585_reg_n_68,mul_ln35_2_reg_585_reg_n_69,mul_ln35_2_reg_585_reg_n_70,mul_ln35_2_reg_585_reg_n_71,mul_ln35_2_reg_585_reg_n_72,mul_ln35_2_reg_585_reg_n_73,mul_ln35_2_reg_585_reg_n_74,mul_ln35_2_reg_585_reg_n_75,mul_ln35_2_reg_585_reg_n_76,mul_ln35_2_reg_585_reg_n_77,mul_ln35_2_reg_585_reg_n_78,mul_ln35_2_reg_585_reg_n_79,mul_ln35_2_reg_585_reg_n_80,mul_ln35_2_reg_585_reg_n_81,mul_ln35_2_reg_585_reg_n_82,mul_ln35_2_reg_585_reg_n_83,mul_ln35_2_reg_585_reg_n_84,mul_ln35_2_reg_585_reg_n_85,mul_ln35_2_reg_585_reg_n_86,mul_ln35_2_reg_585_reg_n_87,mul_ln35_2_reg_585_reg_n_88,mul_ln35_2_reg_585_reg_n_89,mul_ln35_2_reg_585_reg_n_90,mul_ln35_2_reg_585_reg_n_91,mul_ln35_2_reg_585_reg_n_92,mul_ln35_2_reg_585_reg_n_93,mul_ln35_2_reg_585_reg_n_94,mul_ln35_2_reg_585_reg_n_95,mul_ln35_2_reg_585_reg_n_96,mul_ln35_2_reg_585_reg_n_97,mul_ln35_2_reg_585_reg_n_98,mul_ln35_2_reg_585_reg_n_99,mul_ln35_2_reg_585_reg_n_100,mul_ln35_2_reg_585_reg_n_101,mul_ln35_2_reg_585_reg_n_102,mul_ln35_2_reg_585_reg_n_103,mul_ln35_2_reg_585_reg_n_104,mul_ln35_2_reg_585_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln35_2_reg_585_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln35_2_reg_585_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U3_n_18,mul_32s_32s_32_1_1_U3_n_19,mul_32s_32s_32_1_1_U3_n_20,mul_32s_32s_32_1_1_U3_n_21,mul_32s_32s_32_1_1_U3_n_22,mul_32s_32s_32_1_1_U3_n_23,mul_32s_32s_32_1_1_U3_n_24,mul_32s_32s_32_1_1_U3_n_25,mul_32s_32s_32_1_1_U3_n_26,mul_32s_32s_32_1_1_U3_n_27,mul_32s_32s_32_1_1_U3_n_28,mul_32s_32s_32_1_1_U3_n_29,mul_32s_32s_32_1_1_U3_n_30,mul_32s_32s_32_1_1_U3_n_31,mul_32s_32s_32_1_1_U3_n_32,mul_32s_32s_32_1_1_U3_n_33,mul_32s_32s_32_1_1_U3_n_34,mul_32s_32s_32_1_1_U3_n_35,mul_32s_32s_32_1_1_U3_n_36,mul_32s_32s_32_1_1_U3_n_37,mul_32s_32s_32_1_1_U3_n_38,mul_32s_32s_32_1_1_U3_n_39,mul_32s_32s_32_1_1_U3_n_40,mul_32s_32s_32_1_1_U3_n_41,mul_32s_32s_32_1_1_U3_n_42,mul_32s_32s_32_1_1_U3_n_43,mul_32s_32s_32_1_1_U3_n_44,mul_32s_32s_32_1_1_U3_n_45,mul_32s_32s_32_1_1_U3_n_46,mul_32s_32s_32_1_1_U3_n_47,mul_32s_32s_32_1_1_U3_n_48,mul_32s_32s_32_1_1_U3_n_49,mul_32s_32s_32_1_1_U3_n_50,mul_32s_32s_32_1_1_U3_n_51,mul_32s_32s_32_1_1_U3_n_52,mul_32s_32s_32_1_1_U3_n_53,mul_32s_32s_32_1_1_U3_n_54,mul_32s_32s_32_1_1_U3_n_55,mul_32s_32s_32_1_1_U3_n_56,mul_32s_32s_32_1_1_U3_n_57,mul_32s_32s_32_1_1_U3_n_58,mul_32s_32s_32_1_1_U3_n_59,mul_32s_32s_32_1_1_U3_n_60,mul_32s_32s_32_1_1_U3_n_61,mul_32s_32s_32_1_1_U3_n_62,mul_32s_32s_32_1_1_U3_n_63,mul_32s_32s_32_1_1_U3_n_64,mul_32s_32s_32_1_1_U3_n_65}),
        .PCOUT(NLW_mul_ln35_2_reg_585_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln35_2_reg_585_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln35_2_reg_585_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln35_2_reg_585_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_17),
        .Q(\mul_ln35_2_reg_585_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_7),
        .Q(\mul_ln35_2_reg_585_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_6),
        .Q(\mul_ln35_2_reg_585_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_5),
        .Q(\mul_ln35_2_reg_585_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_4),
        .Q(\mul_ln35_2_reg_585_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_3),
        .Q(\mul_ln35_2_reg_585_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_2),
        .Q(\mul_ln35_2_reg_585_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_1),
        .Q(\mul_ln35_2_reg_585_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_16),
        .Q(\mul_ln35_2_reg_585_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_15),
        .Q(\mul_ln35_2_reg_585_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_14),
        .Q(\mul_ln35_2_reg_585_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_13),
        .Q(\mul_ln35_2_reg_585_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_12),
        .Q(\mul_ln35_2_reg_585_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_11),
        .Q(\mul_ln35_2_reg_585_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_10),
        .Q(\mul_ln35_2_reg_585_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_9),
        .Q(\mul_ln35_2_reg_585_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_2_reg_585_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln35_2_reg_5850),
        .D(mul_32s_32s_32_1_1_U3_n_8),
        .Q(\mul_ln35_2_reg_585_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln35_3_reg_595_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln35_3_reg_595_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({an32ShiftReg_4[31],an32ShiftReg_4[31],an32ShiftReg_4[31],an32ShiftReg_4[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln35_3_reg_595_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln35_3_reg_595_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln35_3_reg_595_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(an32ShiftReg_50),
        .CEB2(an32ShiftReg_60),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln35_3_reg_5950),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln35_3_reg_595_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln35_3_reg_595_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln35_3_reg_595_reg_n_58,mul_ln35_3_reg_595_reg_n_59,mul_ln35_3_reg_595_reg_n_60,mul_ln35_3_reg_595_reg_n_61,mul_ln35_3_reg_595_reg_n_62,mul_ln35_3_reg_595_reg_n_63,mul_ln35_3_reg_595_reg_n_64,mul_ln35_3_reg_595_reg_n_65,mul_ln35_3_reg_595_reg_n_66,mul_ln35_3_reg_595_reg_n_67,mul_ln35_3_reg_595_reg_n_68,mul_ln35_3_reg_595_reg_n_69,mul_ln35_3_reg_595_reg_n_70,mul_ln35_3_reg_595_reg_n_71,mul_ln35_3_reg_595_reg_n_72,mul_ln35_3_reg_595_reg_n_73,mul_ln35_3_reg_595_reg_n_74,mul_ln35_3_reg_595_reg_n_75,mul_ln35_3_reg_595_reg_n_76,mul_ln35_3_reg_595_reg_n_77,mul_ln35_3_reg_595_reg_n_78,mul_ln35_3_reg_595_reg_n_79,mul_ln35_3_reg_595_reg_n_80,mul_ln35_3_reg_595_reg_n_81,mul_ln35_3_reg_595_reg_n_82,mul_ln35_3_reg_595_reg_n_83,mul_ln35_3_reg_595_reg_n_84,mul_ln35_3_reg_595_reg_n_85,mul_ln35_3_reg_595_reg_n_86,mul_ln35_3_reg_595_reg_n_87,mul_ln35_3_reg_595_reg_n_88,mul_ln35_3_reg_595_reg_n_89,mul_ln35_3_reg_595_reg_n_90,mul_ln35_3_reg_595_reg_n_91,mul_ln35_3_reg_595_reg_n_92,mul_ln35_3_reg_595_reg_n_93,mul_ln35_3_reg_595_reg_n_94,mul_ln35_3_reg_595_reg_n_95,mul_ln35_3_reg_595_reg_n_96,mul_ln35_3_reg_595_reg_n_97,mul_ln35_3_reg_595_reg_n_98,mul_ln35_3_reg_595_reg_n_99,mul_ln35_3_reg_595_reg_n_100,mul_ln35_3_reg_595_reg_n_101,mul_ln35_3_reg_595_reg_n_102,mul_ln35_3_reg_595_reg_n_103,mul_ln35_3_reg_595_reg_n_104,mul_ln35_3_reg_595_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln35_3_reg_595_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln35_3_reg_595_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U4_n_19,mul_32s_32s_32_1_1_U4_n_20,mul_32s_32s_32_1_1_U4_n_21,mul_32s_32s_32_1_1_U4_n_22,mul_32s_32s_32_1_1_U4_n_23,mul_32s_32s_32_1_1_U4_n_24,mul_32s_32s_32_1_1_U4_n_25,mul_32s_32s_32_1_1_U4_n_26,mul_32s_32s_32_1_1_U4_n_27,mul_32s_32s_32_1_1_U4_n_28,mul_32s_32s_32_1_1_U4_n_29,mul_32s_32s_32_1_1_U4_n_30,mul_32s_32s_32_1_1_U4_n_31,mul_32s_32s_32_1_1_U4_n_32,mul_32s_32s_32_1_1_U4_n_33,mul_32s_32s_32_1_1_U4_n_34,mul_32s_32s_32_1_1_U4_n_35,mul_32s_32s_32_1_1_U4_n_36,mul_32s_32s_32_1_1_U4_n_37,mul_32s_32s_32_1_1_U4_n_38,mul_32s_32s_32_1_1_U4_n_39,mul_32s_32s_32_1_1_U4_n_40,mul_32s_32s_32_1_1_U4_n_41,mul_32s_32s_32_1_1_U4_n_42,mul_32s_32s_32_1_1_U4_n_43,mul_32s_32s_32_1_1_U4_n_44,mul_32s_32s_32_1_1_U4_n_45,mul_32s_32s_32_1_1_U4_n_46,mul_32s_32s_32_1_1_U4_n_47,mul_32s_32s_32_1_1_U4_n_48,mul_32s_32s_32_1_1_U4_n_49,mul_32s_32s_32_1_1_U4_n_50,mul_32s_32s_32_1_1_U4_n_51,mul_32s_32s_32_1_1_U4_n_52,mul_32s_32s_32_1_1_U4_n_53,mul_32s_32s_32_1_1_U4_n_54,mul_32s_32s_32_1_1_U4_n_55,mul_32s_32s_32_1_1_U4_n_56,mul_32s_32s_32_1_1_U4_n_57,mul_32s_32s_32_1_1_U4_n_58,mul_32s_32s_32_1_1_U4_n_59,mul_32s_32s_32_1_1_U4_n_60,mul_32s_32s_32_1_1_U4_n_61,mul_32s_32s_32_1_1_U4_n_62,mul_32s_32s_32_1_1_U4_n_63,mul_32s_32s_32_1_1_U4_n_64,mul_32s_32s_32_1_1_U4_n_65,mul_32s_32s_32_1_1_U4_n_66}),
        .PCOUT(NLW_mul_ln35_3_reg_595_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln35_3_reg_595_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln35_3_reg_595_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln35_3_reg_595_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_18),
        .Q(\mul_ln35_3_reg_595_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_8),
        .Q(\mul_ln35_3_reg_595_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_7),
        .Q(\mul_ln35_3_reg_595_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_6),
        .Q(\mul_ln35_3_reg_595_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_5),
        .Q(\mul_ln35_3_reg_595_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_4),
        .Q(\mul_ln35_3_reg_595_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_3),
        .Q(\mul_ln35_3_reg_595_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_2),
        .Q(\mul_ln35_3_reg_595_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_17),
        .Q(\mul_ln35_3_reg_595_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_16),
        .Q(\mul_ln35_3_reg_595_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_15),
        .Q(\mul_ln35_3_reg_595_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_14),
        .Q(\mul_ln35_3_reg_595_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_13),
        .Q(\mul_ln35_3_reg_595_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_12),
        .Q(\mul_ln35_3_reg_595_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_11),
        .Q(\mul_ln35_3_reg_595_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_10),
        .Q(\mul_ln35_3_reg_595_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_3_reg_595_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln35_3_reg_5950),
        .D(mul_32s_32s_32_1_1_U4_n_9),
        .Q(\mul_ln35_3_reg_595_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln35_5_reg_615_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln35_5_reg_615_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({an32ShiftReg_2[31],an32ShiftReg_2[31],an32ShiftReg_2[31],an32ShiftReg_2[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln35_5_reg_615_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln35_5_reg_615_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln35_5_reg_615_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(an32ShiftReg_30),
        .CEB2(an32ShiftReg_40),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln35_5_reg_6150),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln35_5_reg_615_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln35_5_reg_615_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln35_5_reg_615_reg_n_58,mul_ln35_5_reg_615_reg_n_59,mul_ln35_5_reg_615_reg_n_60,mul_ln35_5_reg_615_reg_n_61,mul_ln35_5_reg_615_reg_n_62,mul_ln35_5_reg_615_reg_n_63,mul_ln35_5_reg_615_reg_n_64,mul_ln35_5_reg_615_reg_n_65,mul_ln35_5_reg_615_reg_n_66,mul_ln35_5_reg_615_reg_n_67,mul_ln35_5_reg_615_reg_n_68,mul_ln35_5_reg_615_reg_n_69,mul_ln35_5_reg_615_reg_n_70,mul_ln35_5_reg_615_reg_n_71,mul_ln35_5_reg_615_reg_n_72,mul_ln35_5_reg_615_reg_n_73,mul_ln35_5_reg_615_reg_n_74,mul_ln35_5_reg_615_reg_n_75,mul_ln35_5_reg_615_reg_n_76,mul_ln35_5_reg_615_reg_n_77,mul_ln35_5_reg_615_reg_n_78,mul_ln35_5_reg_615_reg_n_79,mul_ln35_5_reg_615_reg_n_80,mul_ln35_5_reg_615_reg_n_81,mul_ln35_5_reg_615_reg_n_82,mul_ln35_5_reg_615_reg_n_83,mul_ln35_5_reg_615_reg_n_84,mul_ln35_5_reg_615_reg_n_85,mul_ln35_5_reg_615_reg_n_86,mul_ln35_5_reg_615_reg_n_87,mul_ln35_5_reg_615_reg_n_88,mul_ln35_5_reg_615_reg_n_89,mul_ln35_5_reg_615_reg_n_90,mul_ln35_5_reg_615_reg_n_91,mul_ln35_5_reg_615_reg_n_92,mul_ln35_5_reg_615_reg_n_93,mul_ln35_5_reg_615_reg_n_94,mul_ln35_5_reg_615_reg_n_95,mul_ln35_5_reg_615_reg_n_96,mul_ln35_5_reg_615_reg_n_97,mul_ln35_5_reg_615_reg_n_98,mul_ln35_5_reg_615_reg_n_99,mul_ln35_5_reg_615_reg_n_100,mul_ln35_5_reg_615_reg_n_101,mul_ln35_5_reg_615_reg_n_102,mul_ln35_5_reg_615_reg_n_103,mul_ln35_5_reg_615_reg_n_104,mul_ln35_5_reg_615_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln35_5_reg_615_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln35_5_reg_615_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U6_n_18,mul_32s_32s_32_1_1_U6_n_19,mul_32s_32s_32_1_1_U6_n_20,mul_32s_32s_32_1_1_U6_n_21,mul_32s_32s_32_1_1_U6_n_22,mul_32s_32s_32_1_1_U6_n_23,mul_32s_32s_32_1_1_U6_n_24,mul_32s_32s_32_1_1_U6_n_25,mul_32s_32s_32_1_1_U6_n_26,mul_32s_32s_32_1_1_U6_n_27,mul_32s_32s_32_1_1_U6_n_28,mul_32s_32s_32_1_1_U6_n_29,mul_32s_32s_32_1_1_U6_n_30,mul_32s_32s_32_1_1_U6_n_31,mul_32s_32s_32_1_1_U6_n_32,mul_32s_32s_32_1_1_U6_n_33,mul_32s_32s_32_1_1_U6_n_34,mul_32s_32s_32_1_1_U6_n_35,mul_32s_32s_32_1_1_U6_n_36,mul_32s_32s_32_1_1_U6_n_37,mul_32s_32s_32_1_1_U6_n_38,mul_32s_32s_32_1_1_U6_n_39,mul_32s_32s_32_1_1_U6_n_40,mul_32s_32s_32_1_1_U6_n_41,mul_32s_32s_32_1_1_U6_n_42,mul_32s_32s_32_1_1_U6_n_43,mul_32s_32s_32_1_1_U6_n_44,mul_32s_32s_32_1_1_U6_n_45,mul_32s_32s_32_1_1_U6_n_46,mul_32s_32s_32_1_1_U6_n_47,mul_32s_32s_32_1_1_U6_n_48,mul_32s_32s_32_1_1_U6_n_49,mul_32s_32s_32_1_1_U6_n_50,mul_32s_32s_32_1_1_U6_n_51,mul_32s_32s_32_1_1_U6_n_52,mul_32s_32s_32_1_1_U6_n_53,mul_32s_32s_32_1_1_U6_n_54,mul_32s_32s_32_1_1_U6_n_55,mul_32s_32s_32_1_1_U6_n_56,mul_32s_32s_32_1_1_U6_n_57,mul_32s_32s_32_1_1_U6_n_58,mul_32s_32s_32_1_1_U6_n_59,mul_32s_32s_32_1_1_U6_n_60,mul_32s_32s_32_1_1_U6_n_61,mul_32s_32s_32_1_1_U6_n_62,mul_32s_32s_32_1_1_U6_n_63,mul_32s_32s_32_1_1_U6_n_64,mul_32s_32s_32_1_1_U6_n_65}),
        .PCOUT(NLW_mul_ln35_5_reg_615_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln35_5_reg_615_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln35_5_reg_615_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln35_5_reg_615_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_17),
        .Q(\mul_ln35_5_reg_615_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_7),
        .Q(\mul_ln35_5_reg_615_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_6),
        .Q(\mul_ln35_5_reg_615_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_5),
        .Q(\mul_ln35_5_reg_615_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_4),
        .Q(\mul_ln35_5_reg_615_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_3),
        .Q(\mul_ln35_5_reg_615_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_2),
        .Q(\mul_ln35_5_reg_615_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_1),
        .Q(\mul_ln35_5_reg_615_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_16),
        .Q(\mul_ln35_5_reg_615_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_15),
        .Q(\mul_ln35_5_reg_615_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_14),
        .Q(\mul_ln35_5_reg_615_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_13),
        .Q(\mul_ln35_5_reg_615_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_12),
        .Q(\mul_ln35_5_reg_615_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_11),
        .Q(\mul_ln35_5_reg_615_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_10),
        .Q(\mul_ln35_5_reg_615_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_9),
        .Q(\mul_ln35_5_reg_615_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_5_reg_615_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln35_5_reg_6150),
        .D(mul_32s_32s_32_1_1_U6_n_8),
        .Q(\mul_ln35_5_reg_615_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln35_6_reg_625_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln35_6_reg_625_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({an32ShiftReg_1[31],an32ShiftReg_1[31],an32ShiftReg_1[31],an32ShiftReg_1[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln35_6_reg_625_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln35_6_reg_625_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln35_6_reg_625_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(an32ShiftReg_20),
        .CEB2(an32ShiftReg_30),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln35_6_reg_6250),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln35_6_reg_625_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln35_6_reg_625_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln35_6_reg_625_reg_n_58,mul_ln35_6_reg_625_reg_n_59,mul_ln35_6_reg_625_reg_n_60,mul_ln35_6_reg_625_reg_n_61,mul_ln35_6_reg_625_reg_n_62,mul_ln35_6_reg_625_reg_n_63,mul_ln35_6_reg_625_reg_n_64,mul_ln35_6_reg_625_reg_n_65,mul_ln35_6_reg_625_reg_n_66,mul_ln35_6_reg_625_reg_n_67,mul_ln35_6_reg_625_reg_n_68,mul_ln35_6_reg_625_reg_n_69,mul_ln35_6_reg_625_reg_n_70,mul_ln35_6_reg_625_reg_n_71,mul_ln35_6_reg_625_reg_n_72,mul_ln35_6_reg_625_reg_n_73,mul_ln35_6_reg_625_reg_n_74,mul_ln35_6_reg_625_reg_n_75,mul_ln35_6_reg_625_reg_n_76,mul_ln35_6_reg_625_reg_n_77,mul_ln35_6_reg_625_reg_n_78,mul_ln35_6_reg_625_reg_n_79,mul_ln35_6_reg_625_reg_n_80,mul_ln35_6_reg_625_reg_n_81,mul_ln35_6_reg_625_reg_n_82,mul_ln35_6_reg_625_reg_n_83,mul_ln35_6_reg_625_reg_n_84,mul_ln35_6_reg_625_reg_n_85,mul_ln35_6_reg_625_reg_n_86,mul_ln35_6_reg_625_reg_n_87,mul_ln35_6_reg_625_reg_n_88,mul_ln35_6_reg_625_reg_n_89,mul_ln35_6_reg_625_reg_n_90,mul_ln35_6_reg_625_reg_n_91,mul_ln35_6_reg_625_reg_n_92,mul_ln35_6_reg_625_reg_n_93,mul_ln35_6_reg_625_reg_n_94,mul_ln35_6_reg_625_reg_n_95,mul_ln35_6_reg_625_reg_n_96,mul_ln35_6_reg_625_reg_n_97,mul_ln35_6_reg_625_reg_n_98,mul_ln35_6_reg_625_reg_n_99,mul_ln35_6_reg_625_reg_n_100,mul_ln35_6_reg_625_reg_n_101,mul_ln35_6_reg_625_reg_n_102,mul_ln35_6_reg_625_reg_n_103,mul_ln35_6_reg_625_reg_n_104,mul_ln35_6_reg_625_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln35_6_reg_625_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln35_6_reg_625_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U7_n_19,mul_32s_32s_32_1_1_U7_n_20,mul_32s_32s_32_1_1_U7_n_21,mul_32s_32s_32_1_1_U7_n_22,mul_32s_32s_32_1_1_U7_n_23,mul_32s_32s_32_1_1_U7_n_24,mul_32s_32s_32_1_1_U7_n_25,mul_32s_32s_32_1_1_U7_n_26,mul_32s_32s_32_1_1_U7_n_27,mul_32s_32s_32_1_1_U7_n_28,mul_32s_32s_32_1_1_U7_n_29,mul_32s_32s_32_1_1_U7_n_30,mul_32s_32s_32_1_1_U7_n_31,mul_32s_32s_32_1_1_U7_n_32,mul_32s_32s_32_1_1_U7_n_33,mul_32s_32s_32_1_1_U7_n_34,mul_32s_32s_32_1_1_U7_n_35,mul_32s_32s_32_1_1_U7_n_36,mul_32s_32s_32_1_1_U7_n_37,mul_32s_32s_32_1_1_U7_n_38,mul_32s_32s_32_1_1_U7_n_39,mul_32s_32s_32_1_1_U7_n_40,mul_32s_32s_32_1_1_U7_n_41,mul_32s_32s_32_1_1_U7_n_42,mul_32s_32s_32_1_1_U7_n_43,mul_32s_32s_32_1_1_U7_n_44,mul_32s_32s_32_1_1_U7_n_45,mul_32s_32s_32_1_1_U7_n_46,mul_32s_32s_32_1_1_U7_n_47,mul_32s_32s_32_1_1_U7_n_48,mul_32s_32s_32_1_1_U7_n_49,mul_32s_32s_32_1_1_U7_n_50,mul_32s_32s_32_1_1_U7_n_51,mul_32s_32s_32_1_1_U7_n_52,mul_32s_32s_32_1_1_U7_n_53,mul_32s_32s_32_1_1_U7_n_54,mul_32s_32s_32_1_1_U7_n_55,mul_32s_32s_32_1_1_U7_n_56,mul_32s_32s_32_1_1_U7_n_57,mul_32s_32s_32_1_1_U7_n_58,mul_32s_32s_32_1_1_U7_n_59,mul_32s_32s_32_1_1_U7_n_60,mul_32s_32s_32_1_1_U7_n_61,mul_32s_32s_32_1_1_U7_n_62,mul_32s_32s_32_1_1_U7_n_63,mul_32s_32s_32_1_1_U7_n_64,mul_32s_32s_32_1_1_U7_n_65,mul_32s_32s_32_1_1_U7_n_66}),
        .PCOUT(NLW_mul_ln35_6_reg_625_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln35_6_reg_625_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln35_6_reg_625_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln35_6_reg_625_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_18),
        .Q(\mul_ln35_6_reg_625_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_8),
        .Q(\mul_ln35_6_reg_625_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_7),
        .Q(\mul_ln35_6_reg_625_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_6),
        .Q(\mul_ln35_6_reg_625_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_5),
        .Q(\mul_ln35_6_reg_625_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_4),
        .Q(\mul_ln35_6_reg_625_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_3),
        .Q(\mul_ln35_6_reg_625_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_2),
        .Q(\mul_ln35_6_reg_625_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_17),
        .Q(\mul_ln35_6_reg_625_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_16),
        .Q(\mul_ln35_6_reg_625_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_15),
        .Q(\mul_ln35_6_reg_625_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_14),
        .Q(\mul_ln35_6_reg_625_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_13),
        .Q(\mul_ln35_6_reg_625_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_12),
        .Q(\mul_ln35_6_reg_625_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_11),
        .Q(\mul_ln35_6_reg_625_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_10),
        .Q(\mul_ln35_6_reg_625_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_6_reg_625_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln35_6_reg_6250),
        .D(mul_32s_32s_32_1_1_U7_n_9),
        .Q(\mul_ln35_6_reg_625_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln35_8_reg_645_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln35_8_reg_645_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({pstrmInput_TDATA_int_regslice[31],pstrmInput_TDATA_int_regslice[31],pstrmInput_TDATA_int_regslice[31],pstrmInput_TDATA_int_regslice[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln35_8_reg_645_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln35_8_reg_645_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln35_8_reg_645_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .CEB2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln35_8_reg_6450),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln35_8_reg_645_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln35_8_reg_645_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln35_8_reg_645_reg_n_58,mul_ln35_8_reg_645_reg_n_59,mul_ln35_8_reg_645_reg_n_60,mul_ln35_8_reg_645_reg_n_61,mul_ln35_8_reg_645_reg_n_62,mul_ln35_8_reg_645_reg_n_63,mul_ln35_8_reg_645_reg_n_64,mul_ln35_8_reg_645_reg_n_65,mul_ln35_8_reg_645_reg_n_66,mul_ln35_8_reg_645_reg_n_67,mul_ln35_8_reg_645_reg_n_68,mul_ln35_8_reg_645_reg_n_69,mul_ln35_8_reg_645_reg_n_70,mul_ln35_8_reg_645_reg_n_71,mul_ln35_8_reg_645_reg_n_72,mul_ln35_8_reg_645_reg_n_73,mul_ln35_8_reg_645_reg_n_74,mul_ln35_8_reg_645_reg_n_75,mul_ln35_8_reg_645_reg_n_76,mul_ln35_8_reg_645_reg_n_77,mul_ln35_8_reg_645_reg_n_78,mul_ln35_8_reg_645_reg_n_79,mul_ln35_8_reg_645_reg_n_80,mul_ln35_8_reg_645_reg_n_81,mul_ln35_8_reg_645_reg_n_82,mul_ln35_8_reg_645_reg_n_83,mul_ln35_8_reg_645_reg_n_84,mul_ln35_8_reg_645_reg_n_85,mul_ln35_8_reg_645_reg_n_86,mul_ln35_8_reg_645_reg_n_87,mul_ln35_8_reg_645_reg_n_88,mul_ln35_8_reg_645_reg_n_89,mul_ln35_8_reg_645_reg_n_90,mul_ln35_8_reg_645_reg_n_91,mul_ln35_8_reg_645_reg_n_92,mul_ln35_8_reg_645_reg_n_93,mul_ln35_8_reg_645_reg_n_94,mul_ln35_8_reg_645_reg_n_95,mul_ln35_8_reg_645_reg_n_96,mul_ln35_8_reg_645_reg_n_97,mul_ln35_8_reg_645_reg_n_98,mul_ln35_8_reg_645_reg_n_99,mul_ln35_8_reg_645_reg_n_100,mul_ln35_8_reg_645_reg_n_101,mul_ln35_8_reg_645_reg_n_102,mul_ln35_8_reg_645_reg_n_103,mul_ln35_8_reg_645_reg_n_104,mul_ln35_8_reg_645_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln35_8_reg_645_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln35_8_reg_645_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U9_n_19,mul_32s_32s_32_1_1_U9_n_20,mul_32s_32s_32_1_1_U9_n_21,mul_32s_32s_32_1_1_U9_n_22,mul_32s_32s_32_1_1_U9_n_23,mul_32s_32s_32_1_1_U9_n_24,mul_32s_32s_32_1_1_U9_n_25,mul_32s_32s_32_1_1_U9_n_26,mul_32s_32s_32_1_1_U9_n_27,mul_32s_32s_32_1_1_U9_n_28,mul_32s_32s_32_1_1_U9_n_29,mul_32s_32s_32_1_1_U9_n_30,mul_32s_32s_32_1_1_U9_n_31,mul_32s_32s_32_1_1_U9_n_32,mul_32s_32s_32_1_1_U9_n_33,mul_32s_32s_32_1_1_U9_n_34,mul_32s_32s_32_1_1_U9_n_35,mul_32s_32s_32_1_1_U9_n_36,mul_32s_32s_32_1_1_U9_n_37,mul_32s_32s_32_1_1_U9_n_38,mul_32s_32s_32_1_1_U9_n_39,mul_32s_32s_32_1_1_U9_n_40,mul_32s_32s_32_1_1_U9_n_41,mul_32s_32s_32_1_1_U9_n_42,mul_32s_32s_32_1_1_U9_n_43,mul_32s_32s_32_1_1_U9_n_44,mul_32s_32s_32_1_1_U9_n_45,mul_32s_32s_32_1_1_U9_n_46,mul_32s_32s_32_1_1_U9_n_47,mul_32s_32s_32_1_1_U9_n_48,mul_32s_32s_32_1_1_U9_n_49,mul_32s_32s_32_1_1_U9_n_50,mul_32s_32s_32_1_1_U9_n_51,mul_32s_32s_32_1_1_U9_n_52,mul_32s_32s_32_1_1_U9_n_53,mul_32s_32s_32_1_1_U9_n_54,mul_32s_32s_32_1_1_U9_n_55,mul_32s_32s_32_1_1_U9_n_56,mul_32s_32s_32_1_1_U9_n_57,mul_32s_32s_32_1_1_U9_n_58,mul_32s_32s_32_1_1_U9_n_59,mul_32s_32s_32_1_1_U9_n_60,mul_32s_32s_32_1_1_U9_n_61,mul_32s_32s_32_1_1_U9_n_62,mul_32s_32s_32_1_1_U9_n_63,mul_32s_32s_32_1_1_U9_n_64,mul_32s_32s_32_1_1_U9_n_65,mul_32s_32s_32_1_1_U9_n_66}),
        .PCOUT(NLW_mul_ln35_8_reg_645_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln35_8_reg_645_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln35_8_reg_645_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln35_8_reg_645_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_18),
        .Q(\mul_ln35_8_reg_645_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_8),
        .Q(\mul_ln35_8_reg_645_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_7),
        .Q(\mul_ln35_8_reg_645_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_6),
        .Q(\mul_ln35_8_reg_645_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_5),
        .Q(\mul_ln35_8_reg_645_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_4),
        .Q(\mul_ln35_8_reg_645_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_3),
        .Q(\mul_ln35_8_reg_645_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_2),
        .Q(\mul_ln35_8_reg_645_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_17),
        .Q(\mul_ln35_8_reg_645_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_16),
        .Q(\mul_ln35_8_reg_645_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_15),
        .Q(\mul_ln35_8_reg_645_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_14),
        .Q(\mul_ln35_8_reg_645_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_13),
        .Q(\mul_ln35_8_reg_645_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_12),
        .Q(\mul_ln35_8_reg_645_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_11),
        .Q(\mul_ln35_8_reg_645_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_10),
        .Q(\mul_ln35_8_reg_645_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_8_reg_645_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln35_8_reg_6450),
        .D(mul_32s_32s_32_1_1_U9_n_9),
        .Q(\mul_ln35_8_reg_645_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln35_9_reg_690_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln35_9_reg_690_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({pstrmInput_TDATA_int_regslice[31],pstrmInput_TDATA_int_regslice[31],pstrmInput_TDATA_int_regslice[31],pstrmInput_TDATA_int_regslice[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln35_9_reg_690_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln35_9_reg_690_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln35_9_reg_690_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmInput_TREADY),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln35_9_reg_6900),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln35_9_reg_690_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln35_9_reg_690_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln35_9_reg_690_reg_n_58,mul_ln35_9_reg_690_reg_n_59,mul_ln35_9_reg_690_reg_n_60,mul_ln35_9_reg_690_reg_n_61,mul_ln35_9_reg_690_reg_n_62,mul_ln35_9_reg_690_reg_n_63,mul_ln35_9_reg_690_reg_n_64,mul_ln35_9_reg_690_reg_n_65,mul_ln35_9_reg_690_reg_n_66,mul_ln35_9_reg_690_reg_n_67,mul_ln35_9_reg_690_reg_n_68,mul_ln35_9_reg_690_reg_n_69,mul_ln35_9_reg_690_reg_n_70,mul_ln35_9_reg_690_reg_n_71,mul_ln35_9_reg_690_reg_n_72,mul_ln35_9_reg_690_reg_n_73,mul_ln35_9_reg_690_reg_n_74,mul_ln35_9_reg_690_reg_n_75,mul_ln35_9_reg_690_reg_n_76,mul_ln35_9_reg_690_reg_n_77,mul_ln35_9_reg_690_reg_n_78,mul_ln35_9_reg_690_reg_n_79,mul_ln35_9_reg_690_reg_n_80,mul_ln35_9_reg_690_reg_n_81,mul_ln35_9_reg_690_reg_n_82,mul_ln35_9_reg_690_reg_n_83,mul_ln35_9_reg_690_reg_n_84,mul_ln35_9_reg_690_reg_n_85,mul_ln35_9_reg_690_reg_n_86,mul_ln35_9_reg_690_reg_n_87,mul_ln35_9_reg_690_reg_n_88,mul_ln35_9_reg_690_reg_n_89,mul_ln35_9_reg_690_reg_n_90,mul_ln35_9_reg_690_reg_n_91,mul_ln35_9_reg_690_reg_n_92,mul_ln35_9_reg_690_reg_n_93,mul_ln35_9_reg_690_reg_n_94,mul_ln35_9_reg_690_reg_n_95,mul_ln35_9_reg_690_reg_n_96,mul_ln35_9_reg_690_reg_n_97,mul_ln35_9_reg_690_reg_n_98,mul_ln35_9_reg_690_reg_n_99,mul_ln35_9_reg_690_reg_n_100,mul_ln35_9_reg_690_reg_n_101,mul_ln35_9_reg_690_reg_n_102,mul_ln35_9_reg_690_reg_n_103,mul_ln35_9_reg_690_reg_n_104,mul_ln35_9_reg_690_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln35_9_reg_690_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln35_9_reg_690_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U10_n_17,mul_32s_32s_32_1_1_U10_n_18,mul_32s_32s_32_1_1_U10_n_19,mul_32s_32s_32_1_1_U10_n_20,mul_32s_32s_32_1_1_U10_n_21,mul_32s_32s_32_1_1_U10_n_22,mul_32s_32s_32_1_1_U10_n_23,mul_32s_32s_32_1_1_U10_n_24,mul_32s_32s_32_1_1_U10_n_25,mul_32s_32s_32_1_1_U10_n_26,mul_32s_32s_32_1_1_U10_n_27,mul_32s_32s_32_1_1_U10_n_28,mul_32s_32s_32_1_1_U10_n_29,mul_32s_32s_32_1_1_U10_n_30,mul_32s_32s_32_1_1_U10_n_31,mul_32s_32s_32_1_1_U10_n_32,mul_32s_32s_32_1_1_U10_n_33,mul_32s_32s_32_1_1_U10_n_34,mul_32s_32s_32_1_1_U10_n_35,mul_32s_32s_32_1_1_U10_n_36,mul_32s_32s_32_1_1_U10_n_37,mul_32s_32s_32_1_1_U10_n_38,mul_32s_32s_32_1_1_U10_n_39,mul_32s_32s_32_1_1_U10_n_40,mul_32s_32s_32_1_1_U10_n_41,mul_32s_32s_32_1_1_U10_n_42,mul_32s_32s_32_1_1_U10_n_43,mul_32s_32s_32_1_1_U10_n_44,mul_32s_32s_32_1_1_U10_n_45,mul_32s_32s_32_1_1_U10_n_46,mul_32s_32s_32_1_1_U10_n_47,mul_32s_32s_32_1_1_U10_n_48,mul_32s_32s_32_1_1_U10_n_49,mul_32s_32s_32_1_1_U10_n_50,mul_32s_32s_32_1_1_U10_n_51,mul_32s_32s_32_1_1_U10_n_52,mul_32s_32s_32_1_1_U10_n_53,mul_32s_32s_32_1_1_U10_n_54,mul_32s_32s_32_1_1_U10_n_55,mul_32s_32s_32_1_1_U10_n_56,mul_32s_32s_32_1_1_U10_n_57,mul_32s_32s_32_1_1_U10_n_58,mul_32s_32s_32_1_1_U10_n_59,mul_32s_32s_32_1_1_U10_n_60,mul_32s_32s_32_1_1_U10_n_61,mul_32s_32s_32_1_1_U10_n_62,mul_32s_32s_32_1_1_U10_n_63,mul_32s_32s_32_1_1_U10_n_64}),
        .PCOUT(NLW_mul_ln35_9_reg_690_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln35_9_reg_690_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln35_9_reg_690_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln35_9_reg_690_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_16),
        .Q(\mul_ln35_9_reg_690_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_6),
        .Q(\mul_ln35_9_reg_690_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_5),
        .Q(\mul_ln35_9_reg_690_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_4),
        .Q(\mul_ln35_9_reg_690_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_3),
        .Q(\mul_ln35_9_reg_690_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_2),
        .Q(\mul_ln35_9_reg_690_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_1),
        .Q(\mul_ln35_9_reg_690_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_0),
        .Q(\mul_ln35_9_reg_690_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_15),
        .Q(\mul_ln35_9_reg_690_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_14),
        .Q(\mul_ln35_9_reg_690_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_13),
        .Q(\mul_ln35_9_reg_690_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_12),
        .Q(\mul_ln35_9_reg_690_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_11),
        .Q(\mul_ln35_9_reg_690_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_10),
        .Q(\mul_ln35_9_reg_690_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_9),
        .Q(\mul_ln35_9_reg_690_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_8),
        .Q(\mul_ln35_9_reg_690_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_9_reg_690_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(mul_32s_32s_32_1_1_U10_n_7),
        .Q(\mul_ln35_9_reg_690_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln35_reg_565_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln35_reg_565_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({an32ShiftReg_7[31],an32ShiftReg_7[31],an32ShiftReg_7[31],an32ShiftReg_7[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln35_reg_565_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln35_reg_565_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln35_reg_565_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_an32Coef_ce0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(an32ShiftReg_80),
        .CEB2(an32ShiftReg_90),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln35_reg_5650),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln35_reg_565_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln35_reg_565_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln35_reg_565_reg_n_58,mul_ln35_reg_565_reg_n_59,mul_ln35_reg_565_reg_n_60,mul_ln35_reg_565_reg_n_61,mul_ln35_reg_565_reg_n_62,mul_ln35_reg_565_reg_n_63,mul_ln35_reg_565_reg_n_64,mul_ln35_reg_565_reg_n_65,mul_ln35_reg_565_reg_n_66,mul_ln35_reg_565_reg_n_67,mul_ln35_reg_565_reg_n_68,mul_ln35_reg_565_reg_n_69,mul_ln35_reg_565_reg_n_70,mul_ln35_reg_565_reg_n_71,mul_ln35_reg_565_reg_n_72,mul_ln35_reg_565_reg_n_73,mul_ln35_reg_565_reg_n_74,mul_ln35_reg_565_reg_n_75,mul_ln35_reg_565_reg_n_76,mul_ln35_reg_565_reg_n_77,mul_ln35_reg_565_reg_n_78,mul_ln35_reg_565_reg_n_79,mul_ln35_reg_565_reg_n_80,mul_ln35_reg_565_reg_n_81,mul_ln35_reg_565_reg_n_82,mul_ln35_reg_565_reg_n_83,mul_ln35_reg_565_reg_n_84,mul_ln35_reg_565_reg_n_85,mul_ln35_reg_565_reg_n_86,mul_ln35_reg_565_reg_n_87,mul_ln35_reg_565_reg_n_88,mul_ln35_reg_565_reg_n_89,mul_ln35_reg_565_reg_n_90,mul_ln35_reg_565_reg_n_91,mul_ln35_reg_565_reg_n_92,mul_ln35_reg_565_reg_n_93,mul_ln35_reg_565_reg_n_94,mul_ln35_reg_565_reg_n_95,mul_ln35_reg_565_reg_n_96,mul_ln35_reg_565_reg_n_97,mul_ln35_reg_565_reg_n_98,mul_ln35_reg_565_reg_n_99,mul_ln35_reg_565_reg_n_100,mul_ln35_reg_565_reg_n_101,mul_ln35_reg_565_reg_n_102,mul_ln35_reg_565_reg_n_103,mul_ln35_reg_565_reg_n_104,mul_ln35_reg_565_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln35_reg_565_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln35_reg_565_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U1_n_19,mul_32s_32s_32_1_1_U1_n_20,mul_32s_32s_32_1_1_U1_n_21,mul_32s_32s_32_1_1_U1_n_22,mul_32s_32s_32_1_1_U1_n_23,mul_32s_32s_32_1_1_U1_n_24,mul_32s_32s_32_1_1_U1_n_25,mul_32s_32s_32_1_1_U1_n_26,mul_32s_32s_32_1_1_U1_n_27,mul_32s_32s_32_1_1_U1_n_28,mul_32s_32s_32_1_1_U1_n_29,mul_32s_32s_32_1_1_U1_n_30,mul_32s_32s_32_1_1_U1_n_31,mul_32s_32s_32_1_1_U1_n_32,mul_32s_32s_32_1_1_U1_n_33,mul_32s_32s_32_1_1_U1_n_34,mul_32s_32s_32_1_1_U1_n_35,mul_32s_32s_32_1_1_U1_n_36,mul_32s_32s_32_1_1_U1_n_37,mul_32s_32s_32_1_1_U1_n_38,mul_32s_32s_32_1_1_U1_n_39,mul_32s_32s_32_1_1_U1_n_40,mul_32s_32s_32_1_1_U1_n_41,mul_32s_32s_32_1_1_U1_n_42,mul_32s_32s_32_1_1_U1_n_43,mul_32s_32s_32_1_1_U1_n_44,mul_32s_32s_32_1_1_U1_n_45,mul_32s_32s_32_1_1_U1_n_46,mul_32s_32s_32_1_1_U1_n_47,mul_32s_32s_32_1_1_U1_n_48,mul_32s_32s_32_1_1_U1_n_49,mul_32s_32s_32_1_1_U1_n_50,mul_32s_32s_32_1_1_U1_n_51,mul_32s_32s_32_1_1_U1_n_52,mul_32s_32s_32_1_1_U1_n_53,mul_32s_32s_32_1_1_U1_n_54,mul_32s_32s_32_1_1_U1_n_55,mul_32s_32s_32_1_1_U1_n_56,mul_32s_32s_32_1_1_U1_n_57,mul_32s_32s_32_1_1_U1_n_58,mul_32s_32s_32_1_1_U1_n_59,mul_32s_32s_32_1_1_U1_n_60,mul_32s_32s_32_1_1_U1_n_61,mul_32s_32s_32_1_1_U1_n_62,mul_32s_32s_32_1_1_U1_n_63,mul_32s_32s_32_1_1_U1_n_64,mul_32s_32s_32_1_1_U1_n_65,mul_32s_32s_32_1_1_U1_n_66}),
        .PCOUT(NLW_mul_ln35_reg_565_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln35_reg_565_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln35_reg_565_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln35_reg_565_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_18),
        .Q(\mul_ln35_reg_565_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_8),
        .Q(\mul_ln35_reg_565_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_7),
        .Q(\mul_ln35_reg_565_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_6),
        .Q(\mul_ln35_reg_565_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_5),
        .Q(\mul_ln35_reg_565_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_4),
        .Q(\mul_ln35_reg_565_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_3),
        .Q(\mul_ln35_reg_565_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_2),
        .Q(\mul_ln35_reg_565_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_17),
        .Q(\mul_ln35_reg_565_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_16),
        .Q(\mul_ln35_reg_565_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_15),
        .Q(\mul_ln35_reg_565_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_14),
        .Q(\mul_ln35_reg_565_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_13),
        .Q(\mul_ln35_reg_565_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_12),
        .Q(\mul_ln35_reg_565_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_11),
        .Q(\mul_ln35_reg_565_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_10),
        .Q(\mul_ln35_reg_565_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln35_reg_565_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln35_reg_5650),
        .D(mul_32s_32s_32_1_1_U1_n_9),
        .Q(\mul_ln35_reg_565_reg[9]__0_n_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \n32XferCnt_fu_114[0]_i_1 
       (.I0(n32XferCnt_load_reg_546[0]),
        .O(n32XferCnt_1_fu_443_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h1DFF)) 
    \n32XferCnt_fu_114[30]_i_5 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(icmp_ln22_reg_556),
        .O(ap_enable_reg_pp0_iter0_reg_reg_0));
  FDRE \n32XferCnt_fu_114_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[0]),
        .Q(n32XferCnt_fu_114[0]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[10]),
        .Q(n32XferCnt_fu_114[10]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[11]),
        .Q(n32XferCnt_fu_114[11]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[12]),
        .Q(n32XferCnt_fu_114[12]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[13]),
        .Q(n32XferCnt_fu_114[13]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[14]),
        .Q(n32XferCnt_fu_114[14]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[15]),
        .Q(n32XferCnt_fu_114[15]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[16]),
        .Q(n32XferCnt_fu_114[16]),
        .R(n32XferCnt_fu_1140));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \n32XferCnt_fu_114_reg[16]_i_1 
       (.CI(\n32XferCnt_fu_114_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\n32XferCnt_fu_114_reg[16]_i_1_n_0 ,\n32XferCnt_fu_114_reg[16]_i_1_n_1 ,\n32XferCnt_fu_114_reg[16]_i_1_n_2 ,\n32XferCnt_fu_114_reg[16]_i_1_n_3 ,\n32XferCnt_fu_114_reg[16]_i_1_n_4 ,\n32XferCnt_fu_114_reg[16]_i_1_n_5 ,\n32XferCnt_fu_114_reg[16]_i_1_n_6 ,\n32XferCnt_fu_114_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(n32XferCnt_1_fu_443_p2[16:9]),
        .S(n32XferCnt_load_reg_546[16:9]));
  FDRE \n32XferCnt_fu_114_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[17]),
        .Q(n32XferCnt_fu_114[17]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[18]),
        .Q(n32XferCnt_fu_114[18]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[19]),
        .Q(n32XferCnt_fu_114[19]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[1]),
        .Q(n32XferCnt_fu_114[1]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[20]),
        .Q(n32XferCnt_fu_114[20]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[21]),
        .Q(n32XferCnt_fu_114[21]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[22]),
        .Q(n32XferCnt_fu_114[22]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[23]),
        .Q(n32XferCnt_fu_114[23]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[24]),
        .Q(n32XferCnt_fu_114[24]),
        .R(n32XferCnt_fu_1140));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \n32XferCnt_fu_114_reg[24]_i_1 
       (.CI(\n32XferCnt_fu_114_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\n32XferCnt_fu_114_reg[24]_i_1_n_0 ,\n32XferCnt_fu_114_reg[24]_i_1_n_1 ,\n32XferCnt_fu_114_reg[24]_i_1_n_2 ,\n32XferCnt_fu_114_reg[24]_i_1_n_3 ,\n32XferCnt_fu_114_reg[24]_i_1_n_4 ,\n32XferCnt_fu_114_reg[24]_i_1_n_5 ,\n32XferCnt_fu_114_reg[24]_i_1_n_6 ,\n32XferCnt_fu_114_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(n32XferCnt_1_fu_443_p2[24:17]),
        .S(n32XferCnt_load_reg_546[24:17]));
  FDRE \n32XferCnt_fu_114_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[25]),
        .Q(n32XferCnt_fu_114[25]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[26]),
        .Q(n32XferCnt_fu_114[26]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[27]),
        .Q(n32XferCnt_fu_114[27]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[28]),
        .Q(n32XferCnt_fu_114[28]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[29]),
        .Q(n32XferCnt_fu_114[29]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[2]),
        .Q(n32XferCnt_fu_114[2]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[30]),
        .Q(n32XferCnt_fu_114[30]),
        .R(n32XferCnt_fu_1140));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \n32XferCnt_fu_114_reg[30]_i_3 
       (.CI(\n32XferCnt_fu_114_reg[24]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_n32XferCnt_fu_114_reg[30]_i_3_CO_UNCONNECTED [7:5],\n32XferCnt_fu_114_reg[30]_i_3_n_3 ,\n32XferCnt_fu_114_reg[30]_i_3_n_4 ,\n32XferCnt_fu_114_reg[30]_i_3_n_5 ,\n32XferCnt_fu_114_reg[30]_i_3_n_6 ,\n32XferCnt_fu_114_reg[30]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_n32XferCnt_fu_114_reg[30]_i_3_O_UNCONNECTED [7:6],n32XferCnt_1_fu_443_p2[30:25]}),
        .S({1'b0,1'b0,n32XferCnt_load_reg_546[30:25]}));
  FDRE \n32XferCnt_fu_114_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[3]),
        .Q(n32XferCnt_fu_114[3]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[4]),
        .Q(n32XferCnt_fu_114[4]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[5]),
        .Q(n32XferCnt_fu_114[5]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[6]),
        .Q(n32XferCnt_fu_114[6]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[7]),
        .Q(n32XferCnt_fu_114[7]),
        .R(n32XferCnt_fu_1140));
  FDRE \n32XferCnt_fu_114_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[8]),
        .Q(n32XferCnt_fu_114[8]),
        .R(n32XferCnt_fu_1140));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \n32XferCnt_fu_114_reg[8]_i_1 
       (.CI(n32XferCnt_load_reg_546[0]),
        .CI_TOP(1'b0),
        .CO({\n32XferCnt_fu_114_reg[8]_i_1_n_0 ,\n32XferCnt_fu_114_reg[8]_i_1_n_1 ,\n32XferCnt_fu_114_reg[8]_i_1_n_2 ,\n32XferCnt_fu_114_reg[8]_i_1_n_3 ,\n32XferCnt_fu_114_reg[8]_i_1_n_4 ,\n32XferCnt_fu_114_reg[8]_i_1_n_5 ,\n32XferCnt_fu_114_reg[8]_i_1_n_6 ,\n32XferCnt_fu_114_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(n32XferCnt_1_fu_443_p2[8:1]),
        .S(n32XferCnt_load_reg_546[8:1]));
  FDRE \n32XferCnt_fu_114_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(n32XferCnt_1_fu_443_p2[9]),
        .Q(n32XferCnt_fu_114[9]),
        .R(n32XferCnt_fu_1140));
  LUT5 #(
    .INIT(32'hAA2A2A2A)) 
    \n32XferCnt_load_reg_546[30]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(icmp_ln22_reg_556),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\ap_CS_fsm_reg[3]_0 [1]),
        .I4(pstrmOutput_TREADY_int_regslice),
        .O(icmp_ln22_reg_5560));
  FDRE \n32XferCnt_load_reg_546_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[0]),
        .Q(n32XferCnt_load_reg_546[0]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[10] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[10]),
        .Q(n32XferCnt_load_reg_546[10]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[11] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[11]),
        .Q(n32XferCnt_load_reg_546[11]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[12] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[12]),
        .Q(n32XferCnt_load_reg_546[12]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[13] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[13]),
        .Q(n32XferCnt_load_reg_546[13]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[14] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[14]),
        .Q(n32XferCnt_load_reg_546[14]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[15] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[15]),
        .Q(n32XferCnt_load_reg_546[15]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[16] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[16]),
        .Q(n32XferCnt_load_reg_546[16]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[17] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[17]),
        .Q(n32XferCnt_load_reg_546[17]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[18] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[18]),
        .Q(n32XferCnt_load_reg_546[18]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[19] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[19]),
        .Q(n32XferCnt_load_reg_546[19]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[1] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[1]),
        .Q(n32XferCnt_load_reg_546[1]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[20] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[20]),
        .Q(n32XferCnt_load_reg_546[20]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[21] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[21]),
        .Q(n32XferCnt_load_reg_546[21]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[22] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[22]),
        .Q(n32XferCnt_load_reg_546[22]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[23] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[23]),
        .Q(n32XferCnt_load_reg_546[23]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[24] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[24]),
        .Q(n32XferCnt_load_reg_546[24]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[25] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[25]),
        .Q(n32XferCnt_load_reg_546[25]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[26] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[26]),
        .Q(n32XferCnt_load_reg_546[26]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[27] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[27]),
        .Q(n32XferCnt_load_reg_546[27]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[28] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[28]),
        .Q(n32XferCnt_load_reg_546[28]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[29] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[29]),
        .Q(n32XferCnt_load_reg_546[29]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[2] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[2]),
        .Q(n32XferCnt_load_reg_546[2]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[30] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[30]),
        .Q(n32XferCnt_load_reg_546[30]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[3] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[3]),
        .Q(n32XferCnt_load_reg_546[3]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[4] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[4]),
        .Q(n32XferCnt_load_reg_546[4]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[5] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[5]),
        .Q(n32XferCnt_load_reg_546[5]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[6] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[6]),
        .Q(n32XferCnt_load_reg_546[6]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[7] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[7]),
        .Q(n32XferCnt_load_reg_546[7]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[8] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[8]),
        .Q(n32XferCnt_load_reg_546[8]),
        .R(1'b0));
  FDRE \n32XferCnt_load_reg_546_reg[9] 
       (.C(ap_clk),
        .CE(icmp_ln22_reg_5560),
        .D(ap_sig_allocacmp_n32XferCnt_load[9]),
        .Q(n32XferCnt_load_reg_546[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({pstrmOutput_TDATA__0_carry_n_0,pstrmOutput_TDATA__0_carry_n_1,pstrmOutput_TDATA__0_carry_n_2,pstrmOutput_TDATA__0_carry_n_3,pstrmOutput_TDATA__0_carry_n_4,pstrmOutput_TDATA__0_carry_n_5,pstrmOutput_TDATA__0_carry_n_6,pstrmOutput_TDATA__0_carry_n_7}),
        .DI({pstrmOutput_TDATA__0_carry_i_1_n_0,pstrmOutput_TDATA__0_carry_i_2_n_0,pstrmOutput_TDATA__0_carry_i_3_n_0,pstrmOutput_TDATA__0_carry_i_4_n_0,pstrmOutput_TDATA__0_carry_i_5_n_0,pstrmOutput_TDATA__0_carry_i_6_n_0,pstrmOutput_TDATA__0_carry_i_7_n_0,1'b0}),
        .O({pstrmOutput_TDATA__0_carry_n_8,pstrmOutput_TDATA__0_carry_n_9,pstrmOutput_TDATA__0_carry_n_10,pstrmOutput_TDATA__0_carry_n_11,pstrmOutput_TDATA__0_carry_n_12,pstrmOutput_TDATA__0_carry_n_13,pstrmOutput_TDATA__0_carry_n_14,pstrmOutput_TDATA__0_carry_n_15}),
        .S({pstrmOutput_TDATA__0_carry_i_8_n_0,pstrmOutput_TDATA__0_carry_i_9_n_0,pstrmOutput_TDATA__0_carry_i_10_n_0,pstrmOutput_TDATA__0_carry_i_11_n_0,pstrmOutput_TDATA__0_carry_i_12_n_0,pstrmOutput_TDATA__0_carry_i_13_n_0,pstrmOutput_TDATA__0_carry_i_14_n_0,pstrmOutput_TDATA__0_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__0_carry__0
       (.CI(pstrmOutput_TDATA__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({pstrmOutput_TDATA__0_carry__0_n_0,pstrmOutput_TDATA__0_carry__0_n_1,pstrmOutput_TDATA__0_carry__0_n_2,pstrmOutput_TDATA__0_carry__0_n_3,pstrmOutput_TDATA__0_carry__0_n_4,pstrmOutput_TDATA__0_carry__0_n_5,pstrmOutput_TDATA__0_carry__0_n_6,pstrmOutput_TDATA__0_carry__0_n_7}),
        .DI({pstrmOutput_TDATA__0_carry__0_i_1_n_0,pstrmOutput_TDATA__0_carry__0_i_2_n_0,pstrmOutput_TDATA__0_carry__0_i_3_n_0,pstrmOutput_TDATA__0_carry__0_i_4_n_0,pstrmOutput_TDATA__0_carry__0_i_5_n_0,pstrmOutput_TDATA__0_carry__0_i_6_n_0,pstrmOutput_TDATA__0_carry__0_i_7_n_0,pstrmOutput_TDATA__0_carry__0_i_8_n_0}),
        .O({pstrmOutput_TDATA__0_carry__0_n_8,pstrmOutput_TDATA__0_carry__0_n_9,pstrmOutput_TDATA__0_carry__0_n_10,pstrmOutput_TDATA__0_carry__0_n_11,pstrmOutput_TDATA__0_carry__0_n_12,pstrmOutput_TDATA__0_carry__0_n_13,pstrmOutput_TDATA__0_carry__0_n_14,pstrmOutput_TDATA__0_carry__0_n_15}),
        .S({pstrmOutput_TDATA__0_carry__0_i_9_n_0,pstrmOutput_TDATA__0_carry__0_i_10_n_0,pstrmOutput_TDATA__0_carry__0_i_11_n_0,pstrmOutput_TDATA__0_carry__0_i_12_n_0,pstrmOutput_TDATA__0_carry__0_i_13_n_0,pstrmOutput_TDATA__0_carry__0_i_14_n_0,pstrmOutput_TDATA__0_carry__0_i_15_n_0,pstrmOutput_TDATA__0_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__0_i_1
       (.I0(add_ln35_4_reg_635[14]),
        .I1(add_ln35_2_reg_605[14]),
        .I2(\mul_ln35_9_reg_690_reg[14]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__0_i_10
       (.I0(add_ln35_4_reg_635[14]),
        .I1(add_ln35_2_reg_605[14]),
        .I2(\mul_ln35_9_reg_690_reg[14]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry__0_i_2_n_0),
        .O(pstrmOutput_TDATA__0_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__0_i_11
       (.I0(add_ln35_4_reg_635[13]),
        .I1(add_ln35_2_reg_605[13]),
        .I2(\mul_ln35_9_reg_690_reg[13]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry__0_i_3_n_0),
        .O(pstrmOutput_TDATA__0_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__0_i_12
       (.I0(add_ln35_4_reg_635[12]),
        .I1(add_ln35_2_reg_605[12]),
        .I2(\mul_ln35_9_reg_690_reg[12]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry__0_i_4_n_0),
        .O(pstrmOutput_TDATA__0_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__0_i_13
       (.I0(add_ln35_4_reg_635[11]),
        .I1(add_ln35_2_reg_605[11]),
        .I2(\mul_ln35_9_reg_690_reg[11]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry__0_i_5_n_0),
        .O(pstrmOutput_TDATA__0_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__0_i_14
       (.I0(add_ln35_4_reg_635[10]),
        .I1(add_ln35_2_reg_605[10]),
        .I2(\mul_ln35_9_reg_690_reg[10]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry__0_i_6_n_0),
        .O(pstrmOutput_TDATA__0_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__0_i_15
       (.I0(add_ln35_4_reg_635[9]),
        .I1(add_ln35_2_reg_605[9]),
        .I2(\mul_ln35_9_reg_690_reg[9]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry__0_i_7_n_0),
        .O(pstrmOutput_TDATA__0_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__0_i_16
       (.I0(add_ln35_4_reg_635[8]),
        .I1(add_ln35_2_reg_605[8]),
        .I2(\mul_ln35_9_reg_690_reg[8]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry__0_i_8_n_0),
        .O(pstrmOutput_TDATA__0_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__0_i_2
       (.I0(add_ln35_4_reg_635[13]),
        .I1(add_ln35_2_reg_605[13]),
        .I2(\mul_ln35_9_reg_690_reg[13]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__0_i_3
       (.I0(add_ln35_4_reg_635[12]),
        .I1(add_ln35_2_reg_605[12]),
        .I2(\mul_ln35_9_reg_690_reg[12]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__0_i_4
       (.I0(add_ln35_4_reg_635[11]),
        .I1(add_ln35_2_reg_605[11]),
        .I2(\mul_ln35_9_reg_690_reg[11]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__0_i_5
       (.I0(add_ln35_4_reg_635[10]),
        .I1(add_ln35_2_reg_605[10]),
        .I2(\mul_ln35_9_reg_690_reg[10]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__0_i_6
       (.I0(add_ln35_4_reg_635[9]),
        .I1(add_ln35_2_reg_605[9]),
        .I2(\mul_ln35_9_reg_690_reg[9]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__0_i_7
       (.I0(add_ln35_4_reg_635[8]),
        .I1(add_ln35_2_reg_605[8]),
        .I2(\mul_ln35_9_reg_690_reg[8]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__0_i_8
       (.I0(add_ln35_4_reg_635[7]),
        .I1(add_ln35_2_reg_605[7]),
        .I2(\mul_ln35_9_reg_690_reg[7]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__0_i_9
       (.I0(add_ln35_4_reg_635[15]),
        .I1(add_ln35_2_reg_605[15]),
        .I2(\mul_ln35_9_reg_690_reg[15]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry__0_i_1_n_0),
        .O(pstrmOutput_TDATA__0_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__0_carry__1
       (.CI(pstrmOutput_TDATA__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({pstrmOutput_TDATA__0_carry__1_n_0,pstrmOutput_TDATA__0_carry__1_n_1,pstrmOutput_TDATA__0_carry__1_n_2,pstrmOutput_TDATA__0_carry__1_n_3,pstrmOutput_TDATA__0_carry__1_n_4,pstrmOutput_TDATA__0_carry__1_n_5,pstrmOutput_TDATA__0_carry__1_n_6,pstrmOutput_TDATA__0_carry__1_n_7}),
        .DI({mul_32s_32s_32_1_1_U10_n_80,mul_32s_32s_32_1_1_U10_n_81,mul_32s_32s_32_1_1_U10_n_82,mul_32s_32s_32_1_1_U10_n_83,mul_32s_32s_32_1_1_U10_n_84,mul_32s_32s_32_1_1_U10_n_85,mul_32s_32s_32_1_1_U10_n_86,pstrmOutput_TDATA__0_carry__1_i_8_n_0}),
        .O({pstrmOutput_TDATA__0_carry__1_n_8,pstrmOutput_TDATA__0_carry__1_n_9,pstrmOutput_TDATA__0_carry__1_n_10,pstrmOutput_TDATA__0_carry__1_n_11,pstrmOutput_TDATA__0_carry__1_n_12,pstrmOutput_TDATA__0_carry__1_n_13,pstrmOutput_TDATA__0_carry__1_n_14,pstrmOutput_TDATA__0_carry__1_n_15}),
        .S({mul_32s_32s_32_1_1_U10_n_87,mul_32s_32s_32_1_1_U10_n_88,mul_32s_32s_32_1_1_U10_n_89,mul_32s_32s_32_1_1_U10_n_90,mul_32s_32s_32_1_1_U10_n_91,mul_32s_32s_32_1_1_U10_n_92,mul_32s_32s_32_1_1_U10_n_93,mul_32s_32s_32_1_1_U10_n_94}));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__1_i_8
       (.I0(add_ln35_4_reg_635[15]),
        .I1(add_ln35_2_reg_605[15]),
        .I2(\mul_ln35_9_reg_690_reg[15]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__0_carry__2
       (.CI(pstrmOutput_TDATA__0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pstrmOutput_TDATA__0_carry__2_CO_UNCONNECTED[7],pstrmOutput_TDATA__0_carry__2_n_1,pstrmOutput_TDATA__0_carry__2_n_2,pstrmOutput_TDATA__0_carry__2_n_3,pstrmOutput_TDATA__0_carry__2_n_4,pstrmOutput_TDATA__0_carry__2_n_5,pstrmOutput_TDATA__0_carry__2_n_6,pstrmOutput_TDATA__0_carry__2_n_7}),
        .DI({1'b0,mul_32s_32s_32_1_1_U10_n_73,mul_32s_32s_32_1_1_U10_n_74,mul_32s_32s_32_1_1_U10_n_75,mul_32s_32s_32_1_1_U10_n_76,mul_32s_32s_32_1_1_U10_n_77,mul_32s_32s_32_1_1_U10_n_78,mul_32s_32s_32_1_1_U10_n_79}),
        .O({pstrmOutput_TDATA__0_carry__2_n_8,pstrmOutput_TDATA__0_carry__2_n_9,pstrmOutput_TDATA__0_carry__2_n_10,pstrmOutput_TDATA__0_carry__2_n_11,pstrmOutput_TDATA__0_carry__2_n_12,pstrmOutput_TDATA__0_carry__2_n_13,pstrmOutput_TDATA__0_carry__2_n_14,pstrmOutput_TDATA__0_carry__2_n_15}),
        .S({mul_32s_32s_32_1_1_U10_n_65,mul_32s_32s_32_1_1_U10_n_66,mul_32s_32s_32_1_1_U10_n_67,mul_32s_32s_32_1_1_U10_n_68,mul_32s_32s_32_1_1_U10_n_69,mul_32s_32s_32_1_1_U10_n_70,mul_32s_32s_32_1_1_U10_n_71,mul_32s_32s_32_1_1_U10_n_72}));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry_i_1
       (.I0(add_ln35_4_reg_635[6]),
        .I1(add_ln35_2_reg_605[6]),
        .I2(\mul_ln35_9_reg_690_reg[6]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry_i_10
       (.I0(add_ln35_4_reg_635[5]),
        .I1(add_ln35_2_reg_605[5]),
        .I2(\mul_ln35_9_reg_690_reg[5]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry_i_3_n_0),
        .O(pstrmOutput_TDATA__0_carry_i_10_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry_i_11
       (.I0(add_ln35_4_reg_635[4]),
        .I1(add_ln35_2_reg_605[4]),
        .I2(\mul_ln35_9_reg_690_reg[4]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry_i_4_n_0),
        .O(pstrmOutput_TDATA__0_carry_i_11_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry_i_12
       (.I0(add_ln35_4_reg_635[3]),
        .I1(add_ln35_2_reg_605[3]),
        .I2(\mul_ln35_9_reg_690_reg[3]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry_i_5_n_0),
        .O(pstrmOutput_TDATA__0_carry_i_12_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry_i_13
       (.I0(add_ln35_4_reg_635[2]),
        .I1(add_ln35_2_reg_605[2]),
        .I2(\mul_ln35_9_reg_690_reg[2]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry_i_6_n_0),
        .O(pstrmOutput_TDATA__0_carry_i_13_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry_i_14
       (.I0(add_ln35_4_reg_635[1]),
        .I1(add_ln35_2_reg_605[1]),
        .I2(\mul_ln35_9_reg_690_reg[1]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry_i_7_n_0),
        .O(pstrmOutput_TDATA__0_carry_i_14_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    pstrmOutput_TDATA__0_carry_i_15
       (.I0(add_ln35_4_reg_635[0]),
        .I1(add_ln35_2_reg_605[0]),
        .I2(\mul_ln35_9_reg_690_reg[0]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry_i_15_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry_i_2
       (.I0(add_ln35_4_reg_635[5]),
        .I1(add_ln35_2_reg_605[5]),
        .I2(\mul_ln35_9_reg_690_reg[5]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry_i_3
       (.I0(add_ln35_4_reg_635[4]),
        .I1(add_ln35_2_reg_605[4]),
        .I2(\mul_ln35_9_reg_690_reg[4]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry_i_4
       (.I0(add_ln35_4_reg_635[3]),
        .I1(add_ln35_2_reg_605[3]),
        .I2(\mul_ln35_9_reg_690_reg[3]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry_i_5
       (.I0(add_ln35_4_reg_635[2]),
        .I1(add_ln35_2_reg_605[2]),
        .I2(\mul_ln35_9_reg_690_reg[2]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry_i_6
       (.I0(add_ln35_4_reg_635[1]),
        .I1(add_ln35_2_reg_605[1]),
        .I2(\mul_ln35_9_reg_690_reg[1]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry_i_7
       (.I0(add_ln35_4_reg_635[0]),
        .I1(add_ln35_2_reg_605[0]),
        .I2(\mul_ln35_9_reg_690_reg[0]__0_n_0 ),
        .O(pstrmOutput_TDATA__0_carry_i_7_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry_i_8
       (.I0(add_ln35_4_reg_635[7]),
        .I1(add_ln35_2_reg_605[7]),
        .I2(\mul_ln35_9_reg_690_reg[7]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry_i_1_n_0),
        .O(pstrmOutput_TDATA__0_carry_i_8_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry_i_9
       (.I0(add_ln35_4_reg_635[6]),
        .I1(add_ln35_2_reg_605[6]),
        .I2(\mul_ln35_9_reg_690_reg[6]__0_n_0 ),
        .I3(pstrmOutput_TDATA__0_carry_i_2_n_0),
        .O(pstrmOutput_TDATA__0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__188_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({pstrmOutput_TDATA__188_carry_n_0,pstrmOutput_TDATA__188_carry_n_1,pstrmOutput_TDATA__188_carry_n_2,pstrmOutput_TDATA__188_carry_n_3,pstrmOutput_TDATA__188_carry_n_4,pstrmOutput_TDATA__188_carry_n_5,pstrmOutput_TDATA__188_carry_n_6,pstrmOutput_TDATA__188_carry_n_7}),
        .DI({pstrmOutput_TDATA__188_carry_i_1_n_0,pstrmOutput_TDATA__188_carry_i_2_n_0,pstrmOutput_TDATA__188_carry_i_3_n_0,pstrmOutput_TDATA__188_carry_i_4_n_0,pstrmOutput_TDATA__188_carry_i_5_n_0,pstrmOutput_TDATA__188_carry_i_6_n_0,pstrmOutput_TDATA__188_carry_i_7_n_0,1'b0}),
        .O(\add_ln35_reg_575_reg[29]_0 [7:0]),
        .S({pstrmOutput_TDATA__188_carry_i_8_n_0,pstrmOutput_TDATA__188_carry_i_9_n_0,pstrmOutput_TDATA__188_carry_i_10_n_0,pstrmOutput_TDATA__188_carry_i_11_n_0,pstrmOutput_TDATA__188_carry_i_12_n_0,pstrmOutput_TDATA__188_carry_i_13_n_0,pstrmOutput_TDATA__188_carry_i_14_n_0,pstrmOutput_TDATA__188_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__188_carry__0
       (.CI(pstrmOutput_TDATA__188_carry_n_0),
        .CI_TOP(1'b0),
        .CO({pstrmOutput_TDATA__188_carry__0_n_0,pstrmOutput_TDATA__188_carry__0_n_1,pstrmOutput_TDATA__188_carry__0_n_2,pstrmOutput_TDATA__188_carry__0_n_3,pstrmOutput_TDATA__188_carry__0_n_4,pstrmOutput_TDATA__188_carry__0_n_5,pstrmOutput_TDATA__188_carry__0_n_6,pstrmOutput_TDATA__188_carry__0_n_7}),
        .DI({pstrmOutput_TDATA__188_carry__0_i_1_n_0,pstrmOutput_TDATA__188_carry__0_i_2_n_0,pstrmOutput_TDATA__188_carry__0_i_3_n_0,pstrmOutput_TDATA__188_carry__0_i_4_n_0,pstrmOutput_TDATA__188_carry__0_i_5_n_0,pstrmOutput_TDATA__188_carry__0_i_6_n_0,pstrmOutput_TDATA__188_carry__0_i_7_n_0,pstrmOutput_TDATA__188_carry__0_i_8_n_0}),
        .O(\add_ln35_reg_575_reg[29]_0 [15:8]),
        .S({pstrmOutput_TDATA__188_carry__0_i_9_n_0,pstrmOutput_TDATA__188_carry__0_i_10_n_0,pstrmOutput_TDATA__188_carry__0_i_11_n_0,pstrmOutput_TDATA__188_carry__0_i_12_n_0,pstrmOutput_TDATA__188_carry__0_i_13_n_0,pstrmOutput_TDATA__188_carry__0_i_14_n_0,pstrmOutput_TDATA__188_carry__0_i_15_n_0,pstrmOutput_TDATA__188_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair70" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__0_i_1
       (.I0(pstrmOutput_TDATA__94_carry__0_n_9),
        .I1(pstrmOutput_TDATA__0_carry__0_n_9),
        .I2(add_ln35_reg_575[14]),
        .O(pstrmOutput_TDATA__188_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair70" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__0_i_10
       (.I0(pstrmOutput_TDATA__94_carry__0_n_9),
        .I1(pstrmOutput_TDATA__0_carry__0_n_9),
        .I2(add_ln35_reg_575[14]),
        .I3(pstrmOutput_TDATA__188_carry__0_i_2_n_0),
        .O(pstrmOutput_TDATA__188_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__0_i_11
       (.I0(pstrmOutput_TDATA__94_carry__0_n_10),
        .I1(pstrmOutput_TDATA__0_carry__0_n_10),
        .I2(add_ln35_reg_575[13]),
        .I3(pstrmOutput_TDATA__188_carry__0_i_3_n_0),
        .O(pstrmOutput_TDATA__188_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__0_i_12
       (.I0(pstrmOutput_TDATA__94_carry__0_n_11),
        .I1(pstrmOutput_TDATA__0_carry__0_n_11),
        .I2(add_ln35_reg_575[12]),
        .I3(pstrmOutput_TDATA__188_carry__0_i_4_n_0),
        .O(pstrmOutput_TDATA__188_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__0_i_13
       (.I0(pstrmOutput_TDATA__94_carry__0_n_12),
        .I1(pstrmOutput_TDATA__0_carry__0_n_12),
        .I2(add_ln35_reg_575[11]),
        .I3(pstrmOutput_TDATA__188_carry__0_i_5_n_0),
        .O(pstrmOutput_TDATA__188_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair66" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__0_i_14
       (.I0(pstrmOutput_TDATA__94_carry__0_n_13),
        .I1(pstrmOutput_TDATA__0_carry__0_n_13),
        .I2(add_ln35_reg_575[10]),
        .I3(pstrmOutput_TDATA__188_carry__0_i_6_n_0),
        .O(pstrmOutput_TDATA__188_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__0_i_15
       (.I0(pstrmOutput_TDATA__94_carry__0_n_14),
        .I1(pstrmOutput_TDATA__0_carry__0_n_14),
        .I2(add_ln35_reg_575[9]),
        .I3(pstrmOutput_TDATA__188_carry__0_i_7_n_0),
        .O(pstrmOutput_TDATA__188_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair64" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__0_i_16
       (.I0(pstrmOutput_TDATA__94_carry__0_n_15),
        .I1(pstrmOutput_TDATA__0_carry__0_n_15),
        .I2(add_ln35_reg_575[8]),
        .I3(pstrmOutput_TDATA__188_carry__0_i_8_n_0),
        .O(pstrmOutput_TDATA__188_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__0_i_2
       (.I0(pstrmOutput_TDATA__94_carry__0_n_10),
        .I1(pstrmOutput_TDATA__0_carry__0_n_10),
        .I2(add_ln35_reg_575[13]),
        .O(pstrmOutput_TDATA__188_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair68" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__0_i_3
       (.I0(pstrmOutput_TDATA__94_carry__0_n_11),
        .I1(pstrmOutput_TDATA__0_carry__0_n_11),
        .I2(add_ln35_reg_575[12]),
        .O(pstrmOutput_TDATA__188_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair67" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__0_i_4
       (.I0(pstrmOutput_TDATA__94_carry__0_n_12),
        .I1(pstrmOutput_TDATA__0_carry__0_n_12),
        .I2(add_ln35_reg_575[11]),
        .O(pstrmOutput_TDATA__188_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair66" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__0_i_5
       (.I0(pstrmOutput_TDATA__94_carry__0_n_13),
        .I1(pstrmOutput_TDATA__0_carry__0_n_13),
        .I2(add_ln35_reg_575[10]),
        .O(pstrmOutput_TDATA__188_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair65" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__0_i_6
       (.I0(pstrmOutput_TDATA__94_carry__0_n_14),
        .I1(pstrmOutput_TDATA__0_carry__0_n_14),
        .I2(add_ln35_reg_575[9]),
        .O(pstrmOutput_TDATA__188_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair64" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__0_i_7
       (.I0(pstrmOutput_TDATA__94_carry__0_n_15),
        .I1(pstrmOutput_TDATA__0_carry__0_n_15),
        .I2(add_ln35_reg_575[8]),
        .O(pstrmOutput_TDATA__188_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair63" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__0_i_8
       (.I0(pstrmOutput_TDATA__94_carry_n_8),
        .I1(pstrmOutput_TDATA__0_carry_n_8),
        .I2(add_ln35_reg_575[7]),
        .O(pstrmOutput_TDATA__188_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair71" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__0_i_9
       (.I0(pstrmOutput_TDATA__94_carry__0_n_8),
        .I1(pstrmOutput_TDATA__0_carry__0_n_8),
        .I2(add_ln35_reg_575[15]),
        .I3(pstrmOutput_TDATA__188_carry__0_i_1_n_0),
        .O(pstrmOutput_TDATA__188_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__188_carry__1
       (.CI(pstrmOutput_TDATA__188_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({pstrmOutput_TDATA__188_carry__1_n_0,pstrmOutput_TDATA__188_carry__1_n_1,pstrmOutput_TDATA__188_carry__1_n_2,pstrmOutput_TDATA__188_carry__1_n_3,pstrmOutput_TDATA__188_carry__1_n_4,pstrmOutput_TDATA__188_carry__1_n_5,pstrmOutput_TDATA__188_carry__1_n_6,pstrmOutput_TDATA__188_carry__1_n_7}),
        .DI({pstrmOutput_TDATA__188_carry__1_i_1_n_0,pstrmOutput_TDATA__188_carry__1_i_2_n_0,pstrmOutput_TDATA__188_carry__1_i_3_n_0,pstrmOutput_TDATA__188_carry__1_i_4_n_0,pstrmOutput_TDATA__188_carry__1_i_5_n_0,pstrmOutput_TDATA__188_carry__1_i_6_n_0,pstrmOutput_TDATA__188_carry__1_i_7_n_0,pstrmOutput_TDATA__188_carry__1_i_8_n_0}),
        .O(\add_ln35_reg_575_reg[29]_0 [23:16]),
        .S({pstrmOutput_TDATA__188_carry__1_i_9_n_0,pstrmOutput_TDATA__188_carry__1_i_10_n_0,pstrmOutput_TDATA__188_carry__1_i_11_n_0,pstrmOutput_TDATA__188_carry__1_i_12_n_0,pstrmOutput_TDATA__188_carry__1_i_13_n_0,pstrmOutput_TDATA__188_carry__1_i_14_n_0,pstrmOutput_TDATA__188_carry__1_i_15_n_0,pstrmOutput_TDATA__188_carry__1_i_16_n_0}));
  (* HLUTNM = "lutpair78" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__1_i_1
       (.I0(pstrmOutput_TDATA__94_carry__1_n_9),
        .I1(pstrmOutput_TDATA__0_carry__1_n_9),
        .I2(add_ln35_reg_575[22]),
        .O(pstrmOutput_TDATA__188_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair78" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__1_i_10
       (.I0(pstrmOutput_TDATA__94_carry__1_n_9),
        .I1(pstrmOutput_TDATA__0_carry__1_n_9),
        .I2(add_ln35_reg_575[22]),
        .I3(pstrmOutput_TDATA__188_carry__1_i_2_n_0),
        .O(pstrmOutput_TDATA__188_carry__1_i_10_n_0));
  (* HLUTNM = "lutpair77" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__1_i_11
       (.I0(pstrmOutput_TDATA__94_carry__1_n_10),
        .I1(pstrmOutput_TDATA__0_carry__1_n_10),
        .I2(add_ln35_reg_575[21]),
        .I3(pstrmOutput_TDATA__188_carry__1_i_3_n_0),
        .O(pstrmOutput_TDATA__188_carry__1_i_11_n_0));
  (* HLUTNM = "lutpair76" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__1_i_12
       (.I0(pstrmOutput_TDATA__94_carry__1_n_11),
        .I1(pstrmOutput_TDATA__0_carry__1_n_11),
        .I2(add_ln35_reg_575[20]),
        .I3(pstrmOutput_TDATA__188_carry__1_i_4_n_0),
        .O(pstrmOutput_TDATA__188_carry__1_i_12_n_0));
  (* HLUTNM = "lutpair75" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__1_i_13
       (.I0(pstrmOutput_TDATA__94_carry__1_n_12),
        .I1(pstrmOutput_TDATA__0_carry__1_n_12),
        .I2(add_ln35_reg_575[19]),
        .I3(pstrmOutput_TDATA__188_carry__1_i_5_n_0),
        .O(pstrmOutput_TDATA__188_carry__1_i_13_n_0));
  (* HLUTNM = "lutpair74" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__1_i_14
       (.I0(pstrmOutput_TDATA__94_carry__1_n_13),
        .I1(pstrmOutput_TDATA__0_carry__1_n_13),
        .I2(add_ln35_reg_575[18]),
        .I3(pstrmOutput_TDATA__188_carry__1_i_6_n_0),
        .O(pstrmOutput_TDATA__188_carry__1_i_14_n_0));
  (* HLUTNM = "lutpair73" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__1_i_15
       (.I0(pstrmOutput_TDATA__94_carry__1_n_14),
        .I1(pstrmOutput_TDATA__0_carry__1_n_14),
        .I2(add_ln35_reg_575[17]),
        .I3(pstrmOutput_TDATA__188_carry__1_i_7_n_0),
        .O(pstrmOutput_TDATA__188_carry__1_i_15_n_0));
  (* HLUTNM = "lutpair72" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__1_i_16
       (.I0(pstrmOutput_TDATA__94_carry__1_n_15),
        .I1(pstrmOutput_TDATA__0_carry__1_n_15),
        .I2(add_ln35_reg_575[16]),
        .I3(pstrmOutput_TDATA__188_carry__1_i_8_n_0),
        .O(pstrmOutput_TDATA__188_carry__1_i_16_n_0));
  (* HLUTNM = "lutpair77" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__1_i_2
       (.I0(pstrmOutput_TDATA__94_carry__1_n_10),
        .I1(pstrmOutput_TDATA__0_carry__1_n_10),
        .I2(add_ln35_reg_575[21]),
        .O(pstrmOutput_TDATA__188_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair76" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__1_i_3
       (.I0(pstrmOutput_TDATA__94_carry__1_n_11),
        .I1(pstrmOutput_TDATA__0_carry__1_n_11),
        .I2(add_ln35_reg_575[20]),
        .O(pstrmOutput_TDATA__188_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair75" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__1_i_4
       (.I0(pstrmOutput_TDATA__94_carry__1_n_12),
        .I1(pstrmOutput_TDATA__0_carry__1_n_12),
        .I2(add_ln35_reg_575[19]),
        .O(pstrmOutput_TDATA__188_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair74" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__1_i_5
       (.I0(pstrmOutput_TDATA__94_carry__1_n_13),
        .I1(pstrmOutput_TDATA__0_carry__1_n_13),
        .I2(add_ln35_reg_575[18]),
        .O(pstrmOutput_TDATA__188_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair73" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__1_i_6
       (.I0(pstrmOutput_TDATA__94_carry__1_n_14),
        .I1(pstrmOutput_TDATA__0_carry__1_n_14),
        .I2(add_ln35_reg_575[17]),
        .O(pstrmOutput_TDATA__188_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair72" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__1_i_7
       (.I0(pstrmOutput_TDATA__94_carry__1_n_15),
        .I1(pstrmOutput_TDATA__0_carry__1_n_15),
        .I2(add_ln35_reg_575[16]),
        .O(pstrmOutput_TDATA__188_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair71" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__1_i_8
       (.I0(pstrmOutput_TDATA__94_carry__0_n_8),
        .I1(pstrmOutput_TDATA__0_carry__0_n_8),
        .I2(add_ln35_reg_575[15]),
        .O(pstrmOutput_TDATA__188_carry__1_i_8_n_0));
  (* HLUTNM = "lutpair79" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__1_i_9
       (.I0(pstrmOutput_TDATA__94_carry__1_n_8),
        .I1(pstrmOutput_TDATA__0_carry__1_n_8),
        .I2(add_ln35_reg_575[23]),
        .I3(pstrmOutput_TDATA__188_carry__1_i_1_n_0),
        .O(pstrmOutput_TDATA__188_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__188_carry__2
       (.CI(pstrmOutput_TDATA__188_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pstrmOutput_TDATA__188_carry__2_CO_UNCONNECTED[7],pstrmOutput_TDATA__188_carry__2_n_1,pstrmOutput_TDATA__188_carry__2_n_2,pstrmOutput_TDATA__188_carry__2_n_3,pstrmOutput_TDATA__188_carry__2_n_4,pstrmOutput_TDATA__188_carry__2_n_5,pstrmOutput_TDATA__188_carry__2_n_6,pstrmOutput_TDATA__188_carry__2_n_7}),
        .DI({1'b0,pstrmOutput_TDATA__188_carry__2_i_1_n_0,pstrmOutput_TDATA__188_carry__2_i_2_n_0,pstrmOutput_TDATA__188_carry__2_i_3_n_0,pstrmOutput_TDATA__188_carry__2_i_4_n_0,pstrmOutput_TDATA__188_carry__2_i_5_n_0,pstrmOutput_TDATA__188_carry__2_i_6_n_0,pstrmOutput_TDATA__188_carry__2_i_7_n_0}),
        .O(\add_ln35_reg_575_reg[29]_0 [31:24]),
        .S({pstrmOutput_TDATA__188_carry__2_i_8_n_0,pstrmOutput_TDATA__188_carry__2_i_9_n_0,pstrmOutput_TDATA__188_carry__2_i_10_n_0,pstrmOutput_TDATA__188_carry__2_i_11_n_0,pstrmOutput_TDATA__188_carry__2_i_12_n_0,pstrmOutput_TDATA__188_carry__2_i_13_n_0,pstrmOutput_TDATA__188_carry__2_i_14_n_0,pstrmOutput_TDATA__188_carry__2_i_15_n_0}));
  (* HLUTNM = "lutpair82" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__2_i_1
       (.I0(pstrmOutput_TDATA__94_carry__2_n_10),
        .I1(pstrmOutput_TDATA__0_carry__2_n_10),
        .I2(add_ln35_reg_575[29]),
        .O(pstrmOutput_TDATA__188_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair82" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__2_i_10
       (.I0(pstrmOutput_TDATA__94_carry__2_n_10),
        .I1(pstrmOutput_TDATA__0_carry__2_n_10),
        .I2(add_ln35_reg_575[29]),
        .I3(pstrmOutput_TDATA__188_carry__2_i_2_n_0),
        .O(pstrmOutput_TDATA__188_carry__2_i_10_n_0));
  (* HLUTNM = "lutpair81" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__2_i_11
       (.I0(pstrmOutput_TDATA__94_carry__2_n_11),
        .I1(pstrmOutput_TDATA__0_carry__2_n_11),
        .I2(add_ln35_reg_575[28]),
        .I3(pstrmOutput_TDATA__188_carry__2_i_3_n_0),
        .O(pstrmOutput_TDATA__188_carry__2_i_11_n_0));
  (* HLUTNM = "lutpair80" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__2_i_12
       (.I0(pstrmOutput_TDATA__94_carry__2_n_12),
        .I1(pstrmOutput_TDATA__0_carry__2_n_12),
        .I2(add_ln35_reg_575[27]),
        .I3(pstrmOutput_TDATA__188_carry__2_i_4_n_0),
        .O(pstrmOutput_TDATA__188_carry__2_i_12_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__2_i_13
       (.I0(pstrmOutput_TDATA__94_carry__2_n_13),
        .I1(pstrmOutput_TDATA__0_carry__2_n_13),
        .I2(add_ln35_reg_575[26]),
        .I3(pstrmOutput_TDATA__188_carry__2_i_5_n_0),
        .O(pstrmOutput_TDATA__188_carry__2_i_13_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__2_i_14
       (.I0(pstrmOutput_TDATA__94_carry__2_n_14),
        .I1(pstrmOutput_TDATA__0_carry__2_n_14),
        .I2(add_ln35_reg_575[25]),
        .I3(pstrmOutput_TDATA__188_carry__2_i_6_n_0),
        .O(pstrmOutput_TDATA__188_carry__2_i_14_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__2_i_15
       (.I0(pstrmOutput_TDATA__94_carry__2_n_15),
        .I1(pstrmOutput_TDATA__0_carry__2_n_15),
        .I2(add_ln35_reg_575[24]),
        .I3(pstrmOutput_TDATA__188_carry__2_i_7_n_0),
        .O(pstrmOutput_TDATA__188_carry__2_i_15_n_0));
  (* HLUTNM = "lutpair81" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__2_i_2
       (.I0(pstrmOutput_TDATA__94_carry__2_n_11),
        .I1(pstrmOutput_TDATA__0_carry__2_n_11),
        .I2(add_ln35_reg_575[28]),
        .O(pstrmOutput_TDATA__188_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair80" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__2_i_3
       (.I0(pstrmOutput_TDATA__94_carry__2_n_12),
        .I1(pstrmOutput_TDATA__0_carry__2_n_12),
        .I2(add_ln35_reg_575[27]),
        .O(pstrmOutput_TDATA__188_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__2_i_4
       (.I0(pstrmOutput_TDATA__94_carry__2_n_13),
        .I1(pstrmOutput_TDATA__0_carry__2_n_13),
        .I2(add_ln35_reg_575[26]),
        .O(pstrmOutput_TDATA__188_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__2_i_5
       (.I0(pstrmOutput_TDATA__94_carry__2_n_14),
        .I1(pstrmOutput_TDATA__0_carry__2_n_14),
        .I2(add_ln35_reg_575[25]),
        .O(pstrmOutput_TDATA__188_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__2_i_6
       (.I0(pstrmOutput_TDATA__94_carry__2_n_15),
        .I1(pstrmOutput_TDATA__0_carry__2_n_15),
        .I2(add_ln35_reg_575[24]),
        .O(pstrmOutput_TDATA__188_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair79" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry__2_i_7
       (.I0(pstrmOutput_TDATA__94_carry__1_n_8),
        .I1(pstrmOutput_TDATA__0_carry__1_n_8),
        .I2(add_ln35_reg_575[23]),
        .O(pstrmOutput_TDATA__188_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    pstrmOutput_TDATA__188_carry__2_i_8
       (.I0(add_ln35_reg_575[30]),
        .I1(pstrmOutput_TDATA__0_carry__2_n_9),
        .I2(pstrmOutput_TDATA__94_carry__2_n_9),
        .I3(pstrmOutput_TDATA__0_carry__2_n_8),
        .I4(pstrmOutput_TDATA__94_carry__2_n_8),
        .I5(add_ln35_reg_575[31]),
        .O(pstrmOutput_TDATA__188_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry__2_i_9
       (.I0(pstrmOutput_TDATA__188_carry__2_i_1_n_0),
        .I1(pstrmOutput_TDATA__0_carry__2_n_9),
        .I2(pstrmOutput_TDATA__94_carry__2_n_9),
        .I3(add_ln35_reg_575[30]),
        .O(pstrmOutput_TDATA__188_carry__2_i_9_n_0));
  (* HLUTNM = "lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry_i_1
       (.I0(pstrmOutput_TDATA__94_carry_n_9),
        .I1(pstrmOutput_TDATA__0_carry_n_9),
        .I2(add_ln35_reg_575[6]),
        .O(pstrmOutput_TDATA__188_carry_i_1_n_0));
  (* HLUTNM = "lutpair61" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry_i_10
       (.I0(pstrmOutput_TDATA__94_carry_n_10),
        .I1(pstrmOutput_TDATA__0_carry_n_10),
        .I2(add_ln35_reg_575[5]),
        .I3(pstrmOutput_TDATA__188_carry_i_3_n_0),
        .O(pstrmOutput_TDATA__188_carry_i_10_n_0));
  (* HLUTNM = "lutpair60" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry_i_11
       (.I0(pstrmOutput_TDATA__94_carry_n_11),
        .I1(pstrmOutput_TDATA__0_carry_n_11),
        .I2(add_ln35_reg_575[4]),
        .I3(pstrmOutput_TDATA__188_carry_i_4_n_0),
        .O(pstrmOutput_TDATA__188_carry_i_11_n_0));
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry_i_12
       (.I0(pstrmOutput_TDATA__94_carry_n_12),
        .I1(pstrmOutput_TDATA__0_carry_n_12),
        .I2(add_ln35_reg_575[3]),
        .I3(pstrmOutput_TDATA__188_carry_i_5_n_0),
        .O(pstrmOutput_TDATA__188_carry_i_12_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry_i_13
       (.I0(pstrmOutput_TDATA__94_carry_n_13),
        .I1(pstrmOutput_TDATA__0_carry_n_13),
        .I2(add_ln35_reg_575[2]),
        .I3(pstrmOutput_TDATA__188_carry_i_6_n_0),
        .O(pstrmOutput_TDATA__188_carry_i_13_n_0));
  (* HLUTNM = "lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry_i_14
       (.I0(pstrmOutput_TDATA__94_carry_n_14),
        .I1(pstrmOutput_TDATA__0_carry_n_14),
        .I2(add_ln35_reg_575[1]),
        .I3(pstrmOutput_TDATA__188_carry_i_7_n_0),
        .O(pstrmOutput_TDATA__188_carry_i_14_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT3 #(
    .INIT(8'h96)) 
    pstrmOutput_TDATA__188_carry_i_15
       (.I0(pstrmOutput_TDATA__94_carry_n_15),
        .I1(pstrmOutput_TDATA__0_carry_n_15),
        .I2(add_ln35_reg_575[0]),
        .O(pstrmOutput_TDATA__188_carry_i_15_n_0));
  (* HLUTNM = "lutpair61" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry_i_2
       (.I0(pstrmOutput_TDATA__94_carry_n_10),
        .I1(pstrmOutput_TDATA__0_carry_n_10),
        .I2(add_ln35_reg_575[5]),
        .O(pstrmOutput_TDATA__188_carry_i_2_n_0));
  (* HLUTNM = "lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry_i_3
       (.I0(pstrmOutput_TDATA__94_carry_n_11),
        .I1(pstrmOutput_TDATA__0_carry_n_11),
        .I2(add_ln35_reg_575[4]),
        .O(pstrmOutput_TDATA__188_carry_i_3_n_0));
  (* HLUTNM = "lutpair59" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry_i_4
       (.I0(pstrmOutput_TDATA__94_carry_n_12),
        .I1(pstrmOutput_TDATA__0_carry_n_12),
        .I2(add_ln35_reg_575[3]),
        .O(pstrmOutput_TDATA__188_carry_i_4_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry_i_5
       (.I0(pstrmOutput_TDATA__94_carry_n_13),
        .I1(pstrmOutput_TDATA__0_carry_n_13),
        .I2(add_ln35_reg_575[2]),
        .O(pstrmOutput_TDATA__188_carry_i_5_n_0));
  (* HLUTNM = "lutpair57" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry_i_6
       (.I0(pstrmOutput_TDATA__94_carry_n_14),
        .I1(pstrmOutput_TDATA__0_carry_n_14),
        .I2(add_ln35_reg_575[1]),
        .O(pstrmOutput_TDATA__188_carry_i_6_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__188_carry_i_7
       (.I0(pstrmOutput_TDATA__94_carry_n_15),
        .I1(pstrmOutput_TDATA__0_carry_n_15),
        .I2(add_ln35_reg_575[0]),
        .O(pstrmOutput_TDATA__188_carry_i_7_n_0));
  (* HLUTNM = "lutpair63" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry_i_8
       (.I0(pstrmOutput_TDATA__94_carry_n_8),
        .I1(pstrmOutput_TDATA__0_carry_n_8),
        .I2(add_ln35_reg_575[7]),
        .I3(pstrmOutput_TDATA__188_carry_i_1_n_0),
        .O(pstrmOutput_TDATA__188_carry_i_8_n_0));
  (* HLUTNM = "lutpair62" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__188_carry_i_9
       (.I0(pstrmOutput_TDATA__94_carry_n_9),
        .I1(pstrmOutput_TDATA__0_carry_n_9),
        .I2(add_ln35_reg_575[6]),
        .I3(pstrmOutput_TDATA__188_carry_i_2_n_0),
        .O(pstrmOutput_TDATA__188_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__94_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({pstrmOutput_TDATA__94_carry_n_0,pstrmOutput_TDATA__94_carry_n_1,pstrmOutput_TDATA__94_carry_n_2,pstrmOutput_TDATA__94_carry_n_3,pstrmOutput_TDATA__94_carry_n_4,pstrmOutput_TDATA__94_carry_n_5,pstrmOutput_TDATA__94_carry_n_6,pstrmOutput_TDATA__94_carry_n_7}),
        .DI({mul_32s_32s_32_1_1_U11_n_17,mul_32s_32s_32_1_1_U11_n_18,mul_32s_32s_32_1_1_U11_n_19,mul_32s_32s_32_1_1_U11_n_20,mul_32s_32s_32_1_1_U11_n_21,mul_32s_32s_32_1_1_U11_n_22,mul_32s_32s_32_1_1_U11_n_23,1'b0}),
        .O({pstrmOutput_TDATA__94_carry_n_8,pstrmOutput_TDATA__94_carry_n_9,pstrmOutput_TDATA__94_carry_n_10,pstrmOutput_TDATA__94_carry_n_11,pstrmOutput_TDATA__94_carry_n_12,pstrmOutput_TDATA__94_carry_n_13,pstrmOutput_TDATA__94_carry_n_14,pstrmOutput_TDATA__94_carry_n_15}),
        .S({mul_32s_32s_32_1_1_U11_n_24,mul_32s_32s_32_1_1_U11_n_25,mul_32s_32s_32_1_1_U11_n_26,mul_32s_32s_32_1_1_U11_n_27,mul_32s_32s_32_1_1_U11_n_28,mul_32s_32s_32_1_1_U11_n_29,mul_32s_32s_32_1_1_U11_n_30,mul_32s_32s_32_1_1_U11_n_31}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__94_carry__0
       (.CI(pstrmOutput_TDATA__94_carry_n_0),
        .CI_TOP(1'b0),
        .CO({pstrmOutput_TDATA__94_carry__0_n_0,pstrmOutput_TDATA__94_carry__0_n_1,pstrmOutput_TDATA__94_carry__0_n_2,pstrmOutput_TDATA__94_carry__0_n_3,pstrmOutput_TDATA__94_carry__0_n_4,pstrmOutput_TDATA__94_carry__0_n_5,pstrmOutput_TDATA__94_carry__0_n_6,pstrmOutput_TDATA__94_carry__0_n_7}),
        .DI({mul_32s_32s_32_1_1_U11_n_32,mul_32s_32s_32_1_1_U11_n_33,mul_32s_32s_32_1_1_U11_n_34,mul_32s_32s_32_1_1_U11_n_35,mul_32s_32s_32_1_1_U11_n_36,mul_32s_32s_32_1_1_U11_n_37,mul_32s_32s_32_1_1_U11_n_38,mul_32s_32s_32_1_1_U11_n_39}),
        .O({pstrmOutput_TDATA__94_carry__0_n_8,pstrmOutput_TDATA__94_carry__0_n_9,pstrmOutput_TDATA__94_carry__0_n_10,pstrmOutput_TDATA__94_carry__0_n_11,pstrmOutput_TDATA__94_carry__0_n_12,pstrmOutput_TDATA__94_carry__0_n_13,pstrmOutput_TDATA__94_carry__0_n_14,pstrmOutput_TDATA__94_carry__0_n_15}),
        .S({mul_32s_32s_32_1_1_U11_n_40,mul_32s_32s_32_1_1_U11_n_41,mul_32s_32s_32_1_1_U11_n_42,mul_32s_32s_32_1_1_U11_n_43,mul_32s_32s_32_1_1_U11_n_44,mul_32s_32s_32_1_1_U11_n_45,mul_32s_32s_32_1_1_U11_n_46,mul_32s_32s_32_1_1_U11_n_47}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__94_carry__1
       (.CI(pstrmOutput_TDATA__94_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({pstrmOutput_TDATA__94_carry__1_n_0,pstrmOutput_TDATA__94_carry__1_n_1,pstrmOutput_TDATA__94_carry__1_n_2,pstrmOutput_TDATA__94_carry__1_n_3,pstrmOutput_TDATA__94_carry__1_n_4,pstrmOutput_TDATA__94_carry__1_n_5,pstrmOutput_TDATA__94_carry__1_n_6,pstrmOutput_TDATA__94_carry__1_n_7}),
        .DI({mul_32s_32s_32_1_1_U6_n_83,mul_32s_32s_32_1_1_U6_n_84,mul_32s_32s_32_1_1_U6_n_85,mul_32s_32s_32_1_1_U6_n_86,mul_32s_32s_32_1_1_U6_n_87,mul_32s_32s_32_1_1_U6_n_88,mul_32s_32s_32_1_1_U6_n_89,mul_32s_32s_32_1_1_U11_n_48}),
        .O({pstrmOutput_TDATA__94_carry__1_n_8,pstrmOutput_TDATA__94_carry__1_n_9,pstrmOutput_TDATA__94_carry__1_n_10,pstrmOutput_TDATA__94_carry__1_n_11,pstrmOutput_TDATA__94_carry__1_n_12,pstrmOutput_TDATA__94_carry__1_n_13,pstrmOutput_TDATA__94_carry__1_n_14,pstrmOutput_TDATA__94_carry__1_n_15}),
        .S({mul_32s_32s_32_1_1_U6_n_90,mul_32s_32s_32_1_1_U6_n_91,mul_32s_32s_32_1_1_U6_n_92,mul_32s_32s_32_1_1_U6_n_93,mul_32s_32s_32_1_1_U6_n_94,mul_32s_32s_32_1_1_U6_n_95,mul_32s_32s_32_1_1_U6_n_96,mul_32s_32s_32_1_1_U11_n_49}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pstrmOutput_TDATA__94_carry__2
       (.CI(pstrmOutput_TDATA__94_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pstrmOutput_TDATA__94_carry__2_CO_UNCONNECTED[7],pstrmOutput_TDATA__94_carry__2_n_1,pstrmOutput_TDATA__94_carry__2_n_2,pstrmOutput_TDATA__94_carry__2_n_3,pstrmOutput_TDATA__94_carry__2_n_4,pstrmOutput_TDATA__94_carry__2_n_5,pstrmOutput_TDATA__94_carry__2_n_6,pstrmOutput_TDATA__94_carry__2_n_7}),
        .DI({1'b0,mul_32s_32s_32_1_1_U6_n_76,mul_32s_32s_32_1_1_U6_n_77,mul_32s_32s_32_1_1_U6_n_78,mul_32s_32s_32_1_1_U6_n_79,mul_32s_32s_32_1_1_U6_n_80,mul_32s_32s_32_1_1_U6_n_81,mul_32s_32s_32_1_1_U6_n_82}),
        .O({pstrmOutput_TDATA__94_carry__2_n_8,pstrmOutput_TDATA__94_carry__2_n_9,pstrmOutput_TDATA__94_carry__2_n_10,pstrmOutput_TDATA__94_carry__2_n_11,pstrmOutput_TDATA__94_carry__2_n_12,pstrmOutput_TDATA__94_carry__2_n_13,pstrmOutput_TDATA__94_carry__2_n_14,pstrmOutput_TDATA__94_carry__2_n_15}),
        .S({mul_32s_32s_32_1_1_U9_n_82,mul_32s_32s_32_1_1_U6_n_69,mul_32s_32s_32_1_1_U6_n_70,mul_32s_32s_32_1_1_U6_n_71,mul_32s_32s_32_1_1_U6_n_72,mul_32s_32s_32_1_1_U6_n_73,mul_32s_32s_32_1_1_U6_n_74,mul_32s_32s_32_1_1_U6_n_75}));
  FDRE \tmp_dest_V_reg_685_reg[0] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(pstrmInput_TDEST_int_regslice),
        .Q(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST),
        .R(1'b0));
  FDRE \tmp_id_V_reg_680_reg[0] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(pstrmInput_TID_int_regslice),
        .Q(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_660_reg[0] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(\tmp_keep_V_reg_660_reg[3]_1 [0]),
        .Q(\tmp_keep_V_reg_660_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_660_reg[1] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(\tmp_keep_V_reg_660_reg[3]_1 [1]),
        .Q(\tmp_keep_V_reg_660_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_660_reg[2] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(\tmp_keep_V_reg_660_reg[3]_1 [2]),
        .Q(\tmp_keep_V_reg_660_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_660_reg[3] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(\tmp_keep_V_reg_660_reg[3]_1 [3]),
        .Q(\tmp_keep_V_reg_660_reg[3]_0 [3]),
        .R(1'b0));
  FDRE \tmp_last_V_reg_675_reg[0] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(pstrmInput_TLAST_int_regslice),
        .Q(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_665_reg[0] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(\tmp_strb_V_reg_665_reg[3]_1 [0]),
        .Q(\tmp_strb_V_reg_665_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_665_reg[1] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(\tmp_strb_V_reg_665_reg[3]_1 [1]),
        .Q(\tmp_strb_V_reg_665_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_665_reg[2] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(\tmp_strb_V_reg_665_reg[3]_1 [2]),
        .Q(\tmp_strb_V_reg_665_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_665_reg[3] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(\tmp_strb_V_reg_665_reg[3]_1 [3]),
        .Q(\tmp_strb_V_reg_665_reg[3]_0 [3]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_670_reg[0] 
       (.C(ap_clk),
        .CE(mul_ln35_9_reg_6900),
        .D(pstrmInput_TUSER_int_regslice),
        .Q(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_flow_control_loop_pipe_sequential_init
   (SR,
    D,
    \B_V_data_1_state_reg[1] ,
    ap_ready_int,
    S,
    DI,
    \n32XferCnt_fu_114_reg[30] ,
    \n32XferCnt_fu_114_reg[30]_0 ,
    \n32XferCnt_fu_114_reg[30]_1 ,
    ap_rst_n_inv,
    ap_clk,
    pstrmOutput_TREADY_int_regslice,
    \ap_CS_fsm_reg[3] ,
    ap_enable_reg_pp0_iter1,
    \n32XferCnt_fu_114_reg[0] ,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    ap_loop_exit_ready_pp0_iter1_reg,
    \ap_CS_fsm_reg[3]_0 ,
    ap_done,
    ap_rst_n,
    Q,
    \n32XferCnt_load_reg_546_reg[30] ,
    \icmp_ln22_reg_556_reg[0] ,
    pstrmInput_TVALID_int_regslice,
    ap_enable_reg_pp0_iter0_reg);
  output [0:0]SR;
  output [1:0]D;
  output \B_V_data_1_state_reg[1] ;
  output ap_ready_int;
  output [7:0]S;
  output [7:0]DI;
  output [7:0]\n32XferCnt_fu_114_reg[30] ;
  output [7:0]\n32XferCnt_fu_114_reg[30]_0 ;
  output [30:0]\n32XferCnt_fu_114_reg[30]_1 ;
  input ap_rst_n_inv;
  input ap_clk;
  input pstrmOutput_TREADY_int_regslice;
  input [2:0]\ap_CS_fsm_reg[3] ;
  input ap_enable_reg_pp0_iter1;
  input \n32XferCnt_fu_114_reg[0] ;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input \ap_CS_fsm_reg[3]_0 ;
  input ap_done;
  input ap_rst_n;
  input [1:0]Q;
  input [30:0]\n32XferCnt_load_reg_546_reg[30] ;
  input [30:0]\icmp_ln22_reg_556_reg[0] ;
  input pstrmInput_TVALID_int_regslice;
  input ap_enable_reg_pp0_iter0_reg;

  wire \B_V_data_1_state_reg[1] ;
  wire [1:0]D;
  wire [7:0]DI;
  wire [1:0]Q;
  wire [7:0]S;
  wire [0:0]SR;
  wire [2:0]\ap_CS_fsm_reg[3] ;
  wire \ap_CS_fsm_reg[3]_0 ;
  wire ap_clk;
  wire ap_done;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_sig_allocacmp_n32XferCnt_load1__0;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire [30:0]\icmp_ln22_reg_556_reg[0] ;
  wire \n32XferCnt_fu_114_reg[0] ;
  wire [7:0]\n32XferCnt_fu_114_reg[30] ;
  wire [7:0]\n32XferCnt_fu_114_reg[30]_0 ;
  wire [30:0]\n32XferCnt_fu_114_reg[30]_1 ;
  wire [30:0]\n32XferCnt_load_reg_546_reg[30] ;
  wire pstrmInput_TVALID_int_regslice;
  wire pstrmOutput_TREADY_int_regslice;

  LUT6 #(
    .INIT(64'hFFFFFFFFDD0D0000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_done_cache),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(\B_V_data_1_state_reg[1] ),
        .I4(\ap_CS_fsm_reg[3] [1]),
        .I5(\ap_CS_fsm_reg[3] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h08AAFFFF08AA08AA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [1]),
        .I1(ap_done_cache),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(\ap_CS_fsm_reg[3]_0 ),
        .I4(ap_done),
        .I5(\ap_CS_fsm_reg[3] [2]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h5D0C)) 
    ap_done_cache_i_1
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(\B_V_data_1_state_reg[1] ),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h5D5DFF5D)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(ap_ready_int),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(\B_V_data_1_state_reg[1] ),
        .O(ap_loop_init_int_i_1_n_0));
  LUT6 #(
    .INIT(64'hA2A2A2000000A200)) 
    ap_loop_init_int_i_2
       (.I0(Q[1]),
        .I1(\n32XferCnt_fu_114_reg[0] ),
        .I2(pstrmInput_TVALID_int_regslice),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(Q[0]),
        .I5(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .O(ap_ready_int));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7000FFFF)) 
    dout_i_5
       (.I0(pstrmOutput_TREADY_int_regslice),
        .I1(\ap_CS_fsm_reg[3] [1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\n32XferCnt_fu_114_reg[0] ),
        .I4(Q[0]),
        .O(\B_V_data_1_state_reg[1] ));
  LUT5 #(
    .INIT(32'hD5550000)) 
    icmp_ln22_fu_279_p2_carry__0_i_1
       (.I0(\n32XferCnt_load_reg_546_reg[30] [30]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .I4(\icmp_ln22_reg_556_reg[0] [30]),
        .O(\n32XferCnt_fu_114_reg[30]_0 [7]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry__0_i_10
       (.I0(\n32XferCnt_load_reg_546_reg[30] [29]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [29]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [28]),
        .I4(\icmp_ln22_reg_556_reg[0] [28]),
        .O(\n32XferCnt_fu_114_reg[30] [6]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry__0_i_11
       (.I0(\n32XferCnt_load_reg_546_reg[30] [27]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [27]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [26]),
        .I4(\icmp_ln22_reg_556_reg[0] [26]),
        .O(\n32XferCnt_fu_114_reg[30] [5]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry__0_i_12
       (.I0(\n32XferCnt_load_reg_546_reg[30] [25]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [25]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [24]),
        .I4(\icmp_ln22_reg_556_reg[0] [24]),
        .O(\n32XferCnt_fu_114_reg[30] [4]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry__0_i_13
       (.I0(\n32XferCnt_load_reg_546_reg[30] [23]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [23]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [22]),
        .I4(\icmp_ln22_reg_556_reg[0] [22]),
        .O(\n32XferCnt_fu_114_reg[30] [3]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry__0_i_14
       (.I0(\n32XferCnt_load_reg_546_reg[30] [21]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [21]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [20]),
        .I4(\icmp_ln22_reg_556_reg[0] [20]),
        .O(\n32XferCnt_fu_114_reg[30] [2]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry__0_i_15
       (.I0(\n32XferCnt_load_reg_546_reg[30] [19]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [19]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [18]),
        .I4(\icmp_ln22_reg_556_reg[0] [18]),
        .O(\n32XferCnt_fu_114_reg[30] [1]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry__0_i_16
       (.I0(\n32XferCnt_load_reg_546_reg[30] [17]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [17]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [16]),
        .I4(\icmp_ln22_reg_556_reg[0] [16]),
        .O(\n32XferCnt_fu_114_reg[30] [0]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry__0_i_2
       (.I0(\n32XferCnt_load_reg_546_reg[30] [28]),
        .I1(\icmp_ln22_reg_556_reg[0] [28]),
        .I2(\icmp_ln22_reg_556_reg[0] [29]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [29]),
        .O(\n32XferCnt_fu_114_reg[30]_0 [6]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry__0_i_3
       (.I0(\n32XferCnt_load_reg_546_reg[30] [26]),
        .I1(\icmp_ln22_reg_556_reg[0] [26]),
        .I2(\icmp_ln22_reg_556_reg[0] [27]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [27]),
        .O(\n32XferCnt_fu_114_reg[30]_0 [5]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry__0_i_4
       (.I0(\n32XferCnt_load_reg_546_reg[30] [24]),
        .I1(\icmp_ln22_reg_556_reg[0] [24]),
        .I2(\icmp_ln22_reg_556_reg[0] [25]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [25]),
        .O(\n32XferCnt_fu_114_reg[30]_0 [4]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry__0_i_5
       (.I0(\n32XferCnt_load_reg_546_reg[30] [22]),
        .I1(\icmp_ln22_reg_556_reg[0] [22]),
        .I2(\icmp_ln22_reg_556_reg[0] [23]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [23]),
        .O(\n32XferCnt_fu_114_reg[30]_0 [3]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry__0_i_6
       (.I0(\n32XferCnt_load_reg_546_reg[30] [20]),
        .I1(\icmp_ln22_reg_556_reg[0] [20]),
        .I2(\icmp_ln22_reg_556_reg[0] [21]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [21]),
        .O(\n32XferCnt_fu_114_reg[30]_0 [2]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry__0_i_7
       (.I0(\n32XferCnt_load_reg_546_reg[30] [18]),
        .I1(\icmp_ln22_reg_556_reg[0] [18]),
        .I2(\icmp_ln22_reg_556_reg[0] [19]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [19]),
        .O(\n32XferCnt_fu_114_reg[30]_0 [1]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry__0_i_8
       (.I0(\n32XferCnt_load_reg_546_reg[30] [16]),
        .I1(\icmp_ln22_reg_556_reg[0] [16]),
        .I2(\icmp_ln22_reg_556_reg[0] [17]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [17]),
        .O(\n32XferCnt_fu_114_reg[30]_0 [0]));
  LUT5 #(
    .INIT(32'h2AAAD555)) 
    icmp_ln22_fu_279_p2_carry__0_i_9
       (.I0(\n32XferCnt_load_reg_546_reg[30] [30]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .I4(\icmp_ln22_reg_556_reg[0] [30]),
        .O(\n32XferCnt_fu_114_reg[30] [7]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry_i_1
       (.I0(\n32XferCnt_load_reg_546_reg[30] [14]),
        .I1(\icmp_ln22_reg_556_reg[0] [14]),
        .I2(\icmp_ln22_reg_556_reg[0] [15]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [15]),
        .O(DI[7]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry_i_10
       (.I0(\n32XferCnt_load_reg_546_reg[30] [13]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [13]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [12]),
        .I4(\icmp_ln22_reg_556_reg[0] [12]),
        .O(S[6]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry_i_11
       (.I0(\n32XferCnt_load_reg_546_reg[30] [11]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [11]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [10]),
        .I4(\icmp_ln22_reg_556_reg[0] [10]),
        .O(S[5]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry_i_12
       (.I0(\n32XferCnt_load_reg_546_reg[30] [9]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [9]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [8]),
        .I4(\icmp_ln22_reg_556_reg[0] [8]),
        .O(S[4]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry_i_13
       (.I0(\n32XferCnt_load_reg_546_reg[30] [7]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [7]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [6]),
        .I4(\icmp_ln22_reg_556_reg[0] [6]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry_i_14
       (.I0(\n32XferCnt_load_reg_546_reg[30] [5]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [5]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [4]),
        .I4(\icmp_ln22_reg_556_reg[0] [4]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry_i_15
       (.I0(\n32XferCnt_load_reg_546_reg[30] [3]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [3]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [2]),
        .I4(\icmp_ln22_reg_556_reg[0] [2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry_i_16
       (.I0(\n32XferCnt_load_reg_546_reg[30] [1]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [1]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [0]),
        .I4(\icmp_ln22_reg_556_reg[0] [0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry_i_2
       (.I0(\n32XferCnt_load_reg_546_reg[30] [12]),
        .I1(\icmp_ln22_reg_556_reg[0] [12]),
        .I2(\icmp_ln22_reg_556_reg[0] [13]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [13]),
        .O(DI[6]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry_i_3
       (.I0(\n32XferCnt_load_reg_546_reg[30] [10]),
        .I1(\icmp_ln22_reg_556_reg[0] [10]),
        .I2(\icmp_ln22_reg_556_reg[0] [11]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [11]),
        .O(DI[5]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry_i_4
       (.I0(\n32XferCnt_load_reg_546_reg[30] [8]),
        .I1(\icmp_ln22_reg_556_reg[0] [8]),
        .I2(\icmp_ln22_reg_556_reg[0] [9]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [9]),
        .O(DI[4]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry_i_5
       (.I0(\n32XferCnt_load_reg_546_reg[30] [6]),
        .I1(\icmp_ln22_reg_556_reg[0] [6]),
        .I2(\icmp_ln22_reg_556_reg[0] [7]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [7]),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry_i_6
       (.I0(\n32XferCnt_load_reg_546_reg[30] [4]),
        .I1(\icmp_ln22_reg_556_reg[0] [4]),
        .I2(\icmp_ln22_reg_556_reg[0] [5]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [5]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry_i_7
       (.I0(\n32XferCnt_load_reg_546_reg[30] [2]),
        .I1(\icmp_ln22_reg_556_reg[0] [2]),
        .I2(\icmp_ln22_reg_556_reg[0] [3]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [3]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hFC40FCF4)) 
    icmp_ln22_fu_279_p2_carry_i_8
       (.I0(\n32XferCnt_load_reg_546_reg[30] [0]),
        .I1(\icmp_ln22_reg_556_reg[0] [0]),
        .I2(\icmp_ln22_reg_556_reg[0] [1]),
        .I3(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I4(\n32XferCnt_load_reg_546_reg[30] [1]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h21000C2D)) 
    icmp_ln22_fu_279_p2_carry_i_9
       (.I0(\n32XferCnt_load_reg_546_reg[30] [15]),
        .I1(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I2(\icmp_ln22_reg_556_reg[0] [15]),
        .I3(\n32XferCnt_load_reg_546_reg[30] [14]),
        .I4(\icmp_ln22_reg_556_reg[0] [14]),
        .O(S[7]));
  LUT5 #(
    .INIT(32'h80AAAAAA)) 
    \n32XferCnt_fu_114[30]_i_1 
       (.I0(ap_sig_allocacmp_n32XferCnt_load1__0),
        .I1(pstrmOutput_TREADY_int_regslice),
        .I2(\ap_CS_fsm_reg[3] [1]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\n32XferCnt_fu_114_reg[0] ),
        .O(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \n32XferCnt_fu_114[30]_i_4 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .O(ap_sig_allocacmp_n32XferCnt_load1__0));
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[0]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [0]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[10]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [10]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[11]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [11]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[12]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [12]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[13]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [13]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[14]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [14]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[15]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [15]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[16]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [16]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[17]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [17]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[18]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [18]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[19]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [19]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [19]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[1]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [1]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[20]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [20]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[21]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [21]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[22]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [22]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[23]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [23]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[24]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [24]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[25]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [25]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[26]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [26]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[27]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [27]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[28]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [28]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[29]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [29]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [29]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[2]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [2]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[30]_i_2 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [30]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[3]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [3]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[4]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [4]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[5]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [5]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[6]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [6]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[7]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [7]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[8]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [8]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \n32XferCnt_load_reg_546[9]_i_1 
       (.I0(\n32XferCnt_load_reg_546_reg[30] [9]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\n32XferCnt_fu_114_reg[30]_1 [9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1
   (\ap_CS_fsm_reg[2] ,
    E,
    D,
    PCOUT,
    mul_ln35_reg_565_reg__1,
    CEB2,
    CEA2,
    ap_clk,
    q00,
    Q,
    P,
    add_ln35_fu_311_p2_carry__1_i_8,
    DSP_A_B_DATA_INST,
    \mul_ln35_reg_565_reg[0]__0 ,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    ap_enable_reg_pp0_iter0_reg);
  output \ap_CS_fsm_reg[2] ;
  output [0:0]E;
  output [16:0]D;
  output [47:0]PCOUT;
  output [15:0]mul_ln35_reg_565_reg__1;
  input CEB2;
  input CEA2;
  input ap_clk;
  input [31:0]q00;
  input [16:0]Q;
  input [14:0]P;
  input [0:0]add_ln35_fu_311_p2_carry__1_i_8;
  input [2:0]DSP_A_B_DATA_INST;
  input \mul_ln35_reg_565_reg[0]__0 ;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input ap_enable_reg_pp0_iter0_reg;

  wire CEA2;
  wire CEB2;
  wire [16:0]D;
  wire [2:0]DSP_A_B_DATA_INST;
  wire [0:0]E;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [16:0]Q;
  wire [0:0]add_ln35_fu_311_p2_carry__1_i_8;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout_carry__0_i_1_n_0;
  wire dout_carry__0_i_2_n_0;
  wire dout_carry__0_i_3_n_0;
  wire dout_carry__0_i_4_n_0;
  wire dout_carry__0_i_5_n_0;
  wire dout_carry__0_i_6_n_0;
  wire dout_carry__0_i_7_n_0;
  wire dout_carry__0_i_8_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1_n_0;
  wire dout_carry_i_2_n_0;
  wire dout_carry_i_3_n_0;
  wire dout_carry_i_4_n_0;
  wire dout_carry_i_5_n_0;
  wire dout_carry_i_6_n_0;
  wire dout_carry_i_7_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire \mul_ln35_reg_565_reg[0]__0 ;
  wire [15:0]mul_ln35_reg_565_reg__1;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEB2),
        .CEA2(\ap_CS_fsm_reg[2] ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB2),
        .CEB2(\ap_CS_fsm_reg[2] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(mul_ln35_reg_565_reg__1[7:0]),
        .S({dout_carry_i_1_n_0,dout_carry_i_2_n_0,dout_carry_i_3_n_0,dout_carry_i_4_n_0,dout_carry_i_5_n_0,dout_carry_i_6_n_0,dout_carry_i_7_n_0,add_ln35_fu_311_p2_carry__1_i_8}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln35_reg_565_reg__1[15:8]),
        .S({dout_carry__0_i_1_n_0,dout_carry__0_i_2_n_0,dout_carry__0_i_3_n_0,dout_carry__0_i_4_n_0,dout_carry__0_i_5_n_0,dout_carry__0_i_6_n_0,dout_carry__0_i_7_n_0,dout_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h80888000)) 
    dout_i_2
       (.I0(DSP_A_B_DATA_INST[2]),
        .I1(\mul_ln35_reg_565_reg[0]__0 ),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(DSP_A_B_DATA_INST[0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(\ap_CS_fsm_reg[2] ));
  LUT2 #(
    .INIT(4'h8)) 
    dout_i_4
       (.I0(DSP_A_B_DATA_INST[1]),
        .I1(\mul_ln35_reg_565_reg[0]__0 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_11
   (D,
    PCOUT,
    S,
    DI,
    \add_ln35_4_reg_635_reg[22] ,
    \add_ln35_4_reg_635_reg[23] ,
    CEB1,
    CEA2,
    CEP,
    ap_clk,
    q00,
    pstrmInput_TDATA_int_regslice,
    P,
    Q,
    pstrmOutput_TDATA__0_carry__2,
    pstrmOutput_TDATA__0_carry__2_0,
    pstrmOutput_TDATA__0_carry__1);
  output [16:0]D;
  output [47:0]PCOUT;
  output [7:0]S;
  output [6:0]DI;
  output [6:0]\add_ln35_4_reg_635_reg[22] ;
  output [7:0]\add_ln35_4_reg_635_reg[23] ;
  input CEB1;
  input CEA2;
  input CEP;
  input ap_clk;
  input [31:0]q00;
  input [16:0]pstrmInput_TDATA_int_regslice;
  input [14:0]P;
  input [0:0]Q;
  input [15:0]pstrmOutput_TDATA__0_carry__2;
  input [15:0]pstrmOutput_TDATA__0_carry__2_0;
  input [0:0]pstrmOutput_TDATA__0_carry__1;

  wire CEA2;
  wire CEB1;
  wire CEP;
  wire [16:0]D;
  wire [6:0]DI;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [7:0]S;
  wire [6:0]\add_ln35_4_reg_635_reg[22] ;
  wire [7:0]\add_ln35_4_reg_635_reg[23] ;
  wire ap_clk;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout_carry__0_i_1__4_n_0;
  wire dout_carry__0_i_2__4_n_0;
  wire dout_carry__0_i_3__4_n_0;
  wire dout_carry__0_i_4__4_n_0;
  wire dout_carry__0_i_5__4_n_0;
  wire dout_carry__0_i_6__4_n_0;
  wire dout_carry__0_i_7__4_n_0;
  wire dout_carry__0_i_8__4_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__4_n_0;
  wire dout_carry_i_2__4_n_0;
  wire dout_carry_i_3__4_n_0;
  wire dout_carry_i_4__4_n_0;
  wire dout_carry_i_5__4_n_0;
  wire dout_carry_i_6__4_n_0;
  wire dout_carry_i_7__4_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire [31:16]mul_ln35_9_reg_690_reg__1;
  wire [16:0]pstrmInput_TDATA_int_regslice;
  wire [0:0]pstrmOutput_TDATA__0_carry__1;
  wire [15:0]pstrmOutput_TDATA__0_carry__2;
  wire [15:0]pstrmOutput_TDATA__0_carry__2_0;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pstrmInput_TDATA_int_regslice}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEB1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,pstrmInput_TDATA_int_regslice}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEB1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(mul_ln35_9_reg_690_reg__1[23:16]),
        .S({dout_carry_i_1__4_n_0,dout_carry_i_2__4_n_0,dout_carry_i_3__4_n_0,dout_carry_i_4__4_n_0,dout_carry_i_5__4_n_0,dout_carry_i_6__4_n_0,dout_carry_i_7__4_n_0,Q}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln35_9_reg_690_reg__1[31:24]),
        .S({dout_carry__0_i_1__4_n_0,dout_carry__0_i_2__4_n_0,dout_carry__0_i_3__4_n_0,dout_carry__0_i_4__4_n_0,dout_carry__0_i_5__4_n_0,dout_carry__0_i_6__4_n_0,dout_carry__0_i_7__4_n_0,dout_carry__0_i_8__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__4
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__4
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__4
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__4
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__4
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__4
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__4
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__4
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__4
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__4
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__4
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__4
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__4
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__4
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__4
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__4_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__1_i_1
       (.I0(pstrmOutput_TDATA__0_carry__2_0[6]),
        .I1(pstrmOutput_TDATA__0_carry__2[6]),
        .I2(mul_ln35_9_reg_690_reg__1[22]),
        .O(\add_ln35_4_reg_635_reg[22] [6]));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__1_i_10
       (.I0(pstrmOutput_TDATA__0_carry__2_0[6]),
        .I1(pstrmOutput_TDATA__0_carry__2[6]),
        .I2(mul_ln35_9_reg_690_reg__1[22]),
        .I3(\add_ln35_4_reg_635_reg[22] [5]),
        .O(\add_ln35_4_reg_635_reg[23] [6]));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__1_i_11
       (.I0(pstrmOutput_TDATA__0_carry__2_0[5]),
        .I1(pstrmOutput_TDATA__0_carry__2[5]),
        .I2(mul_ln35_9_reg_690_reg__1[21]),
        .I3(\add_ln35_4_reg_635_reg[22] [4]),
        .O(\add_ln35_4_reg_635_reg[23] [5]));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__1_i_12
       (.I0(pstrmOutput_TDATA__0_carry__2_0[4]),
        .I1(pstrmOutput_TDATA__0_carry__2[4]),
        .I2(mul_ln35_9_reg_690_reg__1[20]),
        .I3(\add_ln35_4_reg_635_reg[22] [3]),
        .O(\add_ln35_4_reg_635_reg[23] [4]));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__1_i_13
       (.I0(pstrmOutput_TDATA__0_carry__2_0[3]),
        .I1(pstrmOutput_TDATA__0_carry__2[3]),
        .I2(mul_ln35_9_reg_690_reg__1[19]),
        .I3(\add_ln35_4_reg_635_reg[22] [2]),
        .O(\add_ln35_4_reg_635_reg[23] [3]));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__1_i_14
       (.I0(pstrmOutput_TDATA__0_carry__2_0[2]),
        .I1(pstrmOutput_TDATA__0_carry__2[2]),
        .I2(mul_ln35_9_reg_690_reg__1[18]),
        .I3(\add_ln35_4_reg_635_reg[22] [1]),
        .O(\add_ln35_4_reg_635_reg[23] [2]));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__1_i_15
       (.I0(pstrmOutput_TDATA__0_carry__2_0[1]),
        .I1(pstrmOutput_TDATA__0_carry__2[1]),
        .I2(mul_ln35_9_reg_690_reg__1[17]),
        .I3(\add_ln35_4_reg_635_reg[22] [0]),
        .O(\add_ln35_4_reg_635_reg[23] [1]));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__1_i_16
       (.I0(pstrmOutput_TDATA__0_carry__2_0[0]),
        .I1(pstrmOutput_TDATA__0_carry__2[0]),
        .I2(mul_ln35_9_reg_690_reg__1[16]),
        .I3(pstrmOutput_TDATA__0_carry__1),
        .O(\add_ln35_4_reg_635_reg[23] [0]));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__1_i_2
       (.I0(pstrmOutput_TDATA__0_carry__2_0[5]),
        .I1(pstrmOutput_TDATA__0_carry__2[5]),
        .I2(mul_ln35_9_reg_690_reg__1[21]),
        .O(\add_ln35_4_reg_635_reg[22] [5]));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__1_i_3
       (.I0(pstrmOutput_TDATA__0_carry__2_0[4]),
        .I1(pstrmOutput_TDATA__0_carry__2[4]),
        .I2(mul_ln35_9_reg_690_reg__1[20]),
        .O(\add_ln35_4_reg_635_reg[22] [4]));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__1_i_4
       (.I0(pstrmOutput_TDATA__0_carry__2_0[3]),
        .I1(pstrmOutput_TDATA__0_carry__2[3]),
        .I2(mul_ln35_9_reg_690_reg__1[19]),
        .O(\add_ln35_4_reg_635_reg[22] [3]));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__1_i_5
       (.I0(pstrmOutput_TDATA__0_carry__2_0[2]),
        .I1(pstrmOutput_TDATA__0_carry__2[2]),
        .I2(mul_ln35_9_reg_690_reg__1[18]),
        .O(\add_ln35_4_reg_635_reg[22] [2]));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__1_i_6
       (.I0(pstrmOutput_TDATA__0_carry__2_0[1]),
        .I1(pstrmOutput_TDATA__0_carry__2[1]),
        .I2(mul_ln35_9_reg_690_reg__1[17]),
        .O(\add_ln35_4_reg_635_reg[22] [1]));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__1_i_7
       (.I0(pstrmOutput_TDATA__0_carry__2_0[0]),
        .I1(pstrmOutput_TDATA__0_carry__2[0]),
        .I2(mul_ln35_9_reg_690_reg__1[16]),
        .O(\add_ln35_4_reg_635_reg[22] [0]));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__1_i_9
       (.I0(pstrmOutput_TDATA__0_carry__2_0[7]),
        .I1(pstrmOutput_TDATA__0_carry__2[7]),
        .I2(mul_ln35_9_reg_690_reg__1[23]),
        .I3(\add_ln35_4_reg_635_reg[22] [6]),
        .O(\add_ln35_4_reg_635_reg[23] [7]));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__2_i_1
       (.I0(pstrmOutput_TDATA__0_carry__2_0[13]),
        .I1(pstrmOutput_TDATA__0_carry__2[13]),
        .I2(mul_ln35_9_reg_690_reg__1[29]),
        .O(DI[6]));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__2_i_10
       (.I0(pstrmOutput_TDATA__0_carry__2_0[13]),
        .I1(pstrmOutput_TDATA__0_carry__2[13]),
        .I2(mul_ln35_9_reg_690_reg__1[29]),
        .I3(DI[5]),
        .O(S[5]));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__2_i_11
       (.I0(pstrmOutput_TDATA__0_carry__2_0[12]),
        .I1(pstrmOutput_TDATA__0_carry__2[12]),
        .I2(mul_ln35_9_reg_690_reg__1[28]),
        .I3(DI[4]),
        .O(S[4]));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__2_i_12
       (.I0(pstrmOutput_TDATA__0_carry__2_0[11]),
        .I1(pstrmOutput_TDATA__0_carry__2[11]),
        .I2(mul_ln35_9_reg_690_reg__1[27]),
        .I3(DI[3]),
        .O(S[3]));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__2_i_13
       (.I0(pstrmOutput_TDATA__0_carry__2_0[10]),
        .I1(pstrmOutput_TDATA__0_carry__2[10]),
        .I2(mul_ln35_9_reg_690_reg__1[26]),
        .I3(DI[2]),
        .O(S[2]));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__2_i_14
       (.I0(pstrmOutput_TDATA__0_carry__2_0[9]),
        .I1(pstrmOutput_TDATA__0_carry__2[9]),
        .I2(mul_ln35_9_reg_690_reg__1[25]),
        .I3(DI[1]),
        .O(S[1]));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__2_i_15
       (.I0(pstrmOutput_TDATA__0_carry__2_0[8]),
        .I1(pstrmOutput_TDATA__0_carry__2[8]),
        .I2(mul_ln35_9_reg_690_reg__1[24]),
        .I3(DI[0]),
        .O(S[0]));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__2_i_2
       (.I0(pstrmOutput_TDATA__0_carry__2_0[12]),
        .I1(pstrmOutput_TDATA__0_carry__2[12]),
        .I2(mul_ln35_9_reg_690_reg__1[28]),
        .O(DI[5]));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__2_i_3
       (.I0(pstrmOutput_TDATA__0_carry__2_0[11]),
        .I1(pstrmOutput_TDATA__0_carry__2[11]),
        .I2(mul_ln35_9_reg_690_reg__1[27]),
        .O(DI[4]));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__2_i_4
       (.I0(pstrmOutput_TDATA__0_carry__2_0[10]),
        .I1(pstrmOutput_TDATA__0_carry__2[10]),
        .I2(mul_ln35_9_reg_690_reg__1[26]),
        .O(DI[3]));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__2_i_5
       (.I0(pstrmOutput_TDATA__0_carry__2_0[9]),
        .I1(pstrmOutput_TDATA__0_carry__2[9]),
        .I2(mul_ln35_9_reg_690_reg__1[25]),
        .O(DI[2]));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__2_i_6
       (.I0(pstrmOutput_TDATA__0_carry__2_0[8]),
        .I1(pstrmOutput_TDATA__0_carry__2[8]),
        .I2(mul_ln35_9_reg_690_reg__1[24]),
        .O(DI[1]));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__0_carry__2_i_7
       (.I0(pstrmOutput_TDATA__0_carry__2_0[7]),
        .I1(pstrmOutput_TDATA__0_carry__2[7]),
        .I2(mul_ln35_9_reg_690_reg__1[23]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    pstrmOutput_TDATA__0_carry__2_i_8
       (.I0(mul_ln35_9_reg_690_reg__1[30]),
        .I1(pstrmOutput_TDATA__0_carry__2[14]),
        .I2(pstrmOutput_TDATA__0_carry__2_0[14]),
        .I3(pstrmOutput_TDATA__0_carry__2[15]),
        .I4(pstrmOutput_TDATA__0_carry__2_0[15]),
        .I5(mul_ln35_9_reg_690_reg__1[31]),
        .O(S[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__0_carry__2_i_9
       (.I0(DI[6]),
        .I1(pstrmOutput_TDATA__0_carry__2[14]),
        .I2(pstrmOutput_TDATA__0_carry__2_0[14]),
        .I3(mul_ln35_9_reg_690_reg__1[30]),
        .O(S[6]));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_12
   (CEP,
    dout__3,
    DI,
    S,
    \mul_ln35_5_reg_615_reg[14]__0 ,
    \mul_ln35_5_reg_615_reg[15]__0 ,
    \mul_ln35_5_reg_615_reg[15]__0_0 ,
    \mul_ln35_5_reg_615_reg[16]__0 ,
    CEA2,
    ap_clk,
    q00,
    pstrmInput_TDATA_int_regslice,
    Q,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    ap_enable_reg_pp0_iter0_reg,
    pstrmInput_TVALID_int_regslice,
    \tmp_dest_V_reg_685_reg[0] ,
    pstrmOutput_TDATA__94_carry__0,
    pstrmOutput_TDATA__94_carry__0_0,
    O,
    pstrmOutput_TDATA__94_carry__1);
  output CEP;
  output [15:0]dout__3;
  output [6:0]DI;
  output [7:0]S;
  output [7:0]\mul_ln35_5_reg_615_reg[14]__0 ;
  output [7:0]\mul_ln35_5_reg_615_reg[15]__0 ;
  output [0:0]\mul_ln35_5_reg_615_reg[15]__0_0 ;
  output [0:0]\mul_ln35_5_reg_615_reg[16]__0 ;
  input CEA2;
  input ap_clk;
  input [31:0]q00;
  input [31:0]pstrmInput_TDATA_int_regslice;
  input [1:0]Q;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input ap_enable_reg_pp0_iter0_reg;
  input pstrmInput_TVALID_int_regslice;
  input \tmp_dest_V_reg_685_reg[0] ;
  input [15:0]pstrmOutput_TDATA__94_carry__0;
  input [15:0]pstrmOutput_TDATA__94_carry__0_0;
  input [0:0]O;
  input [0:0]pstrmOutput_TDATA__94_carry__1;

  wire CEA2;
  wire CEP;
  wire [6:0]DI;
  wire [0:0]O;
  wire [1:0]Q;
  wire [7:0]S;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire dout__0_n_100;
  wire dout__0_n_101;
  wire dout__0_n_102;
  wire dout__0_n_103;
  wire dout__0_n_104;
  wire dout__0_n_105;
  wire dout__0_n_106;
  wire dout__0_n_107;
  wire dout__0_n_108;
  wire dout__0_n_109;
  wire dout__0_n_110;
  wire dout__0_n_111;
  wire dout__0_n_112;
  wire dout__0_n_113;
  wire dout__0_n_114;
  wire dout__0_n_115;
  wire dout__0_n_116;
  wire dout__0_n_117;
  wire dout__0_n_118;
  wire dout__0_n_119;
  wire dout__0_n_120;
  wire dout__0_n_121;
  wire dout__0_n_122;
  wire dout__0_n_123;
  wire dout__0_n_124;
  wire dout__0_n_125;
  wire dout__0_n_126;
  wire dout__0_n_127;
  wire dout__0_n_128;
  wire dout__0_n_129;
  wire dout__0_n_130;
  wire dout__0_n_131;
  wire dout__0_n_132;
  wire dout__0_n_133;
  wire dout__0_n_134;
  wire dout__0_n_135;
  wire dout__0_n_136;
  wire dout__0_n_137;
  wire dout__0_n_138;
  wire dout__0_n_139;
  wire dout__0_n_140;
  wire dout__0_n_141;
  wire dout__0_n_142;
  wire dout__0_n_143;
  wire dout__0_n_144;
  wire dout__0_n_145;
  wire dout__0_n_146;
  wire dout__0_n_147;
  wire dout__0_n_148;
  wire dout__0_n_149;
  wire dout__0_n_150;
  wire dout__0_n_151;
  wire dout__0_n_152;
  wire dout__0_n_153;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout__0_n_89;
  wire dout__0_n_90;
  wire dout__0_n_91;
  wire dout__0_n_92;
  wire dout__0_n_93;
  wire dout__0_n_94;
  wire dout__0_n_95;
  wire dout__0_n_96;
  wire dout__0_n_97;
  wire dout__0_n_98;
  wire dout__0_n_99;
  wire dout__1_n_100;
  wire dout__1_n_101;
  wire dout__1_n_102;
  wire dout__1_n_103;
  wire dout__1_n_104;
  wire dout__1_n_105;
  wire dout__1_n_58;
  wire dout__1_n_59;
  wire dout__1_n_60;
  wire dout__1_n_61;
  wire dout__1_n_62;
  wire dout__1_n_63;
  wire dout__1_n_64;
  wire dout__1_n_65;
  wire dout__1_n_66;
  wire dout__1_n_67;
  wire dout__1_n_68;
  wire dout__1_n_69;
  wire dout__1_n_70;
  wire dout__1_n_71;
  wire dout__1_n_72;
  wire dout__1_n_73;
  wire dout__1_n_74;
  wire dout__1_n_75;
  wire dout__1_n_76;
  wire dout__1_n_77;
  wire dout__1_n_78;
  wire dout__1_n_79;
  wire dout__1_n_80;
  wire dout__1_n_81;
  wire dout__1_n_82;
  wire dout__1_n_83;
  wire dout__1_n_84;
  wire dout__1_n_85;
  wire dout__1_n_86;
  wire dout__1_n_87;
  wire dout__1_n_88;
  wire dout__1_n_89;
  wire dout__1_n_90;
  wire dout__1_n_91;
  wire dout__1_n_92;
  wire dout__1_n_93;
  wire dout__1_n_94;
  wire dout__1_n_95;
  wire dout__1_n_96;
  wire dout__1_n_97;
  wire dout__1_n_98;
  wire dout__1_n_99;
  wire [15:0]dout__3;
  wire dout_carry__0_i_1__2_n_0;
  wire dout_carry__0_i_2__2_n_0;
  wire dout_carry__0_i_3__2_n_0;
  wire dout_carry__0_i_4__2_n_0;
  wire dout_carry__0_i_5__2_n_0;
  wire dout_carry__0_i_6__2_n_0;
  wire dout_carry__0_i_7__2_n_0;
  wire dout_carry__0_i_8__2_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__2_n_0;
  wire dout_carry_i_2__2_n_0;
  wire dout_carry_i_3__2_n_0;
  wire dout_carry_i_4__2_n_0;
  wire dout_carry_i_5__2_n_0;
  wire dout_carry_i_6__2_n_0;
  wire dout_carry_i_7__2_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire [7:0]\mul_ln35_5_reg_615_reg[14]__0 ;
  wire [7:0]\mul_ln35_5_reg_615_reg[15]__0 ;
  wire [0:0]\mul_ln35_5_reg_615_reg[15]__0_0 ;
  wire [0:0]\mul_ln35_5_reg_615_reg[16]__0 ;
  wire [31:0]pstrmInput_TDATA_int_regslice;
  wire pstrmInput_TVALID_int_regslice;
  wire [15:0]pstrmOutput_TDATA__94_carry__0;
  wire [15:0]pstrmOutput_TDATA__94_carry__0_0;
  wire [0:0]pstrmOutput_TDATA__94_carry__1;
  wire [31:0]q00;
  wire \tmp_dest_V_reg_685_reg[0] ;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire NLW_dout__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__1_OVERFLOW_UNCONNECTED;
  wire NLW_dout__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_dout__1_PCOUT_UNCONNECTED;
  wire [7:0]NLW_dout__1_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pstrmInput_TDATA_int_regslice[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEP),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,pstrmInput_TDATA_int_regslice[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEP),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,dout__0_n_89,dout__0_n_90,dout__0_n_91,dout__0_n_92,dout__0_n_93,dout__0_n_94,dout__0_n_95,dout__0_n_96,dout__0_n_97,dout__0_n_98,dout__0_n_99,dout__0_n_100,dout__0_n_101,dout__0_n_102,dout__0_n_103,dout__0_n_104,dout__0_n_105}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({pstrmInput_TDATA_int_regslice[31],pstrmInput_TDATA_int_regslice[31],pstrmInput_TDATA_int_regslice[31],pstrmInput_TDATA_int_regslice[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEP),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__1_OVERFLOW_UNCONNECTED),
        .P({dout__1_n_58,dout__1_n_59,dout__1_n_60,dout__1_n_61,dout__1_n_62,dout__1_n_63,dout__1_n_64,dout__1_n_65,dout__1_n_66,dout__1_n_67,dout__1_n_68,dout__1_n_69,dout__1_n_70,dout__1_n_71,dout__1_n_72,dout__1_n_73,dout__1_n_74,dout__1_n_75,dout__1_n_76,dout__1_n_77,dout__1_n_78,dout__1_n_79,dout__1_n_80,dout__1_n_81,dout__1_n_82,dout__1_n_83,dout__1_n_84,dout__1_n_85,dout__1_n_86,dout__1_n_87,dout__1_n_88,dout__1_n_89,dout__1_n_90,dout__1_n_91,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98,dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105}),
        .PATTERNBDETECT(NLW_dout__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
        .PCOUT(NLW_dout__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__1_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105,1'b0}),
        .O(dout__3[7:0]),
        .S({dout_carry_i_1__2_n_0,dout_carry_i_2__2_n_0,dout_carry_i_3__2_n_0,dout_carry_i_4__2_n_0,dout_carry_i_5__2_n_0,dout_carry_i_6__2_n_0,dout_carry_i_7__2_n_0,dout__0_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98}),
        .O(dout__3[15:8]),
        .S({dout_carry__0_i_1__2_n_0,dout_carry__0_i_2__2_n_0,dout_carry__0_i_3__2_n_0,dout_carry__0_i_4__2_n_0,dout_carry__0_i_5__2_n_0,dout_carry__0_i_6__2_n_0,dout_carry__0_i_7__2_n_0,dout_carry__0_i_8__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__2
       (.I0(dout__1_n_91),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__2
       (.I0(dout__1_n_92),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__2
       (.I0(dout__1_n_93),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__2
       (.I0(dout__1_n_94),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__2
       (.I0(dout__1_n_95),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__2
       (.I0(dout__1_n_96),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__2
       (.I0(dout__1_n_97),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__2
       (.I0(dout__1_n_98),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__2
       (.I0(dout__1_n_99),
        .I1(dout_n_99),
        .O(dout_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__2
       (.I0(dout__1_n_100),
        .I1(dout_n_100),
        .O(dout_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__2
       (.I0(dout__1_n_101),
        .I1(dout_n_101),
        .O(dout_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__2
       (.I0(dout__1_n_102),
        .I1(dout_n_102),
        .O(dout_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__2
       (.I0(dout__1_n_103),
        .I1(dout_n_103),
        .O(dout_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__2
       (.I0(dout__1_n_104),
        .I1(dout_n_104),
        .O(dout_carry_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__2
       (.I0(dout__1_n_105),
        .I1(dout_n_105),
        .O(dout_carry_i_7__2_n_0));
  (* HLUTNM = "lutpair44" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__0_i_1
       (.I0(pstrmOutput_TDATA__94_carry__0[14]),
        .I1(dout__0_n_91),
        .I2(pstrmOutput_TDATA__94_carry__0_0[14]),
        .O(\mul_ln35_5_reg_615_reg[14]__0 [7]));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__0_i_10
       (.I0(pstrmOutput_TDATA__94_carry__0[14]),
        .I1(dout__0_n_91),
        .I2(pstrmOutput_TDATA__94_carry__0_0[14]),
        .I3(\mul_ln35_5_reg_615_reg[14]__0 [6]),
        .O(\mul_ln35_5_reg_615_reg[15]__0 [6]));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__0_i_11
       (.I0(pstrmOutput_TDATA__94_carry__0[13]),
        .I1(dout__0_n_92),
        .I2(pstrmOutput_TDATA__94_carry__0_0[13]),
        .I3(\mul_ln35_5_reg_615_reg[14]__0 [5]),
        .O(\mul_ln35_5_reg_615_reg[15]__0 [5]));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__0_i_12
       (.I0(pstrmOutput_TDATA__94_carry__0[12]),
        .I1(dout__0_n_93),
        .I2(pstrmOutput_TDATA__94_carry__0_0[12]),
        .I3(\mul_ln35_5_reg_615_reg[14]__0 [4]),
        .O(\mul_ln35_5_reg_615_reg[15]__0 [4]));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__0_i_13
       (.I0(pstrmOutput_TDATA__94_carry__0[11]),
        .I1(dout__0_n_94),
        .I2(pstrmOutput_TDATA__94_carry__0_0[11]),
        .I3(\mul_ln35_5_reg_615_reg[14]__0 [3]),
        .O(\mul_ln35_5_reg_615_reg[15]__0 [3]));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__0_i_14
       (.I0(pstrmOutput_TDATA__94_carry__0[10]),
        .I1(dout__0_n_95),
        .I2(pstrmOutput_TDATA__94_carry__0_0[10]),
        .I3(\mul_ln35_5_reg_615_reg[14]__0 [2]),
        .O(\mul_ln35_5_reg_615_reg[15]__0 [2]));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__0_i_15
       (.I0(pstrmOutput_TDATA__94_carry__0[9]),
        .I1(dout__0_n_96),
        .I2(pstrmOutput_TDATA__94_carry__0_0[9]),
        .I3(\mul_ln35_5_reg_615_reg[14]__0 [1]),
        .O(\mul_ln35_5_reg_615_reg[15]__0 [1]));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__0_i_16
       (.I0(pstrmOutput_TDATA__94_carry__0[8]),
        .I1(dout__0_n_97),
        .I2(pstrmOutput_TDATA__94_carry__0_0[8]),
        .I3(\mul_ln35_5_reg_615_reg[14]__0 [0]),
        .O(\mul_ln35_5_reg_615_reg[15]__0 [0]));
  (* HLUTNM = "lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__0_i_2
       (.I0(pstrmOutput_TDATA__94_carry__0[13]),
        .I1(dout__0_n_92),
        .I2(pstrmOutput_TDATA__94_carry__0_0[13]),
        .O(\mul_ln35_5_reg_615_reg[14]__0 [6]));
  (* HLUTNM = "lutpair42" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__0_i_3
       (.I0(pstrmOutput_TDATA__94_carry__0[12]),
        .I1(dout__0_n_93),
        .I2(pstrmOutput_TDATA__94_carry__0_0[12]),
        .O(\mul_ln35_5_reg_615_reg[14]__0 [5]));
  (* HLUTNM = "lutpair41" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__0_i_4
       (.I0(pstrmOutput_TDATA__94_carry__0[11]),
        .I1(dout__0_n_94),
        .I2(pstrmOutput_TDATA__94_carry__0_0[11]),
        .O(\mul_ln35_5_reg_615_reg[14]__0 [4]));
  (* HLUTNM = "lutpair40" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__0_i_5
       (.I0(pstrmOutput_TDATA__94_carry__0[10]),
        .I1(dout__0_n_95),
        .I2(pstrmOutput_TDATA__94_carry__0_0[10]),
        .O(\mul_ln35_5_reg_615_reg[14]__0 [3]));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__0_i_6
       (.I0(pstrmOutput_TDATA__94_carry__0[9]),
        .I1(dout__0_n_96),
        .I2(pstrmOutput_TDATA__94_carry__0_0[9]),
        .O(\mul_ln35_5_reg_615_reg[14]__0 [2]));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__0_i_7
       (.I0(pstrmOutput_TDATA__94_carry__0[8]),
        .I1(dout__0_n_97),
        .I2(pstrmOutput_TDATA__94_carry__0_0[8]),
        .O(\mul_ln35_5_reg_615_reg[14]__0 [1]));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__0_i_8
       (.I0(pstrmOutput_TDATA__94_carry__0[7]),
        .I1(dout__0_n_98),
        .I2(pstrmOutput_TDATA__94_carry__0_0[7]),
        .O(\mul_ln35_5_reg_615_reg[14]__0 [0]));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__0_i_9
       (.I0(pstrmOutput_TDATA__94_carry__0[15]),
        .I1(dout__0_n_90),
        .I2(pstrmOutput_TDATA__94_carry__0_0[15]),
        .I3(\mul_ln35_5_reg_615_reg[14]__0 [7]),
        .O(\mul_ln35_5_reg_615_reg[15]__0 [7]));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__1_i_16
       (.I0(O),
        .I1(dout__3[0]),
        .I2(pstrmOutput_TDATA__94_carry__1),
        .I3(\mul_ln35_5_reg_615_reg[15]__0_0 ),
        .O(\mul_ln35_5_reg_615_reg[16]__0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__1_i_8
       (.I0(pstrmOutput_TDATA__94_carry__0[15]),
        .I1(dout__0_n_90),
        .I2(pstrmOutput_TDATA__94_carry__0_0[15]),
        .O(\mul_ln35_5_reg_615_reg[15]__0_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry_i_1
       (.I0(pstrmOutput_TDATA__94_carry__0[6]),
        .I1(dout__0_n_99),
        .I2(pstrmOutput_TDATA__94_carry__0_0[6]),
        .O(DI[6]));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry_i_10
       (.I0(pstrmOutput_TDATA__94_carry__0[5]),
        .I1(dout__0_n_100),
        .I2(pstrmOutput_TDATA__94_carry__0_0[5]),
        .I3(DI[4]),
        .O(S[5]));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry_i_11
       (.I0(pstrmOutput_TDATA__94_carry__0[4]),
        .I1(dout__0_n_101),
        .I2(pstrmOutput_TDATA__94_carry__0_0[4]),
        .I3(DI[3]),
        .O(S[4]));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry_i_12
       (.I0(pstrmOutput_TDATA__94_carry__0[3]),
        .I1(dout__0_n_102),
        .I2(pstrmOutput_TDATA__94_carry__0_0[3]),
        .I3(DI[2]),
        .O(S[3]));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry_i_13
       (.I0(pstrmOutput_TDATA__94_carry__0[2]),
        .I1(dout__0_n_103),
        .I2(pstrmOutput_TDATA__94_carry__0_0[2]),
        .I3(DI[1]),
        .O(S[2]));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry_i_14
       (.I0(pstrmOutput_TDATA__94_carry__0[1]),
        .I1(dout__0_n_104),
        .I2(pstrmOutput_TDATA__94_carry__0_0[1]),
        .I3(DI[0]),
        .O(S[1]));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    pstrmOutput_TDATA__94_carry_i_15
       (.I0(pstrmOutput_TDATA__94_carry__0[0]),
        .I1(dout__0_n_105),
        .I2(pstrmOutput_TDATA__94_carry__0_0[0]),
        .O(S[0]));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry_i_2
       (.I0(pstrmOutput_TDATA__94_carry__0[5]),
        .I1(dout__0_n_100),
        .I2(pstrmOutput_TDATA__94_carry__0_0[5]),
        .O(DI[5]));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry_i_3
       (.I0(pstrmOutput_TDATA__94_carry__0[4]),
        .I1(dout__0_n_101),
        .I2(pstrmOutput_TDATA__94_carry__0_0[4]),
        .O(DI[4]));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry_i_4
       (.I0(pstrmOutput_TDATA__94_carry__0[3]),
        .I1(dout__0_n_102),
        .I2(pstrmOutput_TDATA__94_carry__0_0[3]),
        .O(DI[3]));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry_i_5
       (.I0(pstrmOutput_TDATA__94_carry__0[2]),
        .I1(dout__0_n_103),
        .I2(pstrmOutput_TDATA__94_carry__0_0[2]),
        .O(DI[2]));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry_i_6
       (.I0(pstrmOutput_TDATA__94_carry__0[1]),
        .I1(dout__0_n_104),
        .I2(pstrmOutput_TDATA__94_carry__0_0[1]),
        .O(DI[1]));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry_i_7
       (.I0(pstrmOutput_TDATA__94_carry__0[0]),
        .I1(dout__0_n_105),
        .I2(pstrmOutput_TDATA__94_carry__0_0[0]),
        .O(DI[0]));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry_i_8
       (.I0(pstrmOutput_TDATA__94_carry__0[7]),
        .I1(dout__0_n_98),
        .I2(pstrmOutput_TDATA__94_carry__0_0[7]),
        .I3(DI[6]),
        .O(S[7]));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry_i_9
       (.I0(pstrmOutput_TDATA__94_carry__0[6]),
        .I1(dout__0_n_99),
        .I2(pstrmOutput_TDATA__94_carry__0_0[6]),
        .I3(DI[5]),
        .O(S[6]));
  LUT6 #(
    .INIT(64'hAAAA202A00000000)) 
    \tmp_last_V_reg_675[0]_i_1 
       (.I0(Q[1]),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(pstrmInput_TVALID_int_regslice),
        .I5(\tmp_dest_V_reg_685_reg[0] ),
        .O(CEP));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_13
   (CEB2,
    \ap_CS_fsm_reg[3] ,
    P,
    ap_clk_0,
    S,
    \mul_ln35_reg_565_reg[15]__0 ,
    \mul_ln35_reg_565_reg[16]__0 ,
    dout_carry__0_0,
    CEA2,
    ap_clk,
    q00,
    Q,
    \an32ShiftReg_7_reg[0] ,
    \an32ShiftReg_7_reg[0]_0 ,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    ap_enable_reg_pp0_iter0_reg,
    \add_ln35_reg_575_reg[15] ,
    mul_ln35_reg_565_reg__1);
  output CEB2;
  output \ap_CS_fsm_reg[3] ;
  output [15:0]P;
  output [14:0]ap_clk_0;
  output [7:0]S;
  output [7:0]\mul_ln35_reg_565_reg[15]__0 ;
  output [7:0]\mul_ln35_reg_565_reg[16]__0 ;
  output [7:0]dout_carry__0_0;
  input CEA2;
  input ap_clk;
  input [31:0]q00;
  input [31:0]Q;
  input [2:0]\an32ShiftReg_7_reg[0] ;
  input \an32ShiftReg_7_reg[0]_0 ;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input ap_enable_reg_pp0_iter0_reg;
  input [15:0]\add_ln35_reg_575_reg[15] ;
  input [15:0]mul_ln35_reg_565_reg__1;

  wire CEA2;
  wire CEB2;
  wire [15:0]P;
  wire [31:0]Q;
  wire [7:0]S;
  wire [15:0]\add_ln35_reg_575_reg[15] ;
  wire [2:0]\an32ShiftReg_7_reg[0] ;
  wire \an32ShiftReg_7_reg[0]_0 ;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire [14:0]ap_clk_0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire dout__0_n_106;
  wire dout__0_n_107;
  wire dout__0_n_108;
  wire dout__0_n_109;
  wire dout__0_n_110;
  wire dout__0_n_111;
  wire dout__0_n_112;
  wire dout__0_n_113;
  wire dout__0_n_114;
  wire dout__0_n_115;
  wire dout__0_n_116;
  wire dout__0_n_117;
  wire dout__0_n_118;
  wire dout__0_n_119;
  wire dout__0_n_120;
  wire dout__0_n_121;
  wire dout__0_n_122;
  wire dout__0_n_123;
  wire dout__0_n_124;
  wire dout__0_n_125;
  wire dout__0_n_126;
  wire dout__0_n_127;
  wire dout__0_n_128;
  wire dout__0_n_129;
  wire dout__0_n_130;
  wire dout__0_n_131;
  wire dout__0_n_132;
  wire dout__0_n_133;
  wire dout__0_n_134;
  wire dout__0_n_135;
  wire dout__0_n_136;
  wire dout__0_n_137;
  wire dout__0_n_138;
  wire dout__0_n_139;
  wire dout__0_n_140;
  wire dout__0_n_141;
  wire dout__0_n_142;
  wire dout__0_n_143;
  wire dout__0_n_144;
  wire dout__0_n_145;
  wire dout__0_n_146;
  wire dout__0_n_147;
  wire dout__0_n_148;
  wire dout__0_n_149;
  wire dout__0_n_150;
  wire dout__0_n_151;
  wire dout__0_n_152;
  wire dout__0_n_153;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout__0_n_89;
  wire dout__1_n_100;
  wire dout__1_n_101;
  wire dout__1_n_102;
  wire dout__1_n_103;
  wire dout__1_n_104;
  wire dout__1_n_105;
  wire dout__1_n_58;
  wire dout__1_n_59;
  wire dout__1_n_60;
  wire dout__1_n_61;
  wire dout__1_n_62;
  wire dout__1_n_63;
  wire dout__1_n_64;
  wire dout__1_n_65;
  wire dout__1_n_66;
  wire dout__1_n_67;
  wire dout__1_n_68;
  wire dout__1_n_69;
  wire dout__1_n_70;
  wire dout__1_n_71;
  wire dout__1_n_72;
  wire dout__1_n_73;
  wire dout__1_n_74;
  wire dout__1_n_75;
  wire dout__1_n_76;
  wire dout__1_n_77;
  wire dout__1_n_78;
  wire dout__1_n_79;
  wire dout__1_n_80;
  wire dout__1_n_81;
  wire dout__1_n_82;
  wire dout__1_n_83;
  wire dout__1_n_84;
  wire dout__1_n_85;
  wire dout__1_n_86;
  wire dout__1_n_87;
  wire dout__1_n_88;
  wire dout__1_n_89;
  wire dout__1_n_90;
  wire dout__1_n_91;
  wire dout__1_n_92;
  wire dout__1_n_93;
  wire dout__1_n_94;
  wire dout__1_n_95;
  wire dout__1_n_96;
  wire dout__1_n_97;
  wire dout__1_n_98;
  wire dout__1_n_99;
  wire [31:31]dout__3;
  wire [7:0]dout_carry__0_0;
  wire dout_carry__0_i_1__0_n_0;
  wire dout_carry__0_i_2__0_n_0;
  wire dout_carry__0_i_3__0_n_0;
  wire dout_carry__0_i_4__0_n_0;
  wire dout_carry__0_i_5__0_n_0;
  wire dout_carry__0_i_6__0_n_0;
  wire dout_carry__0_i_7__0_n_0;
  wire dout_carry__0_i_8__0_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__0_n_0;
  wire dout_carry_i_2__0_n_0;
  wire dout_carry_i_3__0_n_0;
  wire dout_carry_i_4__0_n_0;
  wire dout_carry_i_5__0_n_0;
  wire dout_carry_i_6__0_n_0;
  wire dout_carry_i_7__0_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire [7:0]\mul_ln35_reg_565_reg[15]__0 ;
  wire [7:0]\mul_ln35_reg_565_reg[16]__0 ;
  wire [15:0]mul_ln35_reg_565_reg__1;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire NLW_dout__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__1_OVERFLOW_UNCONNECTED;
  wire NLW_dout__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_dout__1_PCOUT_UNCONNECTED;
  wire [7:0]NLW_dout__1_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__0_i_1
       (.I0(P[15]),
        .I1(\add_ln35_reg_575_reg[15] [15]),
        .O(\mul_ln35_reg_565_reg[15]__0 [7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__0_i_2
       (.I0(P[14]),
        .I1(\add_ln35_reg_575_reg[15] [14]),
        .O(\mul_ln35_reg_565_reg[15]__0 [6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__0_i_3
       (.I0(P[13]),
        .I1(\add_ln35_reg_575_reg[15] [13]),
        .O(\mul_ln35_reg_565_reg[15]__0 [5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__0_i_4
       (.I0(P[12]),
        .I1(\add_ln35_reg_575_reg[15] [12]),
        .O(\mul_ln35_reg_565_reg[15]__0 [4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__0_i_5
       (.I0(P[11]),
        .I1(\add_ln35_reg_575_reg[15] [11]),
        .O(\mul_ln35_reg_565_reg[15]__0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__0_i_6
       (.I0(P[10]),
        .I1(\add_ln35_reg_575_reg[15] [10]),
        .O(\mul_ln35_reg_565_reg[15]__0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__0_i_7
       (.I0(P[9]),
        .I1(\add_ln35_reg_575_reg[15] [9]),
        .O(\mul_ln35_reg_565_reg[15]__0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__0_i_8
       (.I0(P[8]),
        .I1(\add_ln35_reg_575_reg[15] [8]),
        .O(\mul_ln35_reg_565_reg[15]__0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__1_i_1
       (.I0(ap_clk_0[7]),
        .I1(mul_ln35_reg_565_reg__1[7]),
        .O(\mul_ln35_reg_565_reg[16]__0 [7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__1_i_2
       (.I0(ap_clk_0[6]),
        .I1(mul_ln35_reg_565_reg__1[6]),
        .O(\mul_ln35_reg_565_reg[16]__0 [6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__1_i_3
       (.I0(ap_clk_0[5]),
        .I1(mul_ln35_reg_565_reg__1[5]),
        .O(\mul_ln35_reg_565_reg[16]__0 [5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__1_i_4
       (.I0(ap_clk_0[4]),
        .I1(mul_ln35_reg_565_reg__1[4]),
        .O(\mul_ln35_reg_565_reg[16]__0 [4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__1_i_5
       (.I0(ap_clk_0[3]),
        .I1(mul_ln35_reg_565_reg__1[3]),
        .O(\mul_ln35_reg_565_reg[16]__0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__1_i_6
       (.I0(ap_clk_0[2]),
        .I1(mul_ln35_reg_565_reg__1[2]),
        .O(\mul_ln35_reg_565_reg[16]__0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__1_i_7
       (.I0(ap_clk_0[1]),
        .I1(mul_ln35_reg_565_reg__1[1]),
        .O(\mul_ln35_reg_565_reg[16]__0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__1_i_8
       (.I0(ap_clk_0[0]),
        .I1(mul_ln35_reg_565_reg__1[0]),
        .O(\mul_ln35_reg_565_reg[16]__0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__2_i_1
       (.I0(dout__3),
        .I1(mul_ln35_reg_565_reg__1[15]),
        .O(dout_carry__0_0[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__2_i_2
       (.I0(ap_clk_0[14]),
        .I1(mul_ln35_reg_565_reg__1[14]),
        .O(dout_carry__0_0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__2_i_3
       (.I0(ap_clk_0[13]),
        .I1(mul_ln35_reg_565_reg__1[13]),
        .O(dout_carry__0_0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__2_i_4
       (.I0(ap_clk_0[12]),
        .I1(mul_ln35_reg_565_reg__1[12]),
        .O(dout_carry__0_0[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__2_i_5
       (.I0(ap_clk_0[11]),
        .I1(mul_ln35_reg_565_reg__1[11]),
        .O(dout_carry__0_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__2_i_6
       (.I0(ap_clk_0[10]),
        .I1(mul_ln35_reg_565_reg__1[10]),
        .O(dout_carry__0_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__2_i_7
       (.I0(ap_clk_0[9]),
        .I1(mul_ln35_reg_565_reg__1[9]),
        .O(dout_carry__0_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry__2_i_8
       (.I0(ap_clk_0[8]),
        .I1(mul_ln35_reg_565_reg__1[8]),
        .O(dout_carry__0_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry_i_1
       (.I0(P[7]),
        .I1(\add_ln35_reg_575_reg[15] [7]),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry_i_2
       (.I0(P[6]),
        .I1(\add_ln35_reg_575_reg[15] [6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry_i_3
       (.I0(P[5]),
        .I1(\add_ln35_reg_575_reg[15] [5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry_i_4
       (.I0(P[4]),
        .I1(\add_ln35_reg_575_reg[15] [4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry_i_5
       (.I0(P[3]),
        .I1(\add_ln35_reg_575_reg[15] [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry_i_6
       (.I0(P[2]),
        .I1(\add_ln35_reg_575_reg[15] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry_i_7
       (.I0(P[1]),
        .I1(\add_ln35_reg_575_reg[15] [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_fu_311_p2_carry_i_8
       (.I0(P[0]),
        .I1(\add_ln35_reg_575_reg[15] [0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h80888000)) 
    \an32ShiftReg_7[31]_i_1 
       (.I0(\an32ShiftReg_7_reg[0] [2]),
        .I1(\an32ShiftReg_7_reg[0]_0 ),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(\an32ShiftReg_7_reg[0] [0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(CEB2));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEB2),
        .CEA2(\ap_CS_fsm_reg[3] ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB2),
        .CEB2(\ap_CS_fsm_reg[3] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,dout__0_n_89,P}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB2),
        .CEB2(\ap_CS_fsm_reg[3] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__1_OVERFLOW_UNCONNECTED),
        .P({dout__1_n_58,dout__1_n_59,dout__1_n_60,dout__1_n_61,dout__1_n_62,dout__1_n_63,dout__1_n_64,dout__1_n_65,dout__1_n_66,dout__1_n_67,dout__1_n_68,dout__1_n_69,dout__1_n_70,dout__1_n_71,dout__1_n_72,dout__1_n_73,dout__1_n_74,dout__1_n_75,dout__1_n_76,dout__1_n_77,dout__1_n_78,dout__1_n_79,dout__1_n_80,dout__1_n_81,dout__1_n_82,dout__1_n_83,dout__1_n_84,dout__1_n_85,dout__1_n_86,dout__1_n_87,dout__1_n_88,dout__1_n_89,dout__1_n_90,dout__1_n_91,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98,dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105}),
        .PATTERNBDETECT(NLW_dout__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
        .PCOUT(NLW_dout__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__1_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105,1'b0}),
        .O(ap_clk_0[7:0]),
        .S({dout_carry_i_1__0_n_0,dout_carry_i_2__0_n_0,dout_carry_i_3__0_n_0,dout_carry_i_4__0_n_0,dout_carry_i_5__0_n_0,dout_carry_i_6__0_n_0,dout_carry_i_7__0_n_0,dout__0_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98}),
        .O({dout__3,ap_clk_0[14:8]}),
        .S({dout_carry__0_i_1__0_n_0,dout_carry__0_i_2__0_n_0,dout_carry__0_i_3__0_n_0,dout_carry__0_i_4__0_n_0,dout_carry__0_i_5__0_n_0,dout_carry__0_i_6__0_n_0,dout_carry__0_i_7__0_n_0,dout_carry__0_i_8__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__0
       (.I0(dout__1_n_91),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__0
       (.I0(dout__1_n_92),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__0
       (.I0(dout__1_n_93),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__0
       (.I0(dout__1_n_94),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__0
       (.I0(dout__1_n_95),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__0
       (.I0(dout__1_n_96),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__0
       (.I0(dout__1_n_97),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__0
       (.I0(dout__1_n_98),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__0
       (.I0(dout__1_n_99),
        .I1(dout_n_99),
        .O(dout_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__0
       (.I0(dout__1_n_100),
        .I1(dout_n_100),
        .O(dout_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__0
       (.I0(dout__1_n_101),
        .I1(dout_n_101),
        .O(dout_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__0
       (.I0(dout__1_n_102),
        .I1(dout_n_102),
        .O(dout_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__0
       (.I0(dout__1_n_103),
        .I1(dout_n_103),
        .O(dout_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__0
       (.I0(dout__1_n_104),
        .I1(dout_n_104),
        .O(dout_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__0
       (.I0(dout__1_n_105),
        .I1(dout_n_105),
        .O(dout_carry_i_7__0_n_0));
  LUT5 #(
    .INIT(32'h80888000)) 
    dout_i_1
       (.I0(\an32ShiftReg_7_reg[0] [1]),
        .I1(\an32ShiftReg_7_reg[0]_0 ),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(\an32ShiftReg_7_reg[0] [0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(\ap_CS_fsm_reg[3] ));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_14
   (E,
    D,
    PCOUT,
    mul_ln35_2_reg_585_reg__1,
    CEB2,
    DSP_ALU_INST,
    CEA2,
    ap_clk,
    q00,
    Q,
    P,
    add_ln35_2_fu_369_p2__0_carry__1_i_16,
    \mul_ln35_2_reg_585_reg[0]__0 ,
    \mul_ln35_2_reg_585_reg[0]__0_0 );
  output [0:0]E;
  output [16:0]D;
  output [47:0]PCOUT;
  output [15:0]mul_ln35_2_reg_585_reg__1;
  input CEB2;
  input DSP_ALU_INST;
  input CEA2;
  input ap_clk;
  input [31:0]q00;
  input [16:0]Q;
  input [14:0]P;
  input [0:0]add_ln35_2_fu_369_p2__0_carry__1_i_16;
  input \mul_ln35_2_reg_585_reg[0]__0 ;
  input [0:0]\mul_ln35_2_reg_585_reg[0]__0_0 ;

  wire CEA2;
  wire CEB2;
  wire [16:0]D;
  wire DSP_ALU_INST;
  wire [0:0]E;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [16:0]Q;
  wire [0:0]add_ln35_2_fu_369_p2__0_carry__1_i_16;
  wire ap_clk;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout_carry__0_i_1__8_n_0;
  wire dout_carry__0_i_2__8_n_0;
  wire dout_carry__0_i_3__8_n_0;
  wire dout_carry__0_i_4__8_n_0;
  wire dout_carry__0_i_5__8_n_0;
  wire dout_carry__0_i_6__8_n_0;
  wire dout_carry__0_i_7__8_n_0;
  wire dout_carry__0_i_8__8_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__8_n_0;
  wire dout_carry_i_2__8_n_0;
  wire dout_carry_i_3__8_n_0;
  wire dout_carry_i_4__8_n_0;
  wire dout_carry_i_5__8_n_0;
  wire dout_carry_i_6__8_n_0;
  wire dout_carry_i_7__8_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire \mul_ln35_2_reg_585_reg[0]__0 ;
  wire [0:0]\mul_ln35_2_reg_585_reg[0]__0_0 ;
  wire [15:0]mul_ln35_2_reg_585_reg__1;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEB2),
        .CEA2(DSP_ALU_INST),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB2),
        .CEB2(DSP_ALU_INST),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(mul_ln35_2_reg_585_reg__1[7:0]),
        .S({dout_carry_i_1__8_n_0,dout_carry_i_2__8_n_0,dout_carry_i_3__8_n_0,dout_carry_i_4__8_n_0,dout_carry_i_5__8_n_0,dout_carry_i_6__8_n_0,dout_carry_i_7__8_n_0,add_ln35_2_fu_369_p2__0_carry__1_i_16}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln35_2_reg_585_reg__1[15:8]),
        .S({dout_carry__0_i_1__8_n_0,dout_carry__0_i_2__8_n_0,dout_carry__0_i_3__8_n_0,dout_carry__0_i_4__8_n_0,dout_carry__0_i_5__8_n_0,dout_carry__0_i_6__8_n_0,dout_carry__0_i_7__8_n_0,dout_carry__0_i_8__8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__8
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__8
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__8
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__8
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__8
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__8
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__8
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__8
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__8
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__8
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__8
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__8
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__8
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__8
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__8
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    dout_i_1__3
       (.I0(\mul_ln35_2_reg_585_reg[0]__0 ),
        .I1(\mul_ln35_2_reg_585_reg[0]__0_0 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_15
   (CEB2,
    E,
    D,
    PCOUT,
    \mul_ln35_3_reg_595_reg[16]__0 ,
    S,
    CEB1,
    CEA2,
    ap_clk,
    q00,
    Q,
    P,
    add_ln35_2_fu_369_p2__0_carry__1_i_16,
    \an32ShiftReg_6_reg[0] ,
    \mul_ln35_3_reg_595_reg[0]__0 ,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    ap_enable_reg_pp0_iter0_reg,
    mul_ln35_2_reg_585_reg__1,
    O);
  output CEB2;
  output [0:0]E;
  output [16:0]D;
  output [47:0]PCOUT;
  output [14:0]\mul_ln35_3_reg_595_reg[16]__0 ;
  output [0:0]S;
  input CEB1;
  input CEA2;
  input ap_clk;
  input [31:0]q00;
  input [16:0]Q;
  input [14:0]P;
  input [0:0]add_ln35_2_fu_369_p2__0_carry__1_i_16;
  input [2:0]\an32ShiftReg_6_reg[0] ;
  input \mul_ln35_3_reg_595_reg[0]__0 ;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input ap_enable_reg_pp0_iter0_reg;
  input [1:0]mul_ln35_2_reg_585_reg__1;
  input [1:0]O;

  wire CEA2;
  wire CEB1;
  wire CEB2;
  wire [16:0]D;
  wire [0:0]E;
  wire [1:0]O;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [16:0]Q;
  wire [0:0]S;
  wire [0:0]add_ln35_2_fu_369_p2__0_carry__1_i_16;
  wire [2:0]\an32ShiftReg_6_reg[0] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout_carry__0_i_1__9_n_0;
  wire dout_carry__0_i_2__9_n_0;
  wire dout_carry__0_i_3__9_n_0;
  wire dout_carry__0_i_4__9_n_0;
  wire dout_carry__0_i_5__9_n_0;
  wire dout_carry__0_i_6__9_n_0;
  wire dout_carry__0_i_7__9_n_0;
  wire dout_carry__0_i_8__9_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__9_n_0;
  wire dout_carry_i_2__9_n_0;
  wire dout_carry_i_3__9_n_0;
  wire dout_carry_i_4__9_n_0;
  wire dout_carry_i_5__9_n_0;
  wire dout_carry_i_6__9_n_0;
  wire dout_carry_i_7__9_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire [1:0]mul_ln35_2_reg_585_reg__1;
  wire \mul_ln35_3_reg_595_reg[0]__0 ;
  wire [14:0]\mul_ln35_3_reg_595_reg[16]__0 ;
  wire [31:31]mul_ln35_3_reg_595_reg__1;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_8
       (.I0(\mul_ln35_3_reg_595_reg[16]__0 [14]),
        .I1(mul_ln35_2_reg_585_reg__1[0]),
        .I2(O[0]),
        .I3(mul_ln35_2_reg_585_reg__1[1]),
        .I4(O[1]),
        .I5(mul_ln35_3_reg_595_reg__1),
        .O(S));
  LUT5 #(
    .INIT(32'h80888000)) 
    \an32ShiftReg_6[31]_i_1 
       (.I0(\an32ShiftReg_6_reg[0] [2]),
        .I1(\mul_ln35_3_reg_595_reg[0]__0 ),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(\an32ShiftReg_6_reg[0] [0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(CEB2));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEB1),
        .CEA2(CEB2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(CEB2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(\mul_ln35_3_reg_595_reg[16]__0 [7:0]),
        .S({dout_carry_i_1__9_n_0,dout_carry_i_2__9_n_0,dout_carry_i_3__9_n_0,dout_carry_i_4__9_n_0,dout_carry_i_5__9_n_0,dout_carry_i_6__9_n_0,dout_carry_i_7__9_n_0,add_ln35_2_fu_369_p2__0_carry__1_i_16}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O({mul_ln35_3_reg_595_reg__1,\mul_ln35_3_reg_595_reg[16]__0 [14:8]}),
        .S({dout_carry__0_i_1__9_n_0,dout_carry__0_i_2__9_n_0,dout_carry__0_i_3__9_n_0,dout_carry__0_i_4__9_n_0,dout_carry__0_i_5__9_n_0,dout_carry__0_i_6__9_n_0,dout_carry__0_i_7__9_n_0,dout_carry__0_i_8__9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__9
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__9
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__9
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__9
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__9
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__9
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__9
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__9
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__9
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__9
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__9
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__9
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__9
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__9
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__9
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    dout_i_1__4
       (.I0(\an32ShiftReg_6_reg[0] [1]),
        .I1(\mul_ln35_3_reg_595_reg[0]__0 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_16
   (CEB1,
    \ap_CS_fsm_reg[6] ,
    CEA2,
    O,
    ap_enable_reg_pp0_iter10,
    \ap_CS_fsm_reg[8] ,
    S,
    DI,
    \mul_ln35_2_reg_585_reg[6]__0 ,
    \mul_ln35_2_reg_585_reg[7]__0 ,
    \mul_ln35_2_reg_585_reg[14]__0 ,
    \mul_ln35_2_reg_585_reg[15]__0 ,
    \mul_ln35_2_reg_585_reg[16]__0 ,
    \mul_ln35_2_reg_585_reg[16]__0_0 ,
    ap_clk,
    q00,
    Q,
    DSP_A_B_DATA_INST,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    \ap_CS_fsm_reg[0] ,
    ap_enable_reg_pp0_iter0_reg,
    \an32ShiftReg_5_reg[0] ,
    pstrmInput_TVALID_int_regslice,
    \ap_CS_fsm_reg[1] ,
    mul_ln35_2_reg_585_reg__1,
    \add_ln35_2_reg_605_reg[31] ,
    \add_ln35_2_reg_605_reg[23] ,
    \add_ln35_2_reg_605_reg[23]_0 );
  output CEB1;
  output \ap_CS_fsm_reg[6] ;
  output CEA2;
  output [1:0]O;
  output ap_enable_reg_pp0_iter10;
  output \ap_CS_fsm_reg[8] ;
  output [6:0]S;
  output [6:0]DI;
  output [6:0]\mul_ln35_2_reg_585_reg[6]__0 ;
  output [7:0]\mul_ln35_2_reg_585_reg[7]__0 ;
  output [7:0]\mul_ln35_2_reg_585_reg[14]__0 ;
  output [7:0]\mul_ln35_2_reg_585_reg[15]__0 ;
  output [7:0]\mul_ln35_2_reg_585_reg[16]__0 ;
  output [7:0]\mul_ln35_2_reg_585_reg[16]__0_0 ;
  input ap_clk;
  input [31:0]q00;
  input [31:0]Q;
  input DSP_A_B_DATA_INST;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input [7:0]\ap_CS_fsm_reg[0] ;
  input ap_enable_reg_pp0_iter0_reg;
  input \an32ShiftReg_5_reg[0] ;
  input pstrmInput_TVALID_int_regslice;
  input \ap_CS_fsm_reg[1] ;
  input [14:0]mul_ln35_2_reg_585_reg__1;
  input [14:0]\add_ln35_2_reg_605_reg[31] ;
  input [15:0]\add_ln35_2_reg_605_reg[23] ;
  input [15:0]\add_ln35_2_reg_605_reg[23]_0 ;

  wire CEA2;
  wire CEB1;
  wire [6:0]DI;
  wire DSP_A_B_DATA_INST;
  wire [1:0]O;
  wire [31:0]Q;
  wire [6:0]S;
  wire [15:0]\add_ln35_2_reg_605_reg[23] ;
  wire [15:0]\add_ln35_2_reg_605_reg[23]_0 ;
  wire [14:0]\add_ln35_2_reg_605_reg[31] ;
  wire \an32ShiftReg_5_reg[0] ;
  wire [7:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[6] ;
  wire \ap_CS_fsm_reg[8] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter10;
  wire dout__0_n_100;
  wire dout__0_n_101;
  wire dout__0_n_102;
  wire dout__0_n_103;
  wire dout__0_n_104;
  wire dout__0_n_105;
  wire dout__0_n_106;
  wire dout__0_n_107;
  wire dout__0_n_108;
  wire dout__0_n_109;
  wire dout__0_n_110;
  wire dout__0_n_111;
  wire dout__0_n_112;
  wire dout__0_n_113;
  wire dout__0_n_114;
  wire dout__0_n_115;
  wire dout__0_n_116;
  wire dout__0_n_117;
  wire dout__0_n_118;
  wire dout__0_n_119;
  wire dout__0_n_120;
  wire dout__0_n_121;
  wire dout__0_n_122;
  wire dout__0_n_123;
  wire dout__0_n_124;
  wire dout__0_n_125;
  wire dout__0_n_126;
  wire dout__0_n_127;
  wire dout__0_n_128;
  wire dout__0_n_129;
  wire dout__0_n_130;
  wire dout__0_n_131;
  wire dout__0_n_132;
  wire dout__0_n_133;
  wire dout__0_n_134;
  wire dout__0_n_135;
  wire dout__0_n_136;
  wire dout__0_n_137;
  wire dout__0_n_138;
  wire dout__0_n_139;
  wire dout__0_n_140;
  wire dout__0_n_141;
  wire dout__0_n_142;
  wire dout__0_n_143;
  wire dout__0_n_144;
  wire dout__0_n_145;
  wire dout__0_n_146;
  wire dout__0_n_147;
  wire dout__0_n_148;
  wire dout__0_n_149;
  wire dout__0_n_150;
  wire dout__0_n_151;
  wire dout__0_n_152;
  wire dout__0_n_153;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout__0_n_89;
  wire dout__0_n_90;
  wire dout__0_n_91;
  wire dout__0_n_92;
  wire dout__0_n_93;
  wire dout__0_n_94;
  wire dout__0_n_95;
  wire dout__0_n_96;
  wire dout__0_n_97;
  wire dout__0_n_98;
  wire dout__0_n_99;
  wire dout__1_n_100;
  wire dout__1_n_101;
  wire dout__1_n_102;
  wire dout__1_n_103;
  wire dout__1_n_104;
  wire dout__1_n_105;
  wire dout__1_n_58;
  wire dout__1_n_59;
  wire dout__1_n_60;
  wire dout__1_n_61;
  wire dout__1_n_62;
  wire dout__1_n_63;
  wire dout__1_n_64;
  wire dout__1_n_65;
  wire dout__1_n_66;
  wire dout__1_n_67;
  wire dout__1_n_68;
  wire dout__1_n_69;
  wire dout__1_n_70;
  wire dout__1_n_71;
  wire dout__1_n_72;
  wire dout__1_n_73;
  wire dout__1_n_74;
  wire dout__1_n_75;
  wire dout__1_n_76;
  wire dout__1_n_77;
  wire dout__1_n_78;
  wire dout__1_n_79;
  wire dout__1_n_80;
  wire dout__1_n_81;
  wire dout__1_n_82;
  wire dout__1_n_83;
  wire dout__1_n_84;
  wire dout__1_n_85;
  wire dout__1_n_86;
  wire dout__1_n_87;
  wire dout__1_n_88;
  wire dout__1_n_89;
  wire dout__1_n_90;
  wire dout__1_n_91;
  wire dout__1_n_92;
  wire dout__1_n_93;
  wire dout__1_n_94;
  wire dout__1_n_95;
  wire dout__1_n_96;
  wire dout__1_n_97;
  wire dout__1_n_98;
  wire dout__1_n_99;
  wire [29:16]dout__3;
  wire dout_carry__0_i_1__7_n_0;
  wire dout_carry__0_i_2__7_n_0;
  wire dout_carry__0_i_3__7_n_0;
  wire dout_carry__0_i_4__7_n_0;
  wire dout_carry__0_i_5__7_n_0;
  wire dout_carry__0_i_6__7_n_0;
  wire dout_carry__0_i_7__7_n_0;
  wire dout_carry__0_i_8__7_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__7_n_0;
  wire dout_carry_i_2__7_n_0;
  wire dout_carry_i_3__7_n_0;
  wire dout_carry_i_4__7_n_0;
  wire dout_carry_i_5__7_n_0;
  wire dout_carry_i_6__7_n_0;
  wire dout_carry_i_7__7_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire [7:0]\mul_ln35_2_reg_585_reg[14]__0 ;
  wire [7:0]\mul_ln35_2_reg_585_reg[15]__0 ;
  wire [7:0]\mul_ln35_2_reg_585_reg[16]__0 ;
  wire [7:0]\mul_ln35_2_reg_585_reg[16]__0_0 ;
  wire [6:0]\mul_ln35_2_reg_585_reg[6]__0 ;
  wire [7:0]\mul_ln35_2_reg_585_reg[7]__0 ;
  wire [14:0]mul_ln35_2_reg_585_reg__1;
  wire pstrmInput_TVALID_int_regslice;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire NLW_dout__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__1_OVERFLOW_UNCONNECTED;
  wire NLW_dout__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_dout__1_PCOUT_UNCONNECTED;
  wire [7:0]NLW_dout__1_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  (* HLUTNM = "lutpair97" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_1
       (.I0(dout__0_n_91),
        .I1(\add_ln35_2_reg_605_reg[23] [14]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [14]),
        .O(\mul_ln35_2_reg_585_reg[14]__0 [7]));
  (* HLUTNM = "lutpair97" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_10
       (.I0(dout__0_n_91),
        .I1(\add_ln35_2_reg_605_reg[23] [14]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [14]),
        .I3(\mul_ln35_2_reg_585_reg[14]__0 [6]),
        .O(\mul_ln35_2_reg_585_reg[15]__0 [6]));
  (* HLUTNM = "lutpair96" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_11
       (.I0(dout__0_n_92),
        .I1(\add_ln35_2_reg_605_reg[23] [13]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [13]),
        .I3(\mul_ln35_2_reg_585_reg[14]__0 [5]),
        .O(\mul_ln35_2_reg_585_reg[15]__0 [5]));
  (* HLUTNM = "lutpair95" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_12
       (.I0(dout__0_n_93),
        .I1(\add_ln35_2_reg_605_reg[23] [12]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [12]),
        .I3(\mul_ln35_2_reg_585_reg[14]__0 [4]),
        .O(\mul_ln35_2_reg_585_reg[15]__0 [4]));
  (* HLUTNM = "lutpair94" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_13
       (.I0(dout__0_n_94),
        .I1(\add_ln35_2_reg_605_reg[23] [11]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [11]),
        .I3(\mul_ln35_2_reg_585_reg[14]__0 [3]),
        .O(\mul_ln35_2_reg_585_reg[15]__0 [3]));
  (* HLUTNM = "lutpair93" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_14
       (.I0(dout__0_n_95),
        .I1(\add_ln35_2_reg_605_reg[23] [10]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [10]),
        .I3(\mul_ln35_2_reg_585_reg[14]__0 [2]),
        .O(\mul_ln35_2_reg_585_reg[15]__0 [2]));
  (* HLUTNM = "lutpair92" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_15
       (.I0(dout__0_n_96),
        .I1(\add_ln35_2_reg_605_reg[23] [9]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [9]),
        .I3(\mul_ln35_2_reg_585_reg[14]__0 [1]),
        .O(\mul_ln35_2_reg_585_reg[15]__0 [1]));
  (* HLUTNM = "lutpair91" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_16
       (.I0(dout__0_n_97),
        .I1(\add_ln35_2_reg_605_reg[23] [8]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [8]),
        .I3(\mul_ln35_2_reg_585_reg[14]__0 [0]),
        .O(\mul_ln35_2_reg_585_reg[15]__0 [0]));
  (* HLUTNM = "lutpair96" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_2
       (.I0(dout__0_n_92),
        .I1(\add_ln35_2_reg_605_reg[23] [13]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [13]),
        .O(\mul_ln35_2_reg_585_reg[14]__0 [6]));
  (* HLUTNM = "lutpair95" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_3
       (.I0(dout__0_n_93),
        .I1(\add_ln35_2_reg_605_reg[23] [12]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [12]),
        .O(\mul_ln35_2_reg_585_reg[14]__0 [5]));
  (* HLUTNM = "lutpair94" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_4
       (.I0(dout__0_n_94),
        .I1(\add_ln35_2_reg_605_reg[23] [11]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [11]),
        .O(\mul_ln35_2_reg_585_reg[14]__0 [4]));
  (* HLUTNM = "lutpair93" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_5
       (.I0(dout__0_n_95),
        .I1(\add_ln35_2_reg_605_reg[23] [10]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [10]),
        .O(\mul_ln35_2_reg_585_reg[14]__0 [3]));
  (* HLUTNM = "lutpair92" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_6
       (.I0(dout__0_n_96),
        .I1(\add_ln35_2_reg_605_reg[23] [9]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [9]),
        .O(\mul_ln35_2_reg_585_reg[14]__0 [2]));
  (* HLUTNM = "lutpair91" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_7
       (.I0(dout__0_n_97),
        .I1(\add_ln35_2_reg_605_reg[23] [8]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [8]),
        .O(\mul_ln35_2_reg_585_reg[14]__0 [1]));
  (* HLUTNM = "lutpair90" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_8
       (.I0(dout__0_n_98),
        .I1(\add_ln35_2_reg_605_reg[23] [7]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [7]),
        .O(\mul_ln35_2_reg_585_reg[14]__0 [0]));
  (* HLUTNM = "lutpair98" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__0_i_9
       (.I0(dout__0_n_90),
        .I1(\add_ln35_2_reg_605_reg[23] [15]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [15]),
        .I3(\mul_ln35_2_reg_585_reg[14]__0 [7]),
        .O(\mul_ln35_2_reg_585_reg[15]__0 [7]));
  (* HLUTNM = "lutpair105" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_1
       (.I0(dout__3[22]),
        .I1(mul_ln35_2_reg_585_reg__1[6]),
        .I2(\add_ln35_2_reg_605_reg[31] [6]),
        .O(\mul_ln35_2_reg_585_reg[16]__0 [7]));
  (* HLUTNM = "lutpair105" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_10
       (.I0(dout__3[22]),
        .I1(mul_ln35_2_reg_585_reg__1[6]),
        .I2(\add_ln35_2_reg_605_reg[31] [6]),
        .I3(\mul_ln35_2_reg_585_reg[16]__0 [6]),
        .O(\mul_ln35_2_reg_585_reg[16]__0_0 [6]));
  (* HLUTNM = "lutpair104" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_11
       (.I0(dout__3[21]),
        .I1(mul_ln35_2_reg_585_reg__1[5]),
        .I2(\add_ln35_2_reg_605_reg[31] [5]),
        .I3(\mul_ln35_2_reg_585_reg[16]__0 [5]),
        .O(\mul_ln35_2_reg_585_reg[16]__0_0 [5]));
  (* HLUTNM = "lutpair103" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_12
       (.I0(dout__3[20]),
        .I1(mul_ln35_2_reg_585_reg__1[4]),
        .I2(\add_ln35_2_reg_605_reg[31] [4]),
        .I3(\mul_ln35_2_reg_585_reg[16]__0 [4]),
        .O(\mul_ln35_2_reg_585_reg[16]__0_0 [4]));
  (* HLUTNM = "lutpair102" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_13
       (.I0(dout__3[19]),
        .I1(mul_ln35_2_reg_585_reg__1[3]),
        .I2(\add_ln35_2_reg_605_reg[31] [3]),
        .I3(\mul_ln35_2_reg_585_reg[16]__0 [3]),
        .O(\mul_ln35_2_reg_585_reg[16]__0_0 [3]));
  (* HLUTNM = "lutpair101" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_14
       (.I0(dout__3[18]),
        .I1(mul_ln35_2_reg_585_reg__1[2]),
        .I2(\add_ln35_2_reg_605_reg[31] [2]),
        .I3(\mul_ln35_2_reg_585_reg[16]__0 [2]),
        .O(\mul_ln35_2_reg_585_reg[16]__0_0 [2]));
  (* HLUTNM = "lutpair100" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_15
       (.I0(dout__3[17]),
        .I1(mul_ln35_2_reg_585_reg__1[1]),
        .I2(\add_ln35_2_reg_605_reg[31] [1]),
        .I3(\mul_ln35_2_reg_585_reg[16]__0 [1]),
        .O(\mul_ln35_2_reg_585_reg[16]__0_0 [1]));
  (* HLUTNM = "lutpair99" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_16
       (.I0(dout__3[16]),
        .I1(mul_ln35_2_reg_585_reg__1[0]),
        .I2(\add_ln35_2_reg_605_reg[31] [0]),
        .I3(\mul_ln35_2_reg_585_reg[16]__0 [0]),
        .O(\mul_ln35_2_reg_585_reg[16]__0_0 [0]));
  (* HLUTNM = "lutpair104" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_2
       (.I0(dout__3[21]),
        .I1(mul_ln35_2_reg_585_reg__1[5]),
        .I2(\add_ln35_2_reg_605_reg[31] [5]),
        .O(\mul_ln35_2_reg_585_reg[16]__0 [6]));
  (* HLUTNM = "lutpair103" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_3
       (.I0(dout__3[20]),
        .I1(mul_ln35_2_reg_585_reg__1[4]),
        .I2(\add_ln35_2_reg_605_reg[31] [4]),
        .O(\mul_ln35_2_reg_585_reg[16]__0 [5]));
  (* HLUTNM = "lutpair102" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_4
       (.I0(dout__3[19]),
        .I1(mul_ln35_2_reg_585_reg__1[3]),
        .I2(\add_ln35_2_reg_605_reg[31] [3]),
        .O(\mul_ln35_2_reg_585_reg[16]__0 [4]));
  (* HLUTNM = "lutpair101" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_5
       (.I0(dout__3[18]),
        .I1(mul_ln35_2_reg_585_reg__1[2]),
        .I2(\add_ln35_2_reg_605_reg[31] [2]),
        .O(\mul_ln35_2_reg_585_reg[16]__0 [3]));
  (* HLUTNM = "lutpair100" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_6
       (.I0(dout__3[17]),
        .I1(mul_ln35_2_reg_585_reg__1[1]),
        .I2(\add_ln35_2_reg_605_reg[31] [1]),
        .O(\mul_ln35_2_reg_585_reg[16]__0 [2]));
  (* HLUTNM = "lutpair99" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_7
       (.I0(dout__3[16]),
        .I1(mul_ln35_2_reg_585_reg__1[0]),
        .I2(\add_ln35_2_reg_605_reg[31] [0]),
        .O(\mul_ln35_2_reg_585_reg[16]__0 [1]));
  (* HLUTNM = "lutpair98" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_8
       (.I0(dout__0_n_90),
        .I1(\add_ln35_2_reg_605_reg[23] [15]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [15]),
        .O(\mul_ln35_2_reg_585_reg[16]__0 [0]));
  (* HLUTNM = "lutpair106" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__1_i_9
       (.I0(dout__3[23]),
        .I1(mul_ln35_2_reg_585_reg__1[7]),
        .I2(\add_ln35_2_reg_605_reg[31] [7]),
        .I3(\mul_ln35_2_reg_585_reg[16]__0 [7]),
        .O(\mul_ln35_2_reg_585_reg[16]__0_0 [7]));
  (* HLUTNM = "lutpair112" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_1
       (.I0(dout__3[29]),
        .I1(mul_ln35_2_reg_585_reg__1[13]),
        .I2(\add_ln35_2_reg_605_reg[31] [13]),
        .O(DI[6]));
  (* HLUTNM = "lutpair112" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_10
       (.I0(dout__3[29]),
        .I1(mul_ln35_2_reg_585_reg__1[13]),
        .I2(\add_ln35_2_reg_605_reg[31] [13]),
        .I3(DI[5]),
        .O(S[5]));
  (* HLUTNM = "lutpair111" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_11
       (.I0(dout__3[28]),
        .I1(mul_ln35_2_reg_585_reg__1[12]),
        .I2(\add_ln35_2_reg_605_reg[31] [12]),
        .I3(DI[4]),
        .O(S[4]));
  (* HLUTNM = "lutpair110" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_12
       (.I0(dout__3[27]),
        .I1(mul_ln35_2_reg_585_reg__1[11]),
        .I2(\add_ln35_2_reg_605_reg[31] [11]),
        .I3(DI[3]),
        .O(S[3]));
  (* HLUTNM = "lutpair109" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_13
       (.I0(dout__3[26]),
        .I1(mul_ln35_2_reg_585_reg__1[10]),
        .I2(\add_ln35_2_reg_605_reg[31] [10]),
        .I3(DI[2]),
        .O(S[2]));
  (* HLUTNM = "lutpair108" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_14
       (.I0(dout__3[25]),
        .I1(mul_ln35_2_reg_585_reg__1[9]),
        .I2(\add_ln35_2_reg_605_reg[31] [9]),
        .I3(DI[1]),
        .O(S[1]));
  (* HLUTNM = "lutpair107" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_15
       (.I0(dout__3[24]),
        .I1(mul_ln35_2_reg_585_reg__1[8]),
        .I2(\add_ln35_2_reg_605_reg[31] [8]),
        .I3(DI[0]),
        .O(S[0]));
  (* HLUTNM = "lutpair111" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_2
       (.I0(dout__3[28]),
        .I1(mul_ln35_2_reg_585_reg__1[12]),
        .I2(\add_ln35_2_reg_605_reg[31] [12]),
        .O(DI[5]));
  (* HLUTNM = "lutpair110" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_3
       (.I0(dout__3[27]),
        .I1(mul_ln35_2_reg_585_reg__1[11]),
        .I2(\add_ln35_2_reg_605_reg[31] [11]),
        .O(DI[4]));
  (* HLUTNM = "lutpair109" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_4
       (.I0(dout__3[26]),
        .I1(mul_ln35_2_reg_585_reg__1[10]),
        .I2(\add_ln35_2_reg_605_reg[31] [10]),
        .O(DI[3]));
  (* HLUTNM = "lutpair108" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_5
       (.I0(dout__3[25]),
        .I1(mul_ln35_2_reg_585_reg__1[9]),
        .I2(\add_ln35_2_reg_605_reg[31] [9]),
        .O(DI[2]));
  (* HLUTNM = "lutpair107" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_6
       (.I0(dout__3[24]),
        .I1(mul_ln35_2_reg_585_reg__1[8]),
        .I2(\add_ln35_2_reg_605_reg[31] [8]),
        .O(DI[1]));
  (* HLUTNM = "lutpair106" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_7
       (.I0(dout__3[23]),
        .I1(mul_ln35_2_reg_585_reg__1[7]),
        .I2(\add_ln35_2_reg_605_reg[31] [7]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry__2_i_9
       (.I0(DI[6]),
        .I1(mul_ln35_2_reg_585_reg__1[14]),
        .I2(O[0]),
        .I3(\add_ln35_2_reg_605_reg[31] [14]),
        .O(S[6]));
  (* HLUTNM = "lutpair89" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry_i_1
       (.I0(dout__0_n_99),
        .I1(\add_ln35_2_reg_605_reg[23] [6]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [6]),
        .O(\mul_ln35_2_reg_585_reg[6]__0 [6]));
  (* HLUTNM = "lutpair88" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry_i_10
       (.I0(dout__0_n_100),
        .I1(\add_ln35_2_reg_605_reg[23] [5]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [5]),
        .I3(\mul_ln35_2_reg_585_reg[6]__0 [4]),
        .O(\mul_ln35_2_reg_585_reg[7]__0 [5]));
  (* HLUTNM = "lutpair87" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry_i_11
       (.I0(dout__0_n_101),
        .I1(\add_ln35_2_reg_605_reg[23] [4]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [4]),
        .I3(\mul_ln35_2_reg_585_reg[6]__0 [3]),
        .O(\mul_ln35_2_reg_585_reg[7]__0 [4]));
  (* HLUTNM = "lutpair86" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry_i_12
       (.I0(dout__0_n_102),
        .I1(\add_ln35_2_reg_605_reg[23] [3]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [3]),
        .I3(\mul_ln35_2_reg_585_reg[6]__0 [2]),
        .O(\mul_ln35_2_reg_585_reg[7]__0 [3]));
  (* HLUTNM = "lutpair85" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry_i_13
       (.I0(dout__0_n_103),
        .I1(\add_ln35_2_reg_605_reg[23] [2]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [2]),
        .I3(\mul_ln35_2_reg_585_reg[6]__0 [1]),
        .O(\mul_ln35_2_reg_585_reg[7]__0 [2]));
  (* HLUTNM = "lutpair84" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry_i_14
       (.I0(dout__0_n_104),
        .I1(\add_ln35_2_reg_605_reg[23] [1]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [1]),
        .I3(\mul_ln35_2_reg_585_reg[6]__0 [0]),
        .O(\mul_ln35_2_reg_585_reg[7]__0 [1]));
  (* HLUTNM = "lutpair83" *) 
  LUT3 #(
    .INIT(8'h96)) 
    add_ln35_2_fu_369_p2__0_carry_i_15
       (.I0(dout__0_n_105),
        .I1(\add_ln35_2_reg_605_reg[23] [0]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [0]),
        .O(\mul_ln35_2_reg_585_reg[7]__0 [0]));
  (* HLUTNM = "lutpair88" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry_i_2
       (.I0(dout__0_n_100),
        .I1(\add_ln35_2_reg_605_reg[23] [5]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [5]),
        .O(\mul_ln35_2_reg_585_reg[6]__0 [5]));
  (* HLUTNM = "lutpair87" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry_i_3
       (.I0(dout__0_n_101),
        .I1(\add_ln35_2_reg_605_reg[23] [4]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [4]),
        .O(\mul_ln35_2_reg_585_reg[6]__0 [4]));
  (* HLUTNM = "lutpair86" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry_i_4
       (.I0(dout__0_n_102),
        .I1(\add_ln35_2_reg_605_reg[23] [3]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [3]),
        .O(\mul_ln35_2_reg_585_reg[6]__0 [3]));
  (* HLUTNM = "lutpair85" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry_i_5
       (.I0(dout__0_n_103),
        .I1(\add_ln35_2_reg_605_reg[23] [2]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [2]),
        .O(\mul_ln35_2_reg_585_reg[6]__0 [2]));
  (* HLUTNM = "lutpair84" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry_i_6
       (.I0(dout__0_n_104),
        .I1(\add_ln35_2_reg_605_reg[23] [1]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [1]),
        .O(\mul_ln35_2_reg_585_reg[6]__0 [1]));
  (* HLUTNM = "lutpair83" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln35_2_fu_369_p2__0_carry_i_7
       (.I0(dout__0_n_105),
        .I1(\add_ln35_2_reg_605_reg[23] [0]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [0]),
        .O(\mul_ln35_2_reg_585_reg[6]__0 [0]));
  (* HLUTNM = "lutpair90" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry_i_8
       (.I0(dout__0_n_98),
        .I1(\add_ln35_2_reg_605_reg[23] [7]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [7]),
        .I3(\mul_ln35_2_reg_585_reg[6]__0 [6]),
        .O(\mul_ln35_2_reg_585_reg[7]__0 [7]));
  (* HLUTNM = "lutpair89" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln35_2_fu_369_p2__0_carry_i_9
       (.I0(dout__0_n_99),
        .I1(\add_ln35_2_reg_605_reg[23] [6]),
        .I2(\add_ln35_2_reg_605_reg[23]_0 [6]),
        .I3(\mul_ln35_2_reg_585_reg[6]__0 [5]),
        .O(\mul_ln35_2_reg_585_reg[7]__0 [6]));
  LUT5 #(
    .INIT(32'h80888000)) 
    \an32ShiftReg_4[31]_i_1 
       (.I0(\ap_CS_fsm_reg[0] [4]),
        .I1(\an32ShiftReg_5_reg[0] ),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(\ap_CS_fsm_reg[0] [0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(CEB1));
  LUT5 #(
    .INIT(32'h80888000)) 
    \an32ShiftReg_5[31]_i_1 
       (.I0(\ap_CS_fsm_reg[0] [3]),
        .I1(\an32ShiftReg_5_reg[0] ),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(\ap_CS_fsm_reg[0] [0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(\ap_CS_fsm_reg[6] ));
  LUT6 #(
    .INIT(64'hABFBFFFF00000000)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(pstrmInput_TVALID_int_regslice),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(\ap_CS_fsm_reg[0] [0]),
        .I3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I4(\an32ShiftReg_5_reg[0] ),
        .I5(\ap_CS_fsm_reg[0] [7]),
        .O(ap_enable_reg_pp0_iter10));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(\ap_CS_fsm_reg[0] [5]),
        .I2(\ap_CS_fsm_reg[0] [4]),
        .I3(\ap_CS_fsm_reg[0] [6]),
        .I4(\ap_CS_fsm_reg[0] [2]),
        .I5(\ap_CS_fsm_reg[0] [1]),
        .O(\ap_CS_fsm_reg[8] ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEB1),
        .CEA2(\ap_CS_fsm_reg[6] ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(\ap_CS_fsm_reg[6] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,dout__0_n_89,dout__0_n_90,dout__0_n_91,dout__0_n_92,dout__0_n_93,dout__0_n_94,dout__0_n_95,dout__0_n_96,dout__0_n_97,dout__0_n_98,dout__0_n_99,dout__0_n_100,dout__0_n_101,dout__0_n_102,dout__0_n_103,dout__0_n_104,dout__0_n_105}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(\ap_CS_fsm_reg[6] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__1_OVERFLOW_UNCONNECTED),
        .P({dout__1_n_58,dout__1_n_59,dout__1_n_60,dout__1_n_61,dout__1_n_62,dout__1_n_63,dout__1_n_64,dout__1_n_65,dout__1_n_66,dout__1_n_67,dout__1_n_68,dout__1_n_69,dout__1_n_70,dout__1_n_71,dout__1_n_72,dout__1_n_73,dout__1_n_74,dout__1_n_75,dout__1_n_76,dout__1_n_77,dout__1_n_78,dout__1_n_79,dout__1_n_80,dout__1_n_81,dout__1_n_82,dout__1_n_83,dout__1_n_84,dout__1_n_85,dout__1_n_86,dout__1_n_87,dout__1_n_88,dout__1_n_89,dout__1_n_90,dout__1_n_91,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98,dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105}),
        .PATTERNBDETECT(NLW_dout__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
        .PCOUT(NLW_dout__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__1_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105,1'b0}),
        .O(dout__3[23:16]),
        .S({dout_carry_i_1__7_n_0,dout_carry_i_2__7_n_0,dout_carry_i_3__7_n_0,dout_carry_i_4__7_n_0,dout_carry_i_5__7_n_0,dout_carry_i_6__7_n_0,dout_carry_i_7__7_n_0,dout__0_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98}),
        .O({O,dout__3[29:24]}),
        .S({dout_carry__0_i_1__7_n_0,dout_carry__0_i_2__7_n_0,dout_carry__0_i_3__7_n_0,dout_carry__0_i_4__7_n_0,dout_carry__0_i_5__7_n_0,dout_carry__0_i_6__7_n_0,dout_carry__0_i_7__7_n_0,dout_carry__0_i_8__7_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__7
       (.I0(dout__1_n_91),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__7
       (.I0(dout__1_n_92),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__7
       (.I0(dout__1_n_93),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__7
       (.I0(dout__1_n_94),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__7
       (.I0(dout__1_n_95),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__7
       (.I0(dout__1_n_96),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__7
       (.I0(dout__1_n_97),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__7
       (.I0(dout__1_n_98),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__7
       (.I0(dout__1_n_99),
        .I1(dout_n_99),
        .O(dout_carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__7
       (.I0(dout__1_n_100),
        .I1(dout_n_100),
        .O(dout_carry_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__7
       (.I0(dout__1_n_101),
        .I1(dout_n_101),
        .O(dout_carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__7
       (.I0(dout__1_n_102),
        .I1(dout_n_102),
        .O(dout_carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__7
       (.I0(dout__1_n_103),
        .I1(dout_n_103),
        .O(dout_carry_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__7
       (.I0(dout__1_n_104),
        .I1(dout_n_104),
        .O(dout_carry_i_6__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__7
       (.I0(dout__1_n_105),
        .I1(dout_n_105),
        .O(dout_carry_i_7__7_n_0));
  LUT6 #(
    .INIT(64'hEF00EFEFEF000000)) 
    dout_i_3
       (.I0(ap_enable_reg_pp0_iter10),
        .I1(\ap_CS_fsm_reg[8] ),
        .I2(DSP_A_B_DATA_INST),
        .I3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I4(\ap_CS_fsm_reg[0] [0]),
        .I5(ap_enable_reg_pp0_iter0_reg),
        .O(CEA2));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_17
   (E,
    D,
    PCOUT,
    \mul_ln35_5_reg_615_reg[16]__0 ,
    S,
    DI,
    \mul_ln35_5_reg_615_reg[16]__0_0 ,
    \mul_ln35_5_reg_615_reg[16]__0_1 ,
    CEB2,
    CEB1,
    CEA2,
    ap_clk,
    q00,
    Q,
    P,
    pstrmOutput_TDATA__94_carry__1_i_16,
    \mul_ln35_5_reg_615_reg[0]__0 ,
    \mul_ln35_5_reg_615_reg[0]__0_0 ,
    dout__3,
    mul_ln35_8_reg_645_reg__1);
  output [0:0]E;
  output [16:0]D;
  output [47:0]PCOUT;
  output [2:0]\mul_ln35_5_reg_615_reg[16]__0 ;
  output [6:0]S;
  output [6:0]DI;
  output [6:0]\mul_ln35_5_reg_615_reg[16]__0_0 ;
  output [6:0]\mul_ln35_5_reg_615_reg[16]__0_1 ;
  input CEB2;
  input CEB1;
  input CEA2;
  input ap_clk;
  input [31:0]q00;
  input [16:0]Q;
  input [14:0]P;
  input [0:0]pstrmOutput_TDATA__94_carry__1_i_16;
  input \mul_ln35_5_reg_615_reg[0]__0 ;
  input [0:0]\mul_ln35_5_reg_615_reg[0]__0_0 ;
  input [14:0]dout__3;
  input [14:0]mul_ln35_8_reg_645_reg__1;

  wire CEA2;
  wire CEB1;
  wire CEB2;
  wire [16:0]D;
  wire [6:0]DI;
  wire [0:0]E;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [16:0]Q;
  wire [6:0]S;
  wire ap_clk;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire [14:0]dout__3;
  wire dout_carry__0_i_1__1_n_0;
  wire dout_carry__0_i_2__1_n_0;
  wire dout_carry__0_i_3__1_n_0;
  wire dout_carry__0_i_4__1_n_0;
  wire dout_carry__0_i_5__1_n_0;
  wire dout_carry__0_i_6__1_n_0;
  wire dout_carry__0_i_7__1_n_0;
  wire dout_carry__0_i_8__1_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__1_n_0;
  wire dout_carry_i_2__1_n_0;
  wire dout_carry_i_3__1_n_0;
  wire dout_carry_i_4__1_n_0;
  wire dout_carry_i_5__1_n_0;
  wire dout_carry_i_6__1_n_0;
  wire dout_carry_i_7__1_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire \mul_ln35_5_reg_615_reg[0]__0 ;
  wire [0:0]\mul_ln35_5_reg_615_reg[0]__0_0 ;
  wire [2:0]\mul_ln35_5_reg_615_reg[16]__0 ;
  wire [6:0]\mul_ln35_5_reg_615_reg[16]__0_0 ;
  wire [6:0]\mul_ln35_5_reg_615_reg[16]__0_1 ;
  wire [29:17]mul_ln35_5_reg_615_reg__1;
  wire [14:0]mul_ln35_8_reg_645_reg__1;
  wire [0:0]pstrmOutput_TDATA__94_carry__1_i_16;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEB2),
        .CEA2(CEB1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB2),
        .CEB2(CEB1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O({mul_ln35_5_reg_615_reg__1[23:17],\mul_ln35_5_reg_615_reg[16]__0 [0]}),
        .S({dout_carry_i_1__1_n_0,dout_carry_i_2__1_n_0,dout_carry_i_3__1_n_0,dout_carry_i_4__1_n_0,dout_carry_i_5__1_n_0,dout_carry_i_6__1_n_0,dout_carry_i_7__1_n_0,pstrmOutput_TDATA__94_carry__1_i_16}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O({\mul_ln35_5_reg_615_reg[16]__0 [2:1],mul_ln35_5_reg_615_reg__1[29:24]}),
        .S({dout_carry__0_i_1__1_n_0,dout_carry__0_i_2__1_n_0,dout_carry__0_i_3__1_n_0,dout_carry__0_i_4__1_n_0,dout_carry__0_i_5__1_n_0,dout_carry__0_i_6__1_n_0,dout_carry__0_i_7__1_n_0,dout_carry__0_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__1
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__1
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__1
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__1
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__1
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__1
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__1
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__1
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__1
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__1
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__1
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__1
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__1
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__1
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__1
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    dout_i_1__0
       (.I0(\mul_ln35_5_reg_615_reg[0]__0 ),
        .I1(\mul_ln35_5_reg_615_reg[0]__0_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__1_i_1
       (.I0(mul_ln35_5_reg_615_reg__1[22]),
        .I1(dout__3[6]),
        .I2(mul_ln35_8_reg_645_reg__1[6]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_0 [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__1_i_10
       (.I0(mul_ln35_5_reg_615_reg__1[22]),
        .I1(dout__3[6]),
        .I2(mul_ln35_8_reg_645_reg__1[6]),
        .I3(\mul_ln35_5_reg_615_reg[16]__0_0 [5]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_1 [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__1_i_11
       (.I0(mul_ln35_5_reg_615_reg__1[21]),
        .I1(dout__3[5]),
        .I2(mul_ln35_8_reg_645_reg__1[5]),
        .I3(\mul_ln35_5_reg_615_reg[16]__0_0 [4]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_1 [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__1_i_12
       (.I0(mul_ln35_5_reg_615_reg__1[20]),
        .I1(dout__3[4]),
        .I2(mul_ln35_8_reg_645_reg__1[4]),
        .I3(\mul_ln35_5_reg_615_reg[16]__0_0 [3]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_1 [3]));
  (* HLUTNM = "lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__1_i_13
       (.I0(mul_ln35_5_reg_615_reg__1[19]),
        .I1(dout__3[3]),
        .I2(mul_ln35_8_reg_645_reg__1[3]),
        .I3(\mul_ln35_5_reg_615_reg[16]__0_0 [2]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_1 [2]));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__1_i_14
       (.I0(mul_ln35_5_reg_615_reg__1[18]),
        .I1(dout__3[2]),
        .I2(mul_ln35_8_reg_645_reg__1[2]),
        .I3(\mul_ln35_5_reg_615_reg[16]__0_0 [1]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_1 [1]));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__1_i_15
       (.I0(mul_ln35_5_reg_615_reg__1[17]),
        .I1(dout__3[1]),
        .I2(mul_ln35_8_reg_645_reg__1[1]),
        .I3(\mul_ln35_5_reg_615_reg[16]__0_0 [0]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_1 [0]));
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__1_i_2
       (.I0(mul_ln35_5_reg_615_reg__1[21]),
        .I1(dout__3[5]),
        .I2(mul_ln35_8_reg_645_reg__1[5]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_0 [5]));
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__1_i_3
       (.I0(mul_ln35_5_reg_615_reg__1[20]),
        .I1(dout__3[4]),
        .I2(mul_ln35_8_reg_645_reg__1[4]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_0 [4]));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__1_i_4
       (.I0(mul_ln35_5_reg_615_reg__1[19]),
        .I1(dout__3[3]),
        .I2(mul_ln35_8_reg_645_reg__1[3]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_0 [3]));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__1_i_5
       (.I0(mul_ln35_5_reg_615_reg__1[18]),
        .I1(dout__3[2]),
        .I2(mul_ln35_8_reg_645_reg__1[2]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_0 [2]));
  (* HLUTNM = "lutpair47" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__1_i_6
       (.I0(mul_ln35_5_reg_615_reg__1[17]),
        .I1(dout__3[1]),
        .I2(mul_ln35_8_reg_645_reg__1[1]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_0 [1]));
  (* HLUTNM = "lutpair46" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__1_i_7
       (.I0(\mul_ln35_5_reg_615_reg[16]__0 [0]),
        .I1(dout__3[0]),
        .I2(mul_ln35_8_reg_645_reg__1[0]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_0 [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__1_i_9
       (.I0(mul_ln35_5_reg_615_reg__1[23]),
        .I1(dout__3[7]),
        .I2(mul_ln35_8_reg_645_reg__1[7]),
        .I3(\mul_ln35_5_reg_615_reg[16]__0_0 [6]),
        .O(\mul_ln35_5_reg_615_reg[16]__0_1 [6]));
  (* HLUTNM = "lutpair55" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__2_i_1
       (.I0(mul_ln35_5_reg_615_reg__1[29]),
        .I1(dout__3[13]),
        .I2(mul_ln35_8_reg_645_reg__1[13]),
        .O(DI[6]));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__2_i_10
       (.I0(mul_ln35_5_reg_615_reg__1[29]),
        .I1(dout__3[13]),
        .I2(mul_ln35_8_reg_645_reg__1[13]),
        .I3(DI[5]),
        .O(S[5]));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__2_i_11
       (.I0(mul_ln35_5_reg_615_reg__1[28]),
        .I1(dout__3[12]),
        .I2(mul_ln35_8_reg_645_reg__1[12]),
        .I3(DI[4]),
        .O(S[4]));
  (* HLUTNM = "lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__2_i_12
       (.I0(mul_ln35_5_reg_615_reg__1[27]),
        .I1(dout__3[11]),
        .I2(mul_ln35_8_reg_645_reg__1[11]),
        .I3(DI[3]),
        .O(S[3]));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__2_i_13
       (.I0(mul_ln35_5_reg_615_reg__1[26]),
        .I1(dout__3[10]),
        .I2(mul_ln35_8_reg_645_reg__1[10]),
        .I3(DI[2]),
        .O(S[2]));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__2_i_14
       (.I0(mul_ln35_5_reg_615_reg__1[25]),
        .I1(dout__3[9]),
        .I2(mul_ln35_8_reg_645_reg__1[9]),
        .I3(DI[1]),
        .O(S[1]));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__2_i_15
       (.I0(mul_ln35_5_reg_615_reg__1[24]),
        .I1(dout__3[8]),
        .I2(mul_ln35_8_reg_645_reg__1[8]),
        .I3(DI[0]),
        .O(S[0]));
  (* HLUTNM = "lutpair54" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__2_i_2
       (.I0(mul_ln35_5_reg_615_reg__1[28]),
        .I1(dout__3[12]),
        .I2(mul_ln35_8_reg_645_reg__1[12]),
        .O(DI[5]));
  (* HLUTNM = "lutpair53" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__2_i_3
       (.I0(mul_ln35_5_reg_615_reg__1[27]),
        .I1(dout__3[11]),
        .I2(mul_ln35_8_reg_645_reg__1[11]),
        .O(DI[4]));
  (* HLUTNM = "lutpair52" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__2_i_4
       (.I0(mul_ln35_5_reg_615_reg__1[26]),
        .I1(dout__3[10]),
        .I2(mul_ln35_8_reg_645_reg__1[10]),
        .O(DI[3]));
  (* HLUTNM = "lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__2_i_5
       (.I0(mul_ln35_5_reg_615_reg__1[25]),
        .I1(dout__3[9]),
        .I2(mul_ln35_8_reg_645_reg__1[9]),
        .O(DI[2]));
  (* HLUTNM = "lutpair50" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__2_i_6
       (.I0(mul_ln35_5_reg_615_reg__1[24]),
        .I1(dout__3[8]),
        .I2(mul_ln35_8_reg_645_reg__1[8]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'hE8)) 
    pstrmOutput_TDATA__94_carry__2_i_7
       (.I0(mul_ln35_5_reg_615_reg__1[23]),
        .I1(dout__3[7]),
        .I2(mul_ln35_8_reg_645_reg__1[7]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    pstrmOutput_TDATA__94_carry__2_i_9
       (.I0(DI[6]),
        .I1(dout__3[14]),
        .I2(\mul_ln35_5_reg_615_reg[16]__0 [1]),
        .I3(mul_ln35_8_reg_645_reg__1[14]),
        .O(S[6]));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_18
   (CEB2,
    E,
    D,
    PCOUT,
    \mul_ln35_6_reg_625_reg[16]__0 ,
    S,
    dout_carry__0_0,
    CEB1,
    CEA2,
    ap_clk,
    q00,
    Q,
    P,
    \add_ln35_4_reg_635_reg[23] ,
    \an32ShiftReg_3_reg[0] ,
    \mul_ln35_6_reg_625_reg[0]__0 ,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    ap_enable_reg_pp0_iter0_reg,
    dout__3);
  output CEB2;
  output [0:0]E;
  output [16:0]D;
  output [47:0]PCOUT;
  output [14:0]\mul_ln35_6_reg_625_reg[16]__0 ;
  output [7:0]S;
  output [7:0]dout_carry__0_0;
  input CEB1;
  input CEA2;
  input ap_clk;
  input [31:0]q00;
  input [16:0]Q;
  input [14:0]P;
  input [0:0]\add_ln35_4_reg_635_reg[23] ;
  input [2:0]\an32ShiftReg_3_reg[0] ;
  input \mul_ln35_6_reg_625_reg[0]__0 ;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input ap_enable_reg_pp0_iter0_reg;
  input [15:0]dout__3;

  wire CEA2;
  wire CEB1;
  wire CEB2;
  wire [16:0]D;
  wire [0:0]E;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [16:0]Q;
  wire [7:0]S;
  wire [0:0]\add_ln35_4_reg_635_reg[23] ;
  wire [2:0]\an32ShiftReg_3_reg[0] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire [15:0]dout__3;
  wire [7:0]dout_carry__0_0;
  wire dout_carry__0_i_1__6_n_0;
  wire dout_carry__0_i_2__6_n_0;
  wire dout_carry__0_i_3__6_n_0;
  wire dout_carry__0_i_4__6_n_0;
  wire dout_carry__0_i_5__6_n_0;
  wire dout_carry__0_i_6__6_n_0;
  wire dout_carry__0_i_7__6_n_0;
  wire dout_carry__0_i_8__6_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__6_n_0;
  wire dout_carry_i_2__6_n_0;
  wire dout_carry_i_3__6_n_0;
  wire dout_carry_i_4__6_n_0;
  wire dout_carry_i_5__6_n_0;
  wire dout_carry_i_6__6_n_0;
  wire dout_carry_i_7__6_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire \mul_ln35_6_reg_625_reg[0]__0 ;
  wire [14:0]\mul_ln35_6_reg_625_reg[16]__0 ;
  wire [31:31]mul_ln35_6_reg_625_reg__1;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__1_i_1
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [7]),
        .I1(dout__3[7]),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__1_i_2
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [6]),
        .I1(dout__3[6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__1_i_3
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [5]),
        .I1(dout__3[5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__1_i_4
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [4]),
        .I1(dout__3[4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__1_i_5
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [3]),
        .I1(dout__3[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__1_i_6
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [2]),
        .I1(dout__3[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__1_i_7
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [1]),
        .I1(dout__3[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__1_i_8
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [0]),
        .I1(dout__3[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__2_i_1
       (.I0(mul_ln35_6_reg_625_reg__1),
        .I1(dout__3[15]),
        .O(dout_carry__0_0[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__2_i_2
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [14]),
        .I1(dout__3[14]),
        .O(dout_carry__0_0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__2_i_3
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [13]),
        .I1(dout__3[13]),
        .O(dout_carry__0_0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__2_i_4
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [12]),
        .I1(dout__3[12]),
        .O(dout_carry__0_0[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__2_i_5
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [11]),
        .I1(dout__3[11]),
        .O(dout_carry__0_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__2_i_6
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [10]),
        .I1(dout__3[10]),
        .O(dout_carry__0_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__2_i_7
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [9]),
        .I1(dout__3[9]),
        .O(dout_carry__0_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__2_i_8
       (.I0(\mul_ln35_6_reg_625_reg[16]__0 [8]),
        .I1(dout__3[8]),
        .O(dout_carry__0_0[0]));
  LUT5 #(
    .INIT(32'h80888000)) 
    \an32ShiftReg_3[31]_i_1 
       (.I0(\an32ShiftReg_3_reg[0] [2]),
        .I1(\mul_ln35_6_reg_625_reg[0]__0 ),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(\an32ShiftReg_3_reg[0] [0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(CEB2));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEB1),
        .CEA2(CEB2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(CEB2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(\mul_ln35_6_reg_625_reg[16]__0 [7:0]),
        .S({dout_carry_i_1__6_n_0,dout_carry_i_2__6_n_0,dout_carry_i_3__6_n_0,dout_carry_i_4__6_n_0,dout_carry_i_5__6_n_0,dout_carry_i_6__6_n_0,dout_carry_i_7__6_n_0,\add_ln35_4_reg_635_reg[23] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O({mul_ln35_6_reg_625_reg__1,\mul_ln35_6_reg_625_reg[16]__0 [14:8]}),
        .S({dout_carry__0_i_1__6_n_0,dout_carry__0_i_2__6_n_0,dout_carry__0_i_3__6_n_0,dout_carry__0_i_4__6_n_0,dout_carry__0_i_5__6_n_0,dout_carry__0_i_6__6_n_0,dout_carry__0_i_7__6_n_0,dout_carry__0_i_8__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__6
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__6
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__6
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__6
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__6
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__6
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__6
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__6
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__6
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__6
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__6
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__6
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__6
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__6
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__6
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    dout_i_1__2
       (.I0(\mul_ln35_6_reg_625_reg[0]__0 ),
        .I1(\an32ShiftReg_3_reg[0] [1]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_19
   (\ap_CS_fsm_reg[9] ,
    dout__3,
    S,
    \mul_ln35_6_reg_625_reg[15]__0 ,
    CEB1,
    CEA2,
    ap_clk,
    q00,
    Q,
    \an32ShiftReg_2_reg[0] ,
    \an32ShiftReg_2_reg[0]_0 ,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    ap_enable_reg_pp0_iter0_reg,
    \add_ln35_4_reg_635_reg[15] );
  output \ap_CS_fsm_reg[9] ;
  output [15:0]dout__3;
  output [7:0]S;
  output [7:0]\mul_ln35_6_reg_625_reg[15]__0 ;
  input CEB1;
  input CEA2;
  input ap_clk;
  input [31:0]q00;
  input [31:0]Q;
  input [1:0]\an32ShiftReg_2_reg[0] ;
  input \an32ShiftReg_2_reg[0]_0 ;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input ap_enable_reg_pp0_iter0_reg;
  input [15:0]\add_ln35_4_reg_635_reg[15] ;

  wire CEA2;
  wire CEB1;
  wire [31:0]Q;
  wire [7:0]S;
  wire [15:0]\add_ln35_4_reg_635_reg[15] ;
  wire [1:0]\an32ShiftReg_2_reg[0] ;
  wire \an32ShiftReg_2_reg[0]_0 ;
  wire \ap_CS_fsm_reg[9] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire dout__0_n_100;
  wire dout__0_n_101;
  wire dout__0_n_102;
  wire dout__0_n_103;
  wire dout__0_n_104;
  wire dout__0_n_105;
  wire dout__0_n_106;
  wire dout__0_n_107;
  wire dout__0_n_108;
  wire dout__0_n_109;
  wire dout__0_n_110;
  wire dout__0_n_111;
  wire dout__0_n_112;
  wire dout__0_n_113;
  wire dout__0_n_114;
  wire dout__0_n_115;
  wire dout__0_n_116;
  wire dout__0_n_117;
  wire dout__0_n_118;
  wire dout__0_n_119;
  wire dout__0_n_120;
  wire dout__0_n_121;
  wire dout__0_n_122;
  wire dout__0_n_123;
  wire dout__0_n_124;
  wire dout__0_n_125;
  wire dout__0_n_126;
  wire dout__0_n_127;
  wire dout__0_n_128;
  wire dout__0_n_129;
  wire dout__0_n_130;
  wire dout__0_n_131;
  wire dout__0_n_132;
  wire dout__0_n_133;
  wire dout__0_n_134;
  wire dout__0_n_135;
  wire dout__0_n_136;
  wire dout__0_n_137;
  wire dout__0_n_138;
  wire dout__0_n_139;
  wire dout__0_n_140;
  wire dout__0_n_141;
  wire dout__0_n_142;
  wire dout__0_n_143;
  wire dout__0_n_144;
  wire dout__0_n_145;
  wire dout__0_n_146;
  wire dout__0_n_147;
  wire dout__0_n_148;
  wire dout__0_n_149;
  wire dout__0_n_150;
  wire dout__0_n_151;
  wire dout__0_n_152;
  wire dout__0_n_153;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout__0_n_89;
  wire dout__0_n_90;
  wire dout__0_n_91;
  wire dout__0_n_92;
  wire dout__0_n_93;
  wire dout__0_n_94;
  wire dout__0_n_95;
  wire dout__0_n_96;
  wire dout__0_n_97;
  wire dout__0_n_98;
  wire dout__0_n_99;
  wire dout__1_n_100;
  wire dout__1_n_101;
  wire dout__1_n_102;
  wire dout__1_n_103;
  wire dout__1_n_104;
  wire dout__1_n_105;
  wire dout__1_n_58;
  wire dout__1_n_59;
  wire dout__1_n_60;
  wire dout__1_n_61;
  wire dout__1_n_62;
  wire dout__1_n_63;
  wire dout__1_n_64;
  wire dout__1_n_65;
  wire dout__1_n_66;
  wire dout__1_n_67;
  wire dout__1_n_68;
  wire dout__1_n_69;
  wire dout__1_n_70;
  wire dout__1_n_71;
  wire dout__1_n_72;
  wire dout__1_n_73;
  wire dout__1_n_74;
  wire dout__1_n_75;
  wire dout__1_n_76;
  wire dout__1_n_77;
  wire dout__1_n_78;
  wire dout__1_n_79;
  wire dout__1_n_80;
  wire dout__1_n_81;
  wire dout__1_n_82;
  wire dout__1_n_83;
  wire dout__1_n_84;
  wire dout__1_n_85;
  wire dout__1_n_86;
  wire dout__1_n_87;
  wire dout__1_n_88;
  wire dout__1_n_89;
  wire dout__1_n_90;
  wire dout__1_n_91;
  wire dout__1_n_92;
  wire dout__1_n_93;
  wire dout__1_n_94;
  wire dout__1_n_95;
  wire dout__1_n_96;
  wire dout__1_n_97;
  wire dout__1_n_98;
  wire dout__1_n_99;
  wire [15:0]dout__3;
  wire dout_carry__0_i_1__5_n_0;
  wire dout_carry__0_i_2__5_n_0;
  wire dout_carry__0_i_3__5_n_0;
  wire dout_carry__0_i_4__5_n_0;
  wire dout_carry__0_i_5__5_n_0;
  wire dout_carry__0_i_6__5_n_0;
  wire dout_carry__0_i_7__5_n_0;
  wire dout_carry__0_i_8__5_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__5_n_0;
  wire dout_carry_i_2__5_n_0;
  wire dout_carry_i_3__5_n_0;
  wire dout_carry_i_4__5_n_0;
  wire dout_carry_i_5__5_n_0;
  wire dout_carry_i_6__5_n_0;
  wire dout_carry_i_7__5_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire [7:0]\mul_ln35_6_reg_625_reg[15]__0 ;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire NLW_dout__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__1_OVERFLOW_UNCONNECTED;
  wire NLW_dout__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_dout__1_PCOUT_UNCONNECTED;
  wire [7:0]NLW_dout__1_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__0_i_1
       (.I0(\add_ln35_4_reg_635_reg[15] [15]),
        .I1(dout__0_n_90),
        .O(\mul_ln35_6_reg_625_reg[15]__0 [7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__0_i_2
       (.I0(\add_ln35_4_reg_635_reg[15] [14]),
        .I1(dout__0_n_91),
        .O(\mul_ln35_6_reg_625_reg[15]__0 [6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__0_i_3
       (.I0(\add_ln35_4_reg_635_reg[15] [13]),
        .I1(dout__0_n_92),
        .O(\mul_ln35_6_reg_625_reg[15]__0 [5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__0_i_4
       (.I0(\add_ln35_4_reg_635_reg[15] [12]),
        .I1(dout__0_n_93),
        .O(\mul_ln35_6_reg_625_reg[15]__0 [4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__0_i_5
       (.I0(\add_ln35_4_reg_635_reg[15] [11]),
        .I1(dout__0_n_94),
        .O(\mul_ln35_6_reg_625_reg[15]__0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__0_i_6
       (.I0(\add_ln35_4_reg_635_reg[15] [10]),
        .I1(dout__0_n_95),
        .O(\mul_ln35_6_reg_625_reg[15]__0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__0_i_7
       (.I0(\add_ln35_4_reg_635_reg[15] [9]),
        .I1(dout__0_n_96),
        .O(\mul_ln35_6_reg_625_reg[15]__0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry__0_i_8
       (.I0(\add_ln35_4_reg_635_reg[15] [8]),
        .I1(dout__0_n_97),
        .O(\mul_ln35_6_reg_625_reg[15]__0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry_i_1
       (.I0(\add_ln35_4_reg_635_reg[15] [7]),
        .I1(dout__0_n_98),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry_i_2
       (.I0(\add_ln35_4_reg_635_reg[15] [6]),
        .I1(dout__0_n_99),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry_i_3
       (.I0(\add_ln35_4_reg_635_reg[15] [5]),
        .I1(dout__0_n_100),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry_i_4
       (.I0(\add_ln35_4_reg_635_reg[15] [4]),
        .I1(dout__0_n_101),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry_i_5
       (.I0(\add_ln35_4_reg_635_reg[15] [3]),
        .I1(dout__0_n_102),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry_i_6
       (.I0(\add_ln35_4_reg_635_reg[15] [2]),
        .I1(dout__0_n_103),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry_i_7
       (.I0(\add_ln35_4_reg_635_reg[15] [1]),
        .I1(dout__0_n_104),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln35_4_fu_422_p2_carry_i_8
       (.I0(\add_ln35_4_reg_635_reg[15] [0]),
        .I1(dout__0_n_105),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h80888000)) 
    \an32ShiftReg_2[31]_i_1 
       (.I0(\an32ShiftReg_2_reg[0] [1]),
        .I1(\an32ShiftReg_2_reg[0]_0 ),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I3(\an32ShiftReg_2_reg[0] [0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(\ap_CS_fsm_reg[9] ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEB1),
        .CEA2(\ap_CS_fsm_reg[9] ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(\ap_CS_fsm_reg[9] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,dout__0_n_89,dout__0_n_90,dout__0_n_91,dout__0_n_92,dout__0_n_93,dout__0_n_94,dout__0_n_95,dout__0_n_96,dout__0_n_97,dout__0_n_98,dout__0_n_99,dout__0_n_100,dout__0_n_101,dout__0_n_102,dout__0_n_103,dout__0_n_104,dout__0_n_105}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(\ap_CS_fsm_reg[9] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__1_OVERFLOW_UNCONNECTED),
        .P({dout__1_n_58,dout__1_n_59,dout__1_n_60,dout__1_n_61,dout__1_n_62,dout__1_n_63,dout__1_n_64,dout__1_n_65,dout__1_n_66,dout__1_n_67,dout__1_n_68,dout__1_n_69,dout__1_n_70,dout__1_n_71,dout__1_n_72,dout__1_n_73,dout__1_n_74,dout__1_n_75,dout__1_n_76,dout__1_n_77,dout__1_n_78,dout__1_n_79,dout__1_n_80,dout__1_n_81,dout__1_n_82,dout__1_n_83,dout__1_n_84,dout__1_n_85,dout__1_n_86,dout__1_n_87,dout__1_n_88,dout__1_n_89,dout__1_n_90,dout__1_n_91,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98,dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105}),
        .PATTERNBDETECT(NLW_dout__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
        .PCOUT(NLW_dout__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__1_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105,1'b0}),
        .O(dout__3[7:0]),
        .S({dout_carry_i_1__5_n_0,dout_carry_i_2__5_n_0,dout_carry_i_3__5_n_0,dout_carry_i_4__5_n_0,dout_carry_i_5__5_n_0,dout_carry_i_6__5_n_0,dout_carry_i_7__5_n_0,dout__0_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98}),
        .O(dout__3[15:8]),
        .S({dout_carry__0_i_1__5_n_0,dout_carry__0_i_2__5_n_0,dout_carry__0_i_3__5_n_0,dout_carry__0_i_4__5_n_0,dout_carry__0_i_5__5_n_0,dout_carry__0_i_6__5_n_0,dout_carry__0_i_7__5_n_0,dout_carry__0_i_8__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__5
       (.I0(dout__1_n_91),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__5
       (.I0(dout__1_n_92),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__5
       (.I0(dout__1_n_93),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__5
       (.I0(dout__1_n_94),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__5
       (.I0(dout__1_n_95),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__5
       (.I0(dout__1_n_96),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__5
       (.I0(dout__1_n_97),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__5
       (.I0(dout__1_n_98),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__5
       (.I0(dout__1_n_99),
        .I1(dout_n_99),
        .O(dout_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__5
       (.I0(dout__1_n_100),
        .I1(dout_n_100),
        .O(dout_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__5
       (.I0(dout__1_n_101),
        .I1(dout_n_101),
        .O(dout_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__5
       (.I0(dout__1_n_102),
        .I1(dout_n_102),
        .O(dout_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__5
       (.I0(dout__1_n_103),
        .I1(dout_n_103),
        .O(dout_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__5
       (.I0(dout__1_n_104),
        .I1(dout_n_104),
        .O(dout_carry_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__5
       (.I0(dout__1_n_105),
        .I1(dout_n_105),
        .O(dout_carry_i_7__5_n_0));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_mul_32s_32s_32_1_1_20
   (CEB1,
    E,
    D,
    PCOUT,
    \mul_ln35_8_reg_645_reg[16]__0 ,
    S,
    CEA2,
    ap_clk,
    q00,
    pstrmInput_TDATA_int_regslice,
    P,
    Q,
    \an32ShiftReg_1_reg[0] ,
    pstrmInput_TVALID_int_regslice,
    \mul_ln35_8_reg_645_reg[0]__0 ,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg,
    ap_enable_reg_pp0_iter0_reg,
    dout__3,
    pstrmOutput_TDATA__94_carry__2);
  output CEB1;
  output [0:0]E;
  output [16:0]D;
  output [47:0]PCOUT;
  output [14:0]\mul_ln35_8_reg_645_reg[16]__0 ;
  output [0:0]S;
  input CEA2;
  input ap_clk;
  input [31:0]q00;
  input [16:0]pstrmInput_TDATA_int_regslice;
  input [14:0]P;
  input [0:0]Q;
  input [2:0]\an32ShiftReg_1_reg[0] ;
  input pstrmInput_TVALID_int_regslice;
  input \mul_ln35_8_reg_645_reg[0]__0 ;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  input ap_enable_reg_pp0_iter0_reg;
  input [1:0]dout__3;
  input [1:0]pstrmOutput_TDATA__94_carry__2;

  wire CEA2;
  wire CEB1;
  wire [16:0]D;
  wire [0:0]E;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [0:0]S;
  wire [2:0]\an32ShiftReg_1_reg[0] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire [1:0]dout__3;
  wire dout_carry__0_i_1__3_n_0;
  wire dout_carry__0_i_2__3_n_0;
  wire dout_carry__0_i_3__3_n_0;
  wire dout_carry__0_i_4__3_n_0;
  wire dout_carry__0_i_5__3_n_0;
  wire dout_carry__0_i_6__3_n_0;
  wire dout_carry__0_i_7__3_n_0;
  wire dout_carry__0_i_8__3_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__3_n_0;
  wire dout_carry_i_2__3_n_0;
  wire dout_carry_i_3__3_n_0;
  wire dout_carry_i_4__3_n_0;
  wire dout_carry_i_5__3_n_0;
  wire dout_carry_i_6__3_n_0;
  wire dout_carry_i_7__3_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire \mul_ln35_8_reg_645_reg[0]__0 ;
  wire [14:0]\mul_ln35_8_reg_645_reg[16]__0 ;
  wire [31:31]mul_ln35_8_reg_645_reg__1;
  wire [16:0]pstrmInput_TDATA_int_regslice;
  wire pstrmInput_TVALID_int_regslice;
  wire [1:0]pstrmOutput_TDATA__94_carry__2;
  wire [31:0]q00;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \an32ShiftReg_0[31]_i_1 
       (.I0(\an32ShiftReg_1_reg[0] [2]),
        .I1(pstrmInput_TVALID_int_regslice),
        .I2(\mul_ln35_8_reg_645_reg[0]__0 ),
        .I3(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .I4(\an32ShiftReg_1_reg[0] [0]),
        .I5(ap_enable_reg_pp0_iter0_reg),
        .O(CEB1));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pstrmInput_TDATA_int_regslice}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEB1),
        .CEA2(CEB1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,pstrmInput_TDATA_int_regslice}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(CEB1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(\mul_ln35_8_reg_645_reg[16]__0 [7:0]),
        .S({dout_carry_i_1__3_n_0,dout_carry_i_2__3_n_0,dout_carry_i_3__3_n_0,dout_carry_i_4__3_n_0,dout_carry_i_5__3_n_0,dout_carry_i_6__3_n_0,dout_carry_i_7__3_n_0,Q}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O({mul_ln35_8_reg_645_reg__1,\mul_ln35_8_reg_645_reg[16]__0 [14:8]}),
        .S({dout_carry__0_i_1__3_n_0,dout_carry__0_i_2__3_n_0,dout_carry__0_i_3__3_n_0,dout_carry__0_i_4__3_n_0,dout_carry__0_i_5__3_n_0,dout_carry__0_i_6__3_n_0,dout_carry__0_i_7__3_n_0,dout_carry__0_i_8__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__3
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__3
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__3
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__3
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__3
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__3
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__3
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__3
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__3
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__3
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__3
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__3
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__3
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__3
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__3
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    dout_i_1__1
       (.I0(\an32ShiftReg_1_reg[0] [1]),
        .I1(\mul_ln35_8_reg_645_reg[0]__0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    pstrmOutput_TDATA__94_carry__2_i_8
       (.I0(\mul_ln35_8_reg_645_reg[16]__0 [14]),
        .I1(dout__3[0]),
        .I2(pstrmOutput_TDATA__94_carry__2[0]),
        .I3(dout__3[1]),
        .I4(pstrmOutput_TDATA__94_carry__2[1]),
        .I5(mul_ln35_8_reg_645_reg__1),
        .O(S));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    pstrmInput_TVALID_int_regslice,
    pstrmInput_TDATA_int_regslice,
    ap_rst_n_inv,
    ap_clk,
    pstrmInput_TVALID,
    pstrmInput_TREADY_int_regslice,
    ap_rst_n,
    pstrmInput_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output pstrmInput_TVALID_int_regslice;
  output [31:0]pstrmInput_TDATA_int_regslice;
  input ap_rst_n_inv;
  input ap_clk;
  input pstrmInput_TVALID;
  input pstrmInput_TREADY_int_regslice;
  input ap_rst_n;
  input [31:0]pstrmInput_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [31:0]B_V_data_1_payload_A;
  wire [31:0]B_V_data_1_payload_B;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__5_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__6_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__12_n_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [31:0]pstrmInput_TDATA;
  wire [31:0]pstrmInput_TDATA_int_regslice;
  wire pstrmInput_TREADY_int_regslice;
  wire pstrmInput_TVALID;
  wire pstrmInput_TVALID_int_regslice;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[31]_i_1 
       (.I0(pstrmInput_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[10]),
        .Q(B_V_data_1_payload_A[10]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[11]),
        .Q(B_V_data_1_payload_A[11]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[12]),
        .Q(B_V_data_1_payload_A[12]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[13]),
        .Q(B_V_data_1_payload_A[13]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[14]),
        .Q(B_V_data_1_payload_A[14]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[15]),
        .Q(B_V_data_1_payload_A[15]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[16]),
        .Q(B_V_data_1_payload_A[16]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[17]),
        .Q(B_V_data_1_payload_A[17]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[18]),
        .Q(B_V_data_1_payload_A[18]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[19]),
        .Q(B_V_data_1_payload_A[19]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[20]),
        .Q(B_V_data_1_payload_A[20]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[21]),
        .Q(B_V_data_1_payload_A[21]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[22]),
        .Q(B_V_data_1_payload_A[22]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[23]),
        .Q(B_V_data_1_payload_A[23]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[24]),
        .Q(B_V_data_1_payload_A[24]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[25]),
        .Q(B_V_data_1_payload_A[25]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[26]),
        .Q(B_V_data_1_payload_A[26]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[27]),
        .Q(B_V_data_1_payload_A[27]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[28]),
        .Q(B_V_data_1_payload_A[28]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[29]),
        .Q(B_V_data_1_payload_A[29]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[30]),
        .Q(B_V_data_1_payload_A[30]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[31]),
        .Q(B_V_data_1_payload_A[31]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[4]),
        .Q(B_V_data_1_payload_A[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[5]),
        .Q(B_V_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[6]),
        .Q(B_V_data_1_payload_A[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[7]),
        .Q(B_V_data_1_payload_A[7]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[8]),
        .Q(B_V_data_1_payload_A[8]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TDATA[9]),
        .Q(B_V_data_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[31]_i_1 
       (.I0(pstrmInput_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[10]),
        .Q(B_V_data_1_payload_B[10]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[11]),
        .Q(B_V_data_1_payload_B[11]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[12]),
        .Q(B_V_data_1_payload_B[12]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[13]),
        .Q(B_V_data_1_payload_B[13]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[14]),
        .Q(B_V_data_1_payload_B[14]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[15]),
        .Q(B_V_data_1_payload_B[15]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[16]),
        .Q(B_V_data_1_payload_B[16]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[17]),
        .Q(B_V_data_1_payload_B[17]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[18]),
        .Q(B_V_data_1_payload_B[18]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[19]),
        .Q(B_V_data_1_payload_B[19]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[20]),
        .Q(B_V_data_1_payload_B[20]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[21]),
        .Q(B_V_data_1_payload_B[21]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[22]),
        .Q(B_V_data_1_payload_B[22]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[23]),
        .Q(B_V_data_1_payload_B[23]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[24]),
        .Q(B_V_data_1_payload_B[24]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[25]),
        .Q(B_V_data_1_payload_B[25]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[26]),
        .Q(B_V_data_1_payload_B[26]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[27]),
        .Q(B_V_data_1_payload_B[27]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[28]),
        .Q(B_V_data_1_payload_B[28]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[29]),
        .Q(B_V_data_1_payload_B[29]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[30]),
        .Q(B_V_data_1_payload_B[30]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[31]),
        .Q(B_V_data_1_payload_B[31]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[4]),
        .Q(B_V_data_1_payload_B[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[5]),
        .Q(B_V_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[6]),
        .Q(B_V_data_1_payload_B[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[7]),
        .Q(B_V_data_1_payload_B[7]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[8]),
        .Q(B_V_data_1_payload_B[8]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TDATA[9]),
        .Q(B_V_data_1_payload_B[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__5
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(pstrmInput_TVALID_int_regslice),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__5_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__5_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__6
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__6_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__6_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \B_V_data_1_state[0]_i_1__12 
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(pstrmInput_TVALID_int_regslice),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(pstrmInput_TVALID),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(pstrmInput_TVALID_int_regslice),
        .I3(pstrmInput_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__12_n_0 ),
        .Q(pstrmInput_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[0]_i_1 
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_payload_A[0]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[10]_i_1 
       (.I0(B_V_data_1_payload_B[10]),
        .I1(B_V_data_1_payload_A[10]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[11]_i_1 
       (.I0(B_V_data_1_payload_B[11]),
        .I1(B_V_data_1_payload_A[11]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[11]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[12]_i_1 
       (.I0(B_V_data_1_payload_B[12]),
        .I1(B_V_data_1_payload_A[12]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[13]_i_1 
       (.I0(B_V_data_1_payload_B[13]),
        .I1(B_V_data_1_payload_A[13]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[13]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[14]_i_1 
       (.I0(B_V_data_1_payload_B[14]),
        .I1(B_V_data_1_payload_A[14]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[14]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[15]_i_1 
       (.I0(B_V_data_1_payload_B[15]),
        .I1(B_V_data_1_payload_A[15]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[15]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[16]_i_1 
       (.I0(B_V_data_1_payload_B[16]),
        .I1(B_V_data_1_payload_A[16]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[16]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[17]_i_1 
       (.I0(B_V_data_1_payload_B[17]),
        .I1(B_V_data_1_payload_A[17]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[17]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[18]_i_1 
       (.I0(B_V_data_1_payload_B[18]),
        .I1(B_V_data_1_payload_A[18]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[18]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[19]_i_1 
       (.I0(B_V_data_1_payload_B[19]),
        .I1(B_V_data_1_payload_A[19]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[19]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[1]_i_1 
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_payload_A[1]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[20]_i_1 
       (.I0(B_V_data_1_payload_B[20]),
        .I1(B_V_data_1_payload_A[20]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[20]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[21]_i_1 
       (.I0(B_V_data_1_payload_B[21]),
        .I1(B_V_data_1_payload_A[21]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[21]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[22]_i_1 
       (.I0(B_V_data_1_payload_B[22]),
        .I1(B_V_data_1_payload_A[22]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[22]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[23]_i_1 
       (.I0(B_V_data_1_payload_B[23]),
        .I1(B_V_data_1_payload_A[23]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[23]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[24]_i_1 
       (.I0(B_V_data_1_payload_B[24]),
        .I1(B_V_data_1_payload_A[24]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[24]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[25]_i_1 
       (.I0(B_V_data_1_payload_B[25]),
        .I1(B_V_data_1_payload_A[25]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[25]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[26]_i_1 
       (.I0(B_V_data_1_payload_B[26]),
        .I1(B_V_data_1_payload_A[26]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[26]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[27]_i_1 
       (.I0(B_V_data_1_payload_B[27]),
        .I1(B_V_data_1_payload_A[27]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[27]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[28]_i_1 
       (.I0(B_V_data_1_payload_B[28]),
        .I1(B_V_data_1_payload_A[28]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[28]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[29]_i_1 
       (.I0(B_V_data_1_payload_B[29]),
        .I1(B_V_data_1_payload_A[29]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[29]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[2]_i_1 
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_payload_A[2]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[30]_i_1 
       (.I0(B_V_data_1_payload_B[30]),
        .I1(B_V_data_1_payload_A[30]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[30]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[31]_i_2 
       (.I0(B_V_data_1_payload_B[31]),
        .I1(B_V_data_1_payload_A[31]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[31]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[3]_i_1 
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_payload_A[3]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[4]_i_1 
       (.I0(B_V_data_1_payload_B[4]),
        .I1(B_V_data_1_payload_A[4]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[4]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[5]_i_1 
       (.I0(B_V_data_1_payload_B[5]),
        .I1(B_V_data_1_payload_A[5]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[6]_i_1 
       (.I0(B_V_data_1_payload_B[6]),
        .I1(B_V_data_1_payload_A[6]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[7]_i_1 
       (.I0(B_V_data_1_payload_B[7]),
        .I1(B_V_data_1_payload_A[7]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[8]_i_1 
       (.I0(B_V_data_1_payload_B[8]),
        .I1(B_V_data_1_payload_A[8]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \an32ShiftReg_0[9]_i_1 
       (.I0(B_V_data_1_payload_B[9]),
        .I1(B_V_data_1_payload_A[9]),
        .I2(B_V_data_1_sel),
        .O(pstrmInput_TDATA_int_regslice[9]));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both_4
   (pstrmOutput_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    B_V_data_1_sel_wr,
    D,
    ap_done,
    pstrmOutput_TDATA,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel_wr_reg_0,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID,
    pstrmOutput_TREADY,
    ap_rst_n,
    Q,
    ap_start,
    \B_V_data_1_payload_A_reg[31]_0 );
  output pstrmOutput_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output B_V_data_1_sel_wr;
  output [0:0]D;
  output ap_done;
  output [31:0]pstrmOutput_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel_wr_reg_0;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  input pstrmOutput_TREADY;
  input ap_rst_n;
  input [1:0]Q;
  input ap_start;
  input [31:0]\B_V_data_1_payload_A_reg[31]_0 ;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [31:0]B_V_data_1_payload_A;
  wire [31:0]\B_V_data_1_payload_A_reg[31]_0 ;
  wire [31:0]B_V_data_1_payload_B;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__6_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__5_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire [0:0]D;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_done;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  wire [31:0]pstrmOutput_TDATA;
  wire pstrmOutput_TREADY;
  wire pstrmOutput_TREADY_int_regslice;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[31]_i_1__0 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(pstrmOutput_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [10]),
        .Q(B_V_data_1_payload_A[10]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [11]),
        .Q(B_V_data_1_payload_A[11]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [12]),
        .Q(B_V_data_1_payload_A[12]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [13]),
        .Q(B_V_data_1_payload_A[13]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [14]),
        .Q(B_V_data_1_payload_A[14]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [15]),
        .Q(B_V_data_1_payload_A[15]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [16]),
        .Q(B_V_data_1_payload_A[16]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [17]),
        .Q(B_V_data_1_payload_A[17]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [18]),
        .Q(B_V_data_1_payload_A[18]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [19]),
        .Q(B_V_data_1_payload_A[19]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [20]),
        .Q(B_V_data_1_payload_A[20]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [21]),
        .Q(B_V_data_1_payload_A[21]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [22]),
        .Q(B_V_data_1_payload_A[22]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [23]),
        .Q(B_V_data_1_payload_A[23]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [24]),
        .Q(B_V_data_1_payload_A[24]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [25]),
        .Q(B_V_data_1_payload_A[25]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [26]),
        .Q(B_V_data_1_payload_A[26]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [27]),
        .Q(B_V_data_1_payload_A[27]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [28]),
        .Q(B_V_data_1_payload_A[28]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [29]),
        .Q(B_V_data_1_payload_A[29]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [30]),
        .Q(B_V_data_1_payload_A[30]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [31]),
        .Q(B_V_data_1_payload_A[31]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [4]),
        .Q(B_V_data_1_payload_A[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [5]),
        .Q(B_V_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [6]),
        .Q(B_V_data_1_payload_A[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [7]),
        .Q(B_V_data_1_payload_A[7]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [8]),
        .Q(B_V_data_1_payload_A[8]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [9]),
        .Q(B_V_data_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[31]_i_1__0 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(pstrmOutput_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [10]),
        .Q(B_V_data_1_payload_B[10]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [11]),
        .Q(B_V_data_1_payload_B[11]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [12]),
        .Q(B_V_data_1_payload_B[12]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [13]),
        .Q(B_V_data_1_payload_B[13]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [14]),
        .Q(B_V_data_1_payload_B[14]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [15]),
        .Q(B_V_data_1_payload_B[15]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [16]),
        .Q(B_V_data_1_payload_B[16]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [17]),
        .Q(B_V_data_1_payload_B[17]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [18]),
        .Q(B_V_data_1_payload_B[18]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [19]),
        .Q(B_V_data_1_payload_B[19]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [20]),
        .Q(B_V_data_1_payload_B[20]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [21]),
        .Q(B_V_data_1_payload_B[21]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [22]),
        .Q(B_V_data_1_payload_B[22]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [23]),
        .Q(B_V_data_1_payload_B[23]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [24]),
        .Q(B_V_data_1_payload_B[24]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [25]),
        .Q(B_V_data_1_payload_B[25]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [26]),
        .Q(B_V_data_1_payload_B[26]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [27]),
        .Q(B_V_data_1_payload_B[27]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [28]),
        .Q(B_V_data_1_payload_B[28]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [29]),
        .Q(B_V_data_1_payload_B[29]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [30]),
        .Q(B_V_data_1_payload_B[30]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [31]),
        .Q(B_V_data_1_payload_B[31]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [4]),
        .Q(B_V_data_1_payload_B[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [5]),
        .Q(B_V_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [6]),
        .Q(B_V_data_1_payload_B[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [7]),
        .Q(B_V_data_1_payload_B[7]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [8]),
        .Q(B_V_data_1_payload_B[8]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [9]),
        .Q(B_V_data_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__6
       (.I0(pstrmOutput_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__6_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__6_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_reg_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \B_V_data_1_state[0]_i_1__5 
       (.I0(pstrmOutput_TREADY),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I2(pstrmOutput_TREADY_int_regslice),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__5 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(pstrmOutput_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(pstrmOutput_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__5_n_0 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(pstrmOutput_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h8F00FFFF8F008F00)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(pstrmOutput_TREADY_int_regslice),
        .I1(pstrmOutput_TREADY),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(Q[1]),
        .I4(ap_start),
        .I5(Q[0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h8F00)) 
    int_ap_start_i_2
       (.I0(pstrmOutput_TREADY_int_regslice),
        .I1(pstrmOutput_TREADY),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(Q[1]),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[0]_INST_0 
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_payload_A[0]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[10]_INST_0 
       (.I0(B_V_data_1_payload_B[10]),
        .I1(B_V_data_1_payload_A[10]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[11]_INST_0 
       (.I0(B_V_data_1_payload_B[11]),
        .I1(B_V_data_1_payload_A[11]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[12]_INST_0 
       (.I0(B_V_data_1_payload_B[12]),
        .I1(B_V_data_1_payload_A[12]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[13]_INST_0 
       (.I0(B_V_data_1_payload_B[13]),
        .I1(B_V_data_1_payload_A[13]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[14]_INST_0 
       (.I0(B_V_data_1_payload_B[14]),
        .I1(B_V_data_1_payload_A[14]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[15]_INST_0 
       (.I0(B_V_data_1_payload_B[15]),
        .I1(B_V_data_1_payload_A[15]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[16]_INST_0 
       (.I0(B_V_data_1_payload_B[16]),
        .I1(B_V_data_1_payload_A[16]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[17]_INST_0 
       (.I0(B_V_data_1_payload_B[17]),
        .I1(B_V_data_1_payload_A[17]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[18]_INST_0 
       (.I0(B_V_data_1_payload_B[18]),
        .I1(B_V_data_1_payload_A[18]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[19]_INST_0 
       (.I0(B_V_data_1_payload_B[19]),
        .I1(B_V_data_1_payload_A[19]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[1]_INST_0 
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_payload_A[1]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[20]_INST_0 
       (.I0(B_V_data_1_payload_B[20]),
        .I1(B_V_data_1_payload_A[20]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[21]_INST_0 
       (.I0(B_V_data_1_payload_B[21]),
        .I1(B_V_data_1_payload_A[21]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[22]_INST_0 
       (.I0(B_V_data_1_payload_B[22]),
        .I1(B_V_data_1_payload_A[22]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[23]_INST_0 
       (.I0(B_V_data_1_payload_B[23]),
        .I1(B_V_data_1_payload_A[23]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[24]_INST_0 
       (.I0(B_V_data_1_payload_B[24]),
        .I1(B_V_data_1_payload_A[24]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[25]_INST_0 
       (.I0(B_V_data_1_payload_B[25]),
        .I1(B_V_data_1_payload_A[25]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[26]_INST_0 
       (.I0(B_V_data_1_payload_B[26]),
        .I1(B_V_data_1_payload_A[26]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[27]_INST_0 
       (.I0(B_V_data_1_payload_B[27]),
        .I1(B_V_data_1_payload_A[27]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[28]_INST_0 
       (.I0(B_V_data_1_payload_B[28]),
        .I1(B_V_data_1_payload_A[28]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[29]_INST_0 
       (.I0(B_V_data_1_payload_B[29]),
        .I1(B_V_data_1_payload_A[29]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[2]_INST_0 
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_payload_A[2]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[30]_INST_0 
       (.I0(B_V_data_1_payload_B[30]),
        .I1(B_V_data_1_payload_A[30]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[31]_INST_0 
       (.I0(B_V_data_1_payload_B[31]),
        .I1(B_V_data_1_payload_A[31]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[3]_INST_0 
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_payload_A[3]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[4]_INST_0 
       (.I0(B_V_data_1_payload_B[4]),
        .I1(B_V_data_1_payload_A[4]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[5]_INST_0 
       (.I0(B_V_data_1_payload_B[5]),
        .I1(B_V_data_1_payload_A[5]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[6]_INST_0 
       (.I0(B_V_data_1_payload_B[6]),
        .I1(B_V_data_1_payload_A[6]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[7]_INST_0 
       (.I0(B_V_data_1_payload_B[7]),
        .I1(B_V_data_1_payload_A[7]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[8]_INST_0 
       (.I0(B_V_data_1_payload_B[8]),
        .I1(B_V_data_1_payload_A[8]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pstrmOutput_TDATA[9]_INST_0 
       (.I0(B_V_data_1_payload_B[9]),
        .I1(B_V_data_1_payload_A[9]),
        .I2(B_V_data_1_sel),
        .O(pstrmOutput_TDATA[9]));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized0
   (\B_V_data_1_payload_B_reg[3]_0 ,
    ap_rst_n_inv,
    ap_clk,
    pstrmInput_TVALID,
    pstrmInput_TREADY_int_regslice,
    ap_rst_n,
    pstrmInput_TKEEP);
  output [3:0]\B_V_data_1_payload_B_reg[3]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input pstrmInput_TVALID;
  input pstrmInput_TREADY_int_regslice;
  input ap_rst_n;
  input [3:0]pstrmInput_TKEEP;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [3:0]B_V_data_1_payload_A;
  wire [3:0]B_V_data_1_payload_B;
  wire [3:0]\B_V_data_1_payload_B_reg[3]_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__4_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__7_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__11_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [3:0]pstrmInput_TKEEP;
  wire pstrmInput_TREADY_int_regslice;
  wire pstrmInput_TVALID;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[3]_i_1 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TKEEP[0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TKEEP[1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TKEEP[2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TKEEP[3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[3]_i_1 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TKEEP[0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TKEEP[1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TKEEP[2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TKEEP[3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__4
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__4_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__4_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__7
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__7_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__7_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \B_V_data_1_state[0]_i_1__11 
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(pstrmInput_TVALID),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__12 
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmInput_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__11_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_keep_V_reg_660[0]_i_1 
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[0]),
        .O(\B_V_data_1_payload_B_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_keep_V_reg_660[1]_i_1 
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[1]),
        .O(\B_V_data_1_payload_B_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_keep_V_reg_660[2]_i_1 
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[2]),
        .O(\B_V_data_1_payload_B_reg[3]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_keep_V_reg_660[3]_i_1 
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[3]),
        .O(\B_V_data_1_payload_B_reg[3]_0 [3]));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized0_2
   (\B_V_data_1_payload_B_reg[3]_0 ,
    ap_rst_n_inv,
    ap_clk,
    pstrmInput_TVALID,
    pstrmInput_TREADY_int_regslice,
    ap_rst_n,
    pstrmInput_TSTRB);
  output [3:0]\B_V_data_1_payload_B_reg[3]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input pstrmInput_TVALID;
  input pstrmInput_TREADY_int_regslice;
  input ap_rst_n;
  input [3:0]pstrmInput_TSTRB;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [3:0]B_V_data_1_payload_A;
  wire [3:0]B_V_data_1_payload_B;
  wire [3:0]\B_V_data_1_payload_B_reg[3]_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__3_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__8_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__10_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire pstrmInput_TREADY_int_regslice;
  wire [3:0]pstrmInput_TSTRB;
  wire pstrmInput_TVALID;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[3]_i_1__0 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TSTRB[0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TSTRB[1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TSTRB[2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(pstrmInput_TSTRB[3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[3]_i_1__0 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TSTRB[0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TSTRB[1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TSTRB[2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(pstrmInput_TSTRB[3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__3
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__3_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__3_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__8
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__8_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__8_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \B_V_data_1_state[0]_i_1__10 
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(pstrmInput_TVALID),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__11 
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmInput_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__10_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_strb_V_reg_665[0]_i_1 
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[0]),
        .O(\B_V_data_1_payload_B_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_strb_V_reg_665[1]_i_1 
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[1]),
        .O(\B_V_data_1_payload_B_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_strb_V_reg_665[2]_i_1 
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[2]),
        .O(\B_V_data_1_payload_B_reg[3]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_strb_V_reg_665[3]_i_1 
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[3]),
        .O(\B_V_data_1_payload_B_reg[3]_0 [3]));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized0_7
   (pstrmOutput_TKEEP,
    ap_rst_n_inv,
    ap_clk,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID,
    pstrmOutput_TREADY,
    ap_rst_n,
    D);
  output [3:0]pstrmOutput_TKEEP;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  input pstrmOutput_TREADY;
  input ap_rst_n;
  input [3:0]D;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [3:0]B_V_data_1_payload_A;
  wire [3:0]B_V_data_1_payload_B;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__7_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__4_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__4_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire [3:0]D;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  wire [3:0]pstrmOutput_TKEEP;
  wire pstrmOutput_TREADY;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[3]_i_1__1 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(D[0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(D[1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(D[2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(D[3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[3]_i_1__1 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(D[0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(D[1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(D[2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(D[3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__7
       (.I0(pstrmOutput_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__7_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__7_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__4
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__4_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__4_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \B_V_data_1_state[0]_i_1__4 
       (.I0(pstrmOutput_TREADY),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(\B_V_data_1_state_reg_n_0_[0] ),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__4 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmOutput_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__4_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TKEEP[0]_INST_0 
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[0]),
        .O(pstrmOutput_TKEEP[0]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TKEEP[1]_INST_0 
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[1]),
        .O(pstrmOutput_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TKEEP[2]_INST_0 
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[2]),
        .O(pstrmOutput_TKEEP[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TKEEP[3]_INST_0 
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[3]),
        .O(pstrmOutput_TKEEP[3]));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized0_9
   (pstrmOutput_TSTRB,
    ap_rst_n_inv,
    ap_clk,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID,
    pstrmOutput_TREADY,
    ap_rst_n,
    D);
  output [3:0]pstrmOutput_TSTRB;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  input pstrmOutput_TREADY;
  input ap_rst_n;
  input [3:0]D;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [3:0]B_V_data_1_payload_A;
  wire [3:0]B_V_data_1_payload_B;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__8_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__3_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__3_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire [3:0]D;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  wire pstrmOutput_TREADY;
  wire [3:0]pstrmOutput_TSTRB;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[3]_i_1__2 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(D[0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(D[1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(D[2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(D[3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[3]_i_1__2 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(D[0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(D[1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(D[2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(D[3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__8
       (.I0(pstrmOutput_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__8_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__8_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__3
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__3_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__3_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \B_V_data_1_state[0]_i_1__3 
       (.I0(pstrmOutput_TREADY),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(\B_V_data_1_state_reg_n_0_[0] ),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__3 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmOutput_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__3_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TSTRB[0]_INST_0 
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[0]),
        .O(pstrmOutput_TSTRB[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TSTRB[1]_INST_0 
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[1]),
        .O(pstrmOutput_TSTRB[1]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TSTRB[2]_INST_0 
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[2]),
        .O(pstrmOutput_TSTRB[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TSTRB[3]_INST_0 
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[3]),
        .O(pstrmOutput_TSTRB[3]));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1
   (pstrmInput_TDEST_int_regslice,
    ap_rst_n_inv,
    ap_clk,
    pstrmInput_TVALID,
    pstrmInput_TREADY_int_regslice,
    ap_rst_n,
    pstrmInput_TDEST);
  output pstrmInput_TDEST_int_regslice;
  input ap_rst_n_inv;
  input ap_clk;
  input pstrmInput_TVALID;
  input pstrmInput_TREADY_int_regslice;
  input ap_rst_n;
  input [0:0]pstrmInput_TDEST;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__2_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__2_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__12_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__6_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]pstrmInput_TDEST;
  wire pstrmInput_TDEST_int_regslice;
  wire pstrmInput_TREADY_int_regslice;
  wire pstrmInput_TVALID;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__2 
       (.I0(pstrmInput_TDEST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__2_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__2_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__2 
       (.I0(pstrmInput_TDEST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__2_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__2_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__12
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__12_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__12_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \B_V_data_1_state[0]_i_1__6 
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(pstrmInput_TVALID),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__7 
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmInput_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__6_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_reg_685[0]_i_1 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(pstrmInput_TDEST_int_regslice));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_0
   (pstrmInput_TID_int_regslice,
    ap_rst_n_inv,
    ap_clk,
    pstrmInput_TVALID,
    pstrmInput_TREADY_int_regslice,
    ap_rst_n,
    pstrmInput_TID);
  output pstrmInput_TID_int_regslice;
  input ap_rst_n_inv;
  input ap_clk;
  input pstrmInput_TVALID;
  input pstrmInput_TREADY_int_regslice;
  input ap_rst_n;
  input [0:0]pstrmInput_TID;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__1_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__1_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__0_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__11_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__7_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]pstrmInput_TID;
  wire pstrmInput_TID_int_regslice;
  wire pstrmInput_TREADY_int_regslice;
  wire pstrmInput_TVALID;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__1 
       (.I0(pstrmInput_TID),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__1_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__1_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__1 
       (.I0(pstrmInput_TID),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__1_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__1_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__0_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__11
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__11_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__11_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \B_V_data_1_state[0]_i_1__7 
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(pstrmInput_TVALID),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__8 
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmInput_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__7_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_reg_680[0]_i_1 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(pstrmInput_TID_int_regslice));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_1
   (E,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready,
    pstrmInput_TLAST_int_regslice,
    \ap_CS_fsm_reg[1] ,
    ap_rst_n_inv,
    ap_clk,
    Q,
    \n32XferCnt_fu_114_reg[30] ,
    pstrmInput_TVALID_int_regslice,
    pstrmInput_TVALID,
    pstrmInput_TREADY_int_regslice,
    ap_rst_n,
    icmp_ln22_reg_556,
    ap_ready_int,
    pstrmInput_TLAST,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg_reg,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg);
  output [0:0]E;
  output grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready;
  output pstrmInput_TLAST_int_regslice;
  output \ap_CS_fsm_reg[1] ;
  input ap_rst_n_inv;
  input ap_clk;
  input [0:0]Q;
  input \n32XferCnt_fu_114_reg[30] ;
  input pstrmInput_TVALID_int_regslice;
  input pstrmInput_TVALID;
  input pstrmInput_TREADY_int_regslice;
  input ap_rst_n;
  input icmp_ln22_reg_556;
  input ap_ready_int;
  input [0:0]pstrmInput_TLAST;
  input [0:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg_reg;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__0_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__0_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__10_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__8_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire [0:0]E;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg;
  wire [0:0]grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg_reg;
  wire icmp_ln22_reg_556;
  wire \n32XferCnt_fu_114_reg[30] ;
  wire [0:0]pstrmInput_TLAST;
  wire pstrmInput_TLAST_int_regslice;
  wire pstrmInput_TREADY_int_regslice;
  wire pstrmInput_TVALID;
  wire pstrmInput_TVALID_int_regslice;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__0 
       (.I0(pstrmInput_TLAST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__0_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__0_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__0 
       (.I0(pstrmInput_TLAST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__0_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__0_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__1
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__1_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__10
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__10_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__10_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \B_V_data_1_state[0]_i_1__8 
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(pstrmInput_TVALID),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__9 
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmInput_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__8_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hDFD50000)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(icmp_ln22_reg_556),
        .I1(B_V_data_1_payload_B),
        .I2(B_V_data_1_sel),
        .I3(B_V_data_1_payload_A),
        .I4(ap_ready_int),
        .O(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready));
  LUT3 #(
    .INIT(8'hBA)) 
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg_i_1
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg_reg),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_ready),
        .I2(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_ap_start_reg),
        .O(\ap_CS_fsm_reg[1] ));
  LUT6 #(
    .INIT(64'h0000470000000000)) 
    \n32XferCnt_fu_114[30]_i_2 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .I3(Q),
        .I4(\n32XferCnt_fu_114_reg[30] ),
        .I5(pstrmInput_TVALID_int_regslice),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_last_V_reg_675[0]_i_2 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(pstrmInput_TLAST_int_regslice));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_10
   (pstrmOutput_TUSER,
    ap_rst_n_inv,
    ap_clk,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID,
    pstrmOutput_TREADY,
    ap_rst_n,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER);
  output [0:0]pstrmOutput_TUSER;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  input pstrmOutput_TREADY;
  input ap_rst_n;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__3_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__3_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__9_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__2_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__2_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  wire pstrmOutput_TREADY;
  wire [0:0]pstrmOutput_TUSER;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__3 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__3_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__3_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__3 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TUSER),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__3_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__3_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__9
       (.I0(pstrmOutput_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__9_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__9_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__2
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__2_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__2_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \B_V_data_1_state[0]_i_1__2 
       (.I0(pstrmOutput_TREADY),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(\B_V_data_1_state_reg_n_0_[0] ),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__2 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmOutput_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__2_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TUSER[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(pstrmOutput_TUSER));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_3
   (pstrmInput_TUSER_int_regslice,
    ap_rst_n_inv,
    ap_clk,
    pstrmInput_TVALID,
    pstrmInput_TREADY_int_regslice,
    ap_rst_n,
    pstrmInput_TUSER);
  output pstrmInput_TUSER_int_regslice;
  input ap_rst_n_inv;
  input ap_clk;
  input pstrmInput_TVALID;
  input pstrmInput_TREADY_int_regslice;
  input ap_rst_n;
  input [0:0]pstrmInput_TUSER;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__2_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__9_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__9_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire pstrmInput_TREADY_int_regslice;
  wire [0:0]pstrmInput_TUSER;
  wire pstrmInput_TUSER_int_regslice;
  wire pstrmInput_TVALID;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(pstrmInput_TUSER),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(pstrmInput_TUSER),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__2
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__2_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__2_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__9
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__9_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__9_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \B_V_data_1_state[0]_i_1__9 
       (.I0(pstrmInput_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(pstrmInput_TVALID),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__10 
       (.I0(pstrmInput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmInput_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__9_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_user_V_reg_670[0]_i_1 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(pstrmInput_TUSER_int_regslice));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_5
   (pstrmOutput_TDEST,
    ap_rst_n_inv,
    ap_clk,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID,
    pstrmOutput_TREADY,
    ap_rst_n,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST);
  output [0:0]pstrmOutput_TDEST;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  input pstrmOutput_TREADY;
  input ap_rst_n;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__6_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__6_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__12_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  wire [0:0]pstrmOutput_TDEST;
  wire pstrmOutput_TREADY;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__6 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__6_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__6_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__6 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TDEST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__6_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__6_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__12
       (.I0(pstrmOutput_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__12_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__12_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(pstrmOutput_TREADY),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(\B_V_data_1_state_reg_n_0_[0] ),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmOutput_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TDEST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(pstrmOutput_TDEST));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_6
   (pstrmOutput_TID,
    ap_rst_n_inv,
    ap_clk,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID,
    pstrmOutput_TREADY,
    ap_rst_n,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID);
  output [0:0]pstrmOutput_TID;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  input pstrmOutput_TREADY;
  input ap_rst_n;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__5_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__5_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__11_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  wire [0:0]pstrmOutput_TID;
  wire pstrmOutput_TREADY;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__5 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__5_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__5_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__5 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TID),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__5_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__5_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__11
       (.I0(pstrmOutput_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__11_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__11_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(pstrmOutput_TREADY),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(\B_V_data_1_state_reg_n_0_[0] ),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmOutput_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TID[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(pstrmOutput_TID));
endmodule

(* ORIG_REF_NAME = "fir_n11_strm_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_n11_strm_regslice_both__parameterized1_8
   (pstrmOutput_TLAST,
    ap_rst_n_inv,
    ap_clk,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID,
    pstrmOutput_TREADY,
    ap_rst_n,
    grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST);
  output [0:0]pstrmOutput_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  input pstrmOutput_TREADY;
  input ap_rst_n;
  input grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__4_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__4_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__10_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__1_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__1_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST;
  wire grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID;
  wire [0:0]pstrmOutput_TLAST;
  wire pstrmOutput_TREADY;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__4 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__4_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__4_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__4 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TLAST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__4_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__4_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__10
       (.I0(pstrmOutput_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__10_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__10_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__1
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__1_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(pstrmOutput_TREADY),
        .I1(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(\B_V_data_1_state_reg_n_0_[0] ),
        .I4(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(grp_fir_n11_strm_Pipeline_XFER_LOOP_fu_112_pstrmOutput_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(pstrmOutput_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pstrmOutput_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(pstrmOutput_TLAST));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
