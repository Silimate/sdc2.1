###############################################################################
#
# Created by PrimeTime write_sdc on Mon Jan 13 18:40:29 2003
#
###############################################################################

set sdc_version 1.4

set_operating_conditions -analysis_type single 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name CLK -period 1.000000 -waveform { 0.000000 0.500000 } \
 [get_ports {CLK}]
set_propagated_clock [get_clocks {CLK}]
set_clock_latency -source -late  1.000000 [get_clocks {CLK}]
set_clock_latency -source -early  -1.000000 [get_clocks {CLK}]
###############################################################################
# External Delay Information
###############################################################################
set_input_delay  1.000000 -clock [get_clocks {CLK}] -max \
 -source_latency_included [get_ports {Data}]
set_input_delay  -1.000000 -clock [get_clocks {CLK}] -min \
 -source_latency_included [get_ports {Data}]
set_input_delay  1.000000 -clock [get_clocks {CLK}] -max \
 -source_latency_included [get_ports {Reset}]
set_input_delay  -1.000000 -clock [get_clocks {CLK}] -min \
 -source_latency_included [get_ports {Reset}]
set_input_delay  1.000000 -clock [get_clocks {CLK}] -max \
 -source_latency_included [get_ports {Set}]
set_input_delay  -1.000000 -clock [get_clocks {CLK}] -min \
 -source_latency_included [get_ports {Set}]
set_data_check -rise_from [get_pins {D3/S}] -rise_to [get_pins {D3/R}] -setup  \
 0.500000 
set_data_check -rise_from [get_pins {D3/R}] -rise_to [get_pins {D3/S}] -setup  \
 0.500000 
set_data_check -rise_from [get_pins {D1/R}] -rise_to [get_pins {D1/S}] -setup  \
 0.500000 
set_data_check -rise_from [get_pins {D1/S}] -rise_to [get_pins {D1/R}] -setup  \
 0.500000 
