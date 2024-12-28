#####################################################

#  Created by Design Compiler write_sdc on Fri Sep 15 16:53:03 2000

#####################################################
set sdc_version 1.1

create_clock -period 3 -waveform {0 1.5} [get_ports {clk}]
set_input_delay 1 -max -clock "clk" [get_ports {B[0]}]
set_input_delay 1 -max -clock "clk" [get_ports {B[1]}]
set_input_delay 1 -max -clock "clk" [get_ports {B[2]}]
set_input_delay 1 -max -clock "clk" [get_ports {A[0]}]
set_input_delay 1 -max -clock "clk" [get_ports {A[1]}]
set_input_delay 1 -max -clock "clk" [get_ports {A[2]}]
set_output_delay 1 -max -clock "clk" [get_ports {result[0]}]
set_output_delay 1 -max -clock "clk" [get_ports {result[1]}]
set_output_delay 1 -max -clock "clk" [get_ports {result[2]}]
set_output_delay 1 -max -clock "clk" [get_ports {result[3]}]
set_output_delay 1 -max -clock "clk" [get_ports {result[4]}]
set_output_delay 1 -max -clock "clk" [get_ports {result[5]}]
set_multicycle_path 2 -setup\
	-from     [list [get_cells {A_data_reg[0]}]\
		   [get_cells {A_data_reg[1]}]\
		   [get_cells {A_data_reg[2]}]] \
	-to       [list [get_cells {result_reg[0]}]\
		   [get_cells {result_reg[1]}]\
		   [get_cells {result_reg[2]}]\
		   [get_cells {result_reg[3]}]\
		   [get_cells {result_reg[4]}]\
		   [get_cells {result_reg[5]}]] 
set_operating_conditions "fast_25_1.20" -library "ssc_core_fast"
set_wire_load_model  -name "10KGATES" -library "ssc_core_fast"
