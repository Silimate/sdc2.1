set sdc_version 2.1
set_max_delay 8.0 -from ff1/CP -through {U1/Z U2/Z} -through {U3/Z U4/C} -to ff2/D
set_max_delay 10.0 -to {Y}
set_max_delay 8.5 -to [get_clocks PHI2]
set_max_delay 8.0 -from ff1/CP -rise_through {U1/Z U2/Z} -fall_through {U3/Z U4/C} -to ff2/D -ignore_clock_latency

