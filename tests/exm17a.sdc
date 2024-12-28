set sdc_version 1.7
 set_max_delay 10.0 -to {Y}
 set_max_delay 15.0 -from {ff1a ff1b} -to   {ff2e}
set_max_delay 8.5 -to [get_clocks PHI2]
 set_max_delay 5.0 -to [get_pins Ua1*]
set_max_delay 8.0 -from ff1/CP -through U2  -through U2 -to ff2/D
 set_max_delay 8.0 -from ff1/CP -rise_through U1 -fall_through US3/Z  -to ff2/D

