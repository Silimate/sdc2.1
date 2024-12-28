set sdc_version 2.1
group_path -name group1  -weight 2.0 -to {CLK1A CLK1B}
set_clock_groups -asynchronous -name g1 -allow_paths -group CLK33 
 set_clock_groups -asynchronous -group TESTCLK

set_clock_sense  -negative -clocks [get_clocks CLK1] [get_pins XOR/z]
set_clock_sense  -negative MUX/Z
set_ideal_latency 1.2 -rise {A B C}
set_ideal_latency 0.9 -fall {A B C}
 set_ideal_network {IN1 IN2}
set_ideal_network -no_propagate {netA}
set_ideal_transition 1.2 -rise {A B C}
 set_ideal_transition 0.9 -fall {A B C}


