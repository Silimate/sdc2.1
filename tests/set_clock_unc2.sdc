#####################################################

#  Created by Design Compiler write_sdc on Tue Oct 30 16:34:54 2001

#####################################################
set sdc_version 1.3

create_clock -period 10 -waveform {0 5} [get_ports {Clk}]
set_clock_uncertainty  0.1 [get_clocks {Clk}]
set_clock_uncertainty -to Clk -from Clk 0.3 
set_operating_conditions "typ_70_4.50" -library "cba_core"
set_wire_load_model  -name "tc6a120m2" -library "cba_core"
set_wire_load_mode "top" 
set_driving_cell -lib_cell buf1a4 -pin Y [get_ports {Instrn[25]}]
set_driving_cell -lib_cell buf1a4 -pin Y [get_ports {Instrn[24]}]
set_driving_cell -lib_cell buf1a4 -pin Y [get_ports {Instrn[23]}]
set_driving_cell -lib_cell buf1a4 -pin Y -from_pin A -multiply_by 2 \
-no_design_rule [get_ports {Instrn[22]}]
set_driving_cell -lib_cell buf1a4 -from_pin A -multiply_by 2 [get_ports \
{Instrn[15]}]
set_driving_cell -lib_cell buf1a4 -pin Y [get_ports {Instrn[0]}]
set_load -pin_load 0.02 [get_ports {Xecutng_Instrn[31]}]
set_load -pin_load 0.02 [get_ports {Xecutng_Instrn[30]}]
set_load -pin_load 0.02 [get_ports {Xecutng_Instrn[1]}]
set_load -pin_load 0.02 [get_ports {Xecutng_Instrn[0]}]
set_load -pin_load 0.02 [get_ports {EndOfInstrn}]
set_load -pin_load 0.02 [get_ports {PSW[10]}]
set_load -pin_load 0.02 [get_ports {PSW[9]}]
set_load -pin_load 0.02 [get_ports {PSW[8]}]
set_load -pin_load 0.02 [get_ports {PSW[7]}]
set_load -pin_load 0.02 [get_ports {PSW[6]}]
set_load -pin_load 0.02 [get_ports {PSW[5]}]
set_load -pin_load 0.02 [get_ports {PSW[4]}]
set_load -pin_load 0.02 [get_ports {PSW[3]}]
set_load -pin_load 0.02 [get_ports {PSW[2]}]
set_load -pin_load 0.02 [get_ports {PSW[1]}]
set_load -pin_load 0.02 [get_ports {PSW[0]}]
set_load -pin_load 0.02 [get_ports {Rd_Instr}]
set_load -pin_load 0.02 [get_ports {RESULT_DATA[15]}]
set_load -pin_load 0.02 [get_ports {RESULT_DATA[14]}]
set_load -pin_load 0.02 [get_ports {OUT_VALID}]
set_load -pin_load 0.02 [get_ports {STACK_FULL}]
