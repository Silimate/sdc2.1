set sdc_version 1.9
create_clock -name CLK -period 12.000000 -waveform { 0.000000 6.000000 } \
 [get_ports {CLK}]
set_clock_latency  0.100000 [get_clocks {CLK}]
set_clock_latency -source -late  0.250000 [get_clocks {CLK}]
set_clock_latency -source -early  0.200000 [get_clocks {CLK}]
set_clock_uncertainty  0.200000 [get_clocks {CLK}]
set_clock_transition -rise  0.100000 [get_clocks {CLK}]
set_clock_transition -fall  0.100000 [get_clocks {CLK}]
create_generated_clock -name CLK_BY_4 -source [get_pins {CLK_BY_4_reg/CP}]  \
 -divide_by 2 [get_pins {CLK_BY_4_reg/Q}] -comment "This is a SDC 1.9 command"
create_generated_clock -name CLK_INV  -source [get_ports CLK]\
  -divide_by 1 [get_pins A/Y] -combinational
create_generated_clock -name CLK_mux -combinational UMUX/A -source UMUX/A
create_generated_clock -name CLKdiv2_mux -combinational UMUX/B -source UMUX/B
create_generated_clock -name CLKdiv4_mux -combinational UMUX/C -source UMUX/C 
