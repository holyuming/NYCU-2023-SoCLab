
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set n32In1__n32In2__pn32ResOut_group [add_wave_group n32In1__n32In2__pn32ResOut(axi_slave) -into $cinputgroup]
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_BRESP -into $n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_BREADY -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_BVALID -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_RRESP -into $n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_RDATA -into $n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_RREADY -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_RVALID -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_ARREADY -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_ARVALID -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_ARADDR -into $n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_WSTRB -into $n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_WDATA -into $n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_WREADY -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_WVALID -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_AWREADY -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_AWVALID -into $n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/s_axi_control_AWADDR -into $n32In1__n32In2__pn32ResOut_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/ap_start -into $blocksiggroup
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/ap_done -into $blocksiggroup
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/ap_idle -into $blocksiggroup
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_multip_2num_top/AESL_inst_multip_2num/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_multip_2num_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_multip_2num_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_multip_2num_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_multip_2num_top/LENGTH_n32In1 -into $tb_portdepth_group -radix hex
add_wave /apatb_multip_2num_top/LENGTH_n32In2 -into $tb_portdepth_group -radix hex
add_wave /apatb_multip_2num_top/LENGTH_pn32ResOut -into $tb_portdepth_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_n32In1__n32In2__pn32ResOut_group [add_wave_group n32In1__n32In2__pn32ResOut(axi_slave) -into $tbcinputgroup]
add_wave /apatb_multip_2num_top/control_BRESP -into $tb_n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/control_BREADY -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_BVALID -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_RRESP -into $tb_n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/control_RDATA -into $tb_n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/control_RREADY -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_RVALID -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_ARREADY -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_ARVALID -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_ARADDR -into $tb_n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/control_WSTRB -into $tb_n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/control_WDATA -into $tb_n32In1__n32In2__pn32ResOut_group -radix hex
add_wave /apatb_multip_2num_top/control_WREADY -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_WVALID -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_AWREADY -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_AWVALID -into $tb_n32In1__n32In2__pn32ResOut_group -color #ffff00 -radix hex
add_wave /apatb_multip_2num_top/control_AWADDR -into $tb_n32In1__n32In2__pn32ResOut_group -radix hex
save_wave_config multip_2num.wcfg
run all
quit

