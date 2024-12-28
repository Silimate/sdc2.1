###############################################################################
#
# Created by PrimeTime write_sdc on Tue Oct 30 16:31:06 2001
#
###############################################################################

set sdc_version 1.3

set_operating_conditions -analysis_type single  -library [get_libs \
 {tc6a.db:cba_core}] typ_70_4.50

###############################################################################
# Clock Related Information
###############################################################################
create_clock -name Clk -period 10.000000 -waveform { 0.000000 5.000000 } \
 [get_ports {Clk}]
set_clock_uncertainty  0.100000 [get_clocks {Clk}]

###############################################################################
# Inter clock uncertainty information
###############################################################################
set_clock_uncertainty -rise -setup 0.300000 -from [get_clocks {Clk}] -to \
 [get_clocks {Clk}]
set_clock_uncertainty -fall -setup 0.300000 -from [get_clocks {Clk}] -to \
 [get_clocks {Clk}]
set_clock_uncertainty -rise -hold 0.300000 -from [get_clocks {Clk}] -to \
 [get_clocks {Clk}]
set_clock_uncertainty -fall -hold 0.300000 -from [get_clocks {Clk}] -to \
 [get_clocks {Clk}]

###############################################################################
# External Delay Information
###############################################################################
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {Reset}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[31]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[30]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[29]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[28]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[27]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[26]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[25]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[24]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[23]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[22]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[21]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[20]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[19]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[18]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[17]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[16]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[15]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[14]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[13]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[12]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[11]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[10]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[9]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[8]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[7]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[6]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[5]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[4]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[3]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[2]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[1]}}]
set_input_delay  5.000000 -clock [get_clocks {Clk}] -max -add_delay [get_ports \
 {{Instrn[0]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[31]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[30]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[29]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[28]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[27]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[26]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[25]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[24]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[23]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[22]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[21]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[20]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[19]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[18]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[17]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[16]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[15]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[14]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[13]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[12]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[11]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[10]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[9]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[8]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[7]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[6]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[5]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[4]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[3]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[2]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[1]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{Xecutng_Instrn[0]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {EndOfInstrn}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[10]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[9]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[8]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[7]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[6]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[5]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[4]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[3]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[2]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[1]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{PSW[0]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {Rd_Instr}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[15]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[14]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[13]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[12]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[11]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[10]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[9]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[8]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[7]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[6]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[5]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[4]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[3]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[2]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[1]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {{RESULT_DATA[0]}}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {OUT_VALID}]
set_output_delay  3.000000 -clock [get_clocks {Clk}] -add_delay [get_ports \
 {STACK_FULL}]
set_load -pin_load  0.020000 [get_ports {{PSW[10]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[22]}}]
set_load -pin_load  0.020000 [get_ports {Rd_Instr}]
set_load -pin_load  0.020000 [get_ports {STACK_FULL}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[7]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[24]}}]
set_load -pin_load  0.020000 [get_ports {{PSW[6]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[16]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[1]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[20]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[0]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[29]}}]
set_load -pin_load  0.020000 [get_ports {{PSW[0]}}]
set_load -pin_load  0.020000 [get_ports {EndOfInstrn}]
set_load -pin_load  0.020000 [get_ports {{PSW[2]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[5]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[15]}}]
set_load -pin_load  0.020000 [get_ports {{PSW[1]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[19]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[28]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[10]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[6]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[9]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[25]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[11]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[13]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[6]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[3]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[14]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[17]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[21]}}]
set_load -pin_load  0.020000 [get_ports {{PSW[7]}}]
set_load -pin_load  0.020000 [get_ports {{PSW[9]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[4]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[18]}}]
set_load -pin_load  0.020000 [get_ports {{PSW[4]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[26]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[8]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[1]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[0]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[27]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[13]}}]
set_load -pin_load  0.020000 [get_ports {{PSW[5]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[4]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[23]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[5]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[30]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[14]}}]
set_load -pin_load  0.020000 [get_ports {OUT_VALID}]
set_load -pin_load  0.020000 [get_ports {{PSW[8]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[11]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[8]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[9]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[10]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[12]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[3]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[2]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[7]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[12]}}]
set_load -pin_load  0.020000 [get_ports {{RESULT_DATA[2]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[15]}}]
set_load -pin_load  0.020000 [get_ports {{PSW[3]}}]
set_load -pin_load  0.020000 [get_ports {{Xecutng_Instrn[31]}}]
set_max_capacitance  2.400000 [get_ports {Reset}]
set_max_capacitance  2.400000 [get_ports {{Instrn[31]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[30]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[29]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[28]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[27]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[26]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[25]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[24]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[23]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[22]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[21]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[20]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[19]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[18]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[17]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[16]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[15]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[14]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[13]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[12]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[11]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[10]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[9]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[8]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[7]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[6]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[5]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[4]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[3]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[2]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[1]}}]
set_max_capacitance  2.400000 [get_ports {{Instrn[0]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[31]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[31]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[30]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[30]}}]
set_driving_cell -rise -lib_cell buf1a4 -pin Y [get_ports {{Instrn[29]}}]
set_driving_cell -fall -lib_cell buf1a4 -pin Y [get_ports {{Instrn[29]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[28]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[28]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[27]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[27]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[26]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[26]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[25]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[25]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[24]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[24]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[23]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[23]}}]
set_driving_cell -rise -no_design_rule -multiply_by 2.000000 -lib_cell buf1a4 \
 -from_pin A -pin Y [get_ports {{Instrn[22]}}]
set_driving_cell -fall -no_design_rule -multiply_by 2.000000 -lib_cell buf1a4 \
 -from_pin A -pin Y [get_ports {{Instrn[22]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[21]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[21]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[20]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[20]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[19]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[19]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[18]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[18]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[17]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[17]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[16]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[16]}}]
set_driving_cell -rise -multiply_by 2.000000 -lib_cell buf1a4 -pin Y \
 [get_ports {{Instrn[15]}}]
set_driving_cell -fall -multiply_by 2.000000 -lib_cell buf1a4 -pin Y \
 [get_ports {{Instrn[15]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[14]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[14]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[13]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[13]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[12]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[12]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[11]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[11]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[10]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[10]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[9]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[9]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[8]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[8]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[7]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[7]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[6]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[6]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[5]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[5]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[4]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[4]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[3]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[3]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[2]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[2]}}]
set_driving_cell -rise -multiply_by 2.000000 -lib_cell buf1a4 -from_pin A \
 [get_ports {{Instrn[1]}}]
set_driving_cell -fall -multiply_by 2.000000 -lib_cell buf1a4 -from_pin A \
 [get_ports {{Instrn[1]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[0]}}]
set_driving_cell -fall -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[0]}}]
set_wire_load_model -library [get_libs {cba_core}] -name tc6a120m2 
set_wire_load_mode top
