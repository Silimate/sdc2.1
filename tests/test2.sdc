###############################################################################
#
# Created by PrimeTime write_sdc on Fri Mar 30 16:51:23 2001
#
###############################################################################

set sdc_version 1.2

set_operating_conditions -analysis_type single  -library [get_libs \
 {class.db:pt_lib}] WCCOM

###############################################################################
# Clock Related Information
###############################################################################
create_clock -name Clk1 -period 10.000000 -waveform { 0.000000 5.000000 } \
 [get_ports {Clk1}]
set_clock_uncertainty  0.500000 [get_clocks {Clk1}]
create_clock -name Clk2 -period 15.000000 -waveform { 1.000000 9.000000 } \
 [get_ports {Clk2}]
set_clock_uncertainty  0.700000 [get_clocks {Clk2}]

###############################################################################
# Point to Point exceptions
###############################################################################
set_false_path -from [get_clocks {Clk1}] -to [get_clocks {Clk2}]
set_false_path -from [get_clocks {Clk2}] -to [get_clocks {Clk1}]

###############################################################################
# External Delay Information
###############################################################################
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[31]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[30]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[29]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[28]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[27]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[26]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[25]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[24]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[23]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[22]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[21]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[20]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[19]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[18]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[17]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[16]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[15]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[14]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[13]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[12]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[11]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[10]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[9]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[8]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[7]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[6]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[5]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[4]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[3]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[2]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[1]}}]
set_input_delay  3.000000 -clock [get_clocks {Clk1}] -add_delay [get_ports \
 {{Data_In[0]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[31]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[30]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[29]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[28]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[27]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[26]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[25]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[24]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[23]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[22]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[21]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[20]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[19]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[18]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[17]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[16]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[15]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[14]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[13]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[12]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[11]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[10]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[9]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[8]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[7]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[6]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[5]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[4]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[3]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[2]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[1]}}]
set_output_delay  4.000000 -clock [get_clocks {Clk2}] -add_delay [get_ports \
 {{Data_Out[0]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[26]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[3]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[27]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[16]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[9]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[4]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[31]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[0]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[10]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[18]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[19]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[2]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[22]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[7]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[12]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[20]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[30]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[13]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[25]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[11]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[17]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[21]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[23]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[6]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[14]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[24]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[29]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[8]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[5]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[1]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[28]}}]
set_load -pin_load  1.000000 [get_ports {{Data_Out[15]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[31]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[31]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[30]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[30]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[29]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[29]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[28]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[28]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[27]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[27]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[26]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[26]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[25]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[25]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[24]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[24]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[23]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[23]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[22]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[22]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[21]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[21]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[20]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[20]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[19]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[19]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[18]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[18]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[17]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[17]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[16]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[16]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[15]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[15]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[14]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[14]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[13]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[13]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[12]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[12]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[11]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[11]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[10]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[10]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[9]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[9]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[8]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[8]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[7]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[7]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[6]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[6]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[5]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[5]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[4]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[4]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[3]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[3]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[2]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[2]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[1]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[1]}}]
set_driving_cell -rise -lib_cell IBUF1 [get_ports {{Data_In[0]}}]
set_driving_cell -fall -lib_cell IBUF1 [get_ports {{Data_In[0]}}]
set_wire_load_model -library [get_libs {pt_lib}] -name 05x05 
