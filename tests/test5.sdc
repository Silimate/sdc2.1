#####################################################

#####################################################
set sdc_version 2.1

create_clock -period 12 -waveform {0 6} [get_ports {CLK}]
set_clock_transition -rise 0.1 [get_clocks {CLK}]
set_clock_transition -fall 0.1 [get_clocks {CLK}]
set_clock_uncertainty  0.2 [get_clocks {CLK}]
set_clock_latency -dynamic 0.1 [get_clocks {CLK}]
set_clock_latency -source  0.2 -early [get_clocks {CLK}]
set_clock_latency -source  0.25 -late [get_clocks {CLK}]
set_operating_conditions "WCCOM" -library "pt_lib"
set_wire_load_model  -name "05x05" -library "pt_lib"
