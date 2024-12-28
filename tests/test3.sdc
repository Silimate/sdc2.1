###############################################################################
#
# Created by PrimeTime write_sdc on Fri Mar 30 16:53:46 2001
#
###############################################################################

#set sdc_version 1.2

set_operating_conditions -analysis_type single  -library [get_libs \
 {class.db:pt_lib}] WCCOM

###############################################################################
# Clock Related Information
###############################################################################
create_clock -name clk -period 4.000000 -waveform { 0.000000 2.000000 } \
 [get_ports {clk}]

###############################################################################
# External Delay Information
###############################################################################
set_input_delay  1.200000 -clock [get_clocks {clk}] -clock_fall -max \
 -add_delay [get_ports {s0}]
set_input_delay  0.000000 -clock [get_clocks {clk}] -clock_fall -min \
 -add_delay [get_ports {s0}]
set_input_delay  1.200000 -clock [get_clocks {clk}] -clock_fall -max \
 -add_delay [get_ports {s1}]
set_input_delay  0.000000 -clock [get_clocks {clk}] -clock_fall -min \
 -add_delay [get_ports {s1}]
set_input_delay  0.400000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{A[3]}}]
set_input_delay  0.400000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{A[2]}}]
set_input_delay  0.400000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{A[1]}}]
set_input_delay  0.400000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{A[0]}}]
set_input_delay  0.400000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{B[3]}}]
set_input_delay  0.400000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{B[2]}}]
set_input_delay  0.400000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{B[1]}}]
set_input_delay  0.400000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{B[0]}}]
set_output_delay  1.000000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{result[3]}}]
set_output_delay  1.000000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{result[2]}}]
set_output_delay  1.000000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{result[1]}}]
set_output_delay  1.000000 -clock [get_clocks {clk}] -add_delay [get_ports \
 {{result[0]}}]
set_wire_load_model -library [get_libs {pt_lib}] -name 20x20 
set_wire_load_mode top
