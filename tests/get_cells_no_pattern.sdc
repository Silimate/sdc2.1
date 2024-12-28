set sdc_version 1.5
set_clock_gating_check -setup 0.5 -high  [get_cells ] 
set_clock_gating_check -setup 0.5  [get_cells ]
set_clock_gating_check -setup 0.2 -hold 0.4 [get_clocks CK1]


