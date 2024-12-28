set sdc_version 1.5
 set_clock_uncertainty 0.2 -rise_from [get_clocks PCI*] -fall_to [get_clock SYS_CLK]
# following will fail because you can only use one of the  -to, -rise_to or -fall_to options 
set_clock_uncertainty -rise_to [get_clock SYS_CLK] -fall_to  [get_clocks PCI*]  0.24
