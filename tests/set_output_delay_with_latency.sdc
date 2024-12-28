###############################################################################
#
# Created by PrimeTime write_sdc on Mon Jan 13 17:35:04 2003
#
###############################################################################

set sdc_version 1.4

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
create_clock -name CLK1_ADD -period 20.000000 -waveform { 0.000000 10.000000 } \
 -add [get_ports {CLK1}]
set_propagated_clock [get_clocks {CLK1_ADD}]
set_clock_latency -source -late  1.000000 [get_clocks {CLK1_ADD}]
set_clock_latency -source -early  -1.000000 [get_clocks {CLK1_ADD}]
create_clock -name CLK2_ADD -period 20.000000 -waveform { 0.000000 10.000000 } \
 -add [get_ports {CLK2}]
set_propagated_clock [get_clocks {CLK2_ADD}]
set_clock_latency -source -late  1.000000 [get_clocks {CLK2_ADD}]
set_clock_latency -source -early  -1.000000 [get_clocks {CLK2_ADD}]
###############################################################################
# External Delay Information
###############################################################################
set_input_delay  1.000000 -clock [get_clocks {CLK1}] -max \
 -source_latency_included [get_ports {Data}]
set_input_delay  -1.000000 -clock [get_clocks {CLK1}] -min \
 -source_latency_included [get_ports {Data}]
set_input_delay  1.000000 -clock [get_clocks {CLK1}] -max \
 -source_latency_included [get_ports {Reset}]
set_input_delay  -1.000000 -clock [get_clocks {CLK1}] -min \
 -source_latency_included [get_ports {Reset}]
set_output_delay  1.000000 -clock [get_clocks {CLK2}] [get_ports {DOUT}]
set_output_delay  1.000000 -clock [get_clocks {CLK1}] -max \
 -source_latency_included [get_ports {DOUT}]
set_output_delay  1.000000 -clock [get_clocks {CLK1}] -max \
 -network_latency_included [get_ports {DOUT}]

