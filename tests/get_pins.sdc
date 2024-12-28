###############################################################################
#
# Created by PrimeTime write_sdc on Wed May 30 14:44:56 2001
#
###############################################################################

set sdc_version 1.4

set_operating_conditions -analysis_type single 

###############################################################################
# Clock Related Information
###############################################################################
create_clock -name clka -period 2000.000000 -waveform { 0.000000 1000.000000 } \
 [get_ports {clka}]
set_propagated_clock [get_clocks {clka}]

###############################################################################
# External Delay Information
###############################################################################
set_input_delay  0.000000 -clock [get_clocks {clka}] -add_delay [get_ports \
 {reg1in}]
set_input_delay  0.000000 -clock [get_clocks {clka}] -add_delay [get_ports \
 {reg2in}]
set_output_delay  0.000000 -clock [get_clocks {clka}] -add_delay [get_ports \
 {reg3out}]
set_output_delay  0.000000 -clock [get_clocks {clka}] -add_delay [get_ports \
 {reg4out}]
#Cannot specify -from without -to
#set_disable_timing -from [get_pins reg1/D]  [get_ports {reg1in}]
set_disable_timing -from [get_pins reg1/D] -to [get_pins reg1/*/Q]  [get_cells {reg1in}]
set_disable_timing  [get_ports {reg1in}]

