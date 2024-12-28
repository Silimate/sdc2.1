set sdc_version 1.4
set_input_transition 0.75 [get_ports DATA_IN*]
set_input_transition -min  0.6 [get_ports DATA_A]
set_input_transition -max -fall -clock [get_clocks CLK] 0.8 [get_ports DATA_IN*]
set_input_transition -clock [get_clocks CLK1] -clock_fall 0.75 [get_ports DATA_b]
 
