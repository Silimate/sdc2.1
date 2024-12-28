###############################################################################
#
# Created by PrimeTime write_sdc on Fri Mar 30 16:56:06 2001
#
###############################################################################

set sdc_version 1.4

set_operating_conditions -analysis_type single  -library [get_libs \
 {class.db:pt_lib}] WCCOM

###############################################################################
# Clock Related Information
###############################################################################
create_clock -name CLK -period 5.000000 -waveform { 0.000000 2.500000 } \
 [get_ports {CLK}]
set_clock_latency  1.000000 [get_clocks {CLK}]
set_clock_latency -source  0.500000 [get_clocks {CLK}]
set_clock_uncertainty  0.200000 [get_clocks {CLK}]

###############################################################################
# External Delay Information
###############################################################################
set_output_delay  1.000000 -clock [get_clocks {CLK}] -add_delay [get_ports \
 {QOUT}]
set_wire_load_model -library [get_libs {pt_lib}] -name 05x05 
extend_sdc asdadasd
#extend_sdc asdsadsad -adadasd -adadada 10
extend_sdc
extend_sdc asdsadsad -adadasd
extend_sdc asdsadsad -aadad -ddsds 10

