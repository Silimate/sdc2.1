set sdc_version 1.3
set_clock_gating_check -setup 0.5 -high  [get_cells -hsc .  Ub1.and1]
set_clock_gating_check -setup 0.5  [get_cells and1]
set_clock_gating_check -setup 0.2 -hold 0.4 [get_clocks CK1]


