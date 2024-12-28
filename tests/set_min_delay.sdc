set sdc_version 2.1
set_min_delay 4.0 -from {A1 A2} -to Z5
set_min_delay 3.0 -from ff1/CP -rise_through {U1/Z U2/Z} -fall_through {U3/Z U4/C} -to ff2/D
set_min_delay 12.5 -to Y -ignore_clock_latency
