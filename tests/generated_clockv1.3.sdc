###############################################################################
#
# Created by PrimeTime write_sdc on Wed Apr 11 15:17:17 2001
#
###############################################################################

set sdc_version 1.3

set_operating_conditions -analysis_type single 

###############################################################################
# Clock Related Information
###############################################################################
create_clock -name CLK -period 12.000000 -waveform { 0.000000 6.000000 } \
 [get_ports {CLK}]
set_clock_latency  0.100000 [get_clocks {CLK}]
set_clock_latency -source -late  0.250000 [get_clocks {CLK}]
set_clock_latency -source -early  0.200000 [get_clocks {CLK}]
set_clock_uncertainty  0.200000 [get_clocks {CLK}]
set_clock_transition -rise  0.100000 [get_clocks {CLK}]
set_clock_transition -fall  0.100000 [get_clocks {CLK}]

###############################################################################
# Derived Clock related information
###############################################################################
create_generated_clock -name CLK_BY_4 -source [get_pins {CLK_BY_4_reg/CP}]  \
 -divide_by 2 [get_pins {CLK_BY_4_reg/Q}] 
create_generated_clock -name CLK_BY_2 -source [get_pins {CLK_BY_2_reg/CP}]  \
 -divide_by 2 [get_pins {CLK_BY_2_reg/Q}] 
