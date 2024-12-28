###############################################################################
#
# Created by PrimeTime write_sdc on Mon Dec  2 15:56:53 2002
#
###############################################################################

set sdc_version 1.3

set_operating_conditions -analysis_type single 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name CLK1 -period 10.000000 -waveform { 0.000000 5.000000 } \
 [get_ports {CLK1}]
set_propagated_clock [get_clocks {CLK1}]
set_clock_latency -source -late  1.000000 [get_clocks {CLK1}]
set_clock_latency -source -early  -1.000000 [get_clocks {CLK1}]
create_clock -name CLK2 -period 10.000000 -waveform { 0.000000 5.000000 } \
 [get_ports {CLK2}]
set_propagated_clock [get_clocks {CLK2}]
set_clock_latency -source -late  1.000000 [get_clocks {CLK2}]
set_clock_latency -source -early  -1.000000 [get_clocks {CLK2}]
###############################################################################
# External Delay Information
###############################################################################
set_input_delay  1.000000 -clock [get_clocks {CLK1}] -max -add_delay \
 [get_ports {Data}]
set_input_delay  -1.000000 -clock [get_clocks {CLK1}] -min -add_delay \
 [get_ports {Data}]
set_input_delay  1.000000 -clock [get_clocks {CLK1}] -max -add_delay \
 [get_ports {Reset}]
set_input_delay  -1.000000 -clock [get_clocks {CLK1}] -min -add_delay \
 [get_ports {Reset}]
set_output_delay  1.000000 -clock [get_clocks {CLK2}] -add_delay [get_ports \
 {DOUT}]
