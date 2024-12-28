#####################################################
#  Created manually to illustrate some sdc1.2 features
#####################################################
set sdc_version 1.2

set_output_delay 1 -clock "Clk1" [all_outputs -level_sensitive \
  -edge_triggered]

create_clock Clk1
create_clock -period 20 -waveform {0 10}

set_false_path -rise

set_false_path\
	-from    [get_clocks {Clk1}]\
	-to      [get_clocks {Clk2}]\
      -rise -fall

set_false_path\
	-from    [get_clocks {Clk1}]\
	-to      [get_clocks {Clk2}]\
      -setup -hold

set_output_delay 1 -max -clock "clk" -clock_fall [get_ports {result[5]}]

set_output_delay 1 -max -clock_fall [get_ports {result[5]}]

set_output_delay 1 -max -level_sensitive [get_ports {result[5]}]

set_wire_load_mode "top"
