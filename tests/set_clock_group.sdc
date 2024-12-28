set sdc_version 1.9
set_clock_groups -asynchronous -name CLK1_1 -group [get_clocks {clk1}] -group [get_clocks {clk2}]
set_clock_groups -asynchronous -name CLK1_1 -group [get_clocks {clk1}] -group [get_clocks {clk2}] -comment "This is a new argument for sdc1.9"
set_max_delay 8.0 -from ff1/CP -through {U1/Z U2/Z} -through {U3/Z U4/C} -to ff2/D -comment "SDC 1.9 supporeted argument"
set_false_path -from [get_clocks {Clk2}] -to [get_clocks {Clk1}] -comment " your comments"
group_path -name group1  -weight 2.0 -to CLDK23 -comment " This is a testing"
create_clock -name CLK1 -period 10.000000 -comment "for block rev1" -waveform { 0.000000 5.000000 } \
 [get_ports {CLK1}]
set_false_path -from [get_clocks {Clk1}] -to [get_clocks {Clk2}] -comment "for block abc in testmode for sdc 1.9"
 set_false_path -from [get_clocks {clkpci}] -to [get_clocks {clksdram \
 SD_DDR_CLK SD_DDR_CLKn}] -comment " this is going to be a verey very verey long comment \
for the testetin of sdc 1.9"
set_max_delay 15.0 -from {ff1a ff1b} -to   {ff2e} -comment "for sdc 1.9 "
set_max_delay 8.0 -comment " test for sdc 1.9" -from ff1/CP -rise_through U1 -fall_through US3/Z  -to ff2/D
set_min_delay 3.0 -from ff1/CP -through {U1/Z U2/Z} -through {U3/Z U4/C} -to ff2/D -comment "For sdc 1.9 supported argument" 
set_multicycle_path 2 -from ff1/CP -through {U1/Z U2/Z} -through {U3/Z U4/C} -to ff2/D -comment " this is s test for sdc 1.9"
