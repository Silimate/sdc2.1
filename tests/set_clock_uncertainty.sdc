set sdc_version 1.3
set_clock_uncertainty  0.3 -setup [get_clocks {Clk}]
set_clock_uncertainty  0.4 [get_clocks {clk}]
set_clock_uncertainty  0.4 [get_clocks {clk}]
set_clock_uncertainty  0.200000 [get_clocks {CLK}]
set_clock_uncertainty  0.2 [get_clocks {CLK}]
set_clock_uncertainty  0.500000 [get_clocks {Clk1}]
set_clock_uncertainty  0.500000 [get_clocks {Clk1}]
set_clock_uncertainty  0.2 [get_clocks {CLK}]
set_clock_uncertainty  0.2 -from PHI1 -to PHI1
#set_clock_uncertainty  0.2
#set_clock_uncertainty  0.2 -from PHI1 
set_clock_uncertainty  0.2 -from PHI1 -to PHI1 [get_clocks {Clk1}]

