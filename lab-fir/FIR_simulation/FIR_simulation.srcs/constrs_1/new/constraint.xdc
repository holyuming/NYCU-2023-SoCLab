create_clock -period 20.0 -name axis_clk [get_ports axis_clk]

set_input_delay 5 -clock axis_clk [all_inputs]
set_output_delay 5 -clock axis_clk [all_outputs]

set_input_delay 0 -clock axis_clk axis_clk
set_input_delay 0 -clock axis_clk axis_rst_n