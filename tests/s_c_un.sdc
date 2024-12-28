set sdc_version 1.5
set_clock_uncertainty 1.0 CLK
#set_clock_uncertainty 1.0 -rise_from clk/cp -to clk2/cp -from LkdCK
set_clock_uncertainty 1.0 -rise_from clk/cp -to clk2/cp  
set_clock_uncertainty -rise_from clk2/cp  -rise_to  clk/cp  2.9
set_clock_uncertainty -from CK1/cp -fall_to Cllk2/cf  1.2
