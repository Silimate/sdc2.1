#####################################################

#  Created by Design Compiler write_sdc on Fri Sep 15 17:13:59 2000

#####################################################
set sdc_version 1.1

create_clock -period 4 -waveform {0 2} [get_ports {clk}]
set_input_delay 0.4 -clock "clk" [get_ports {B[0]}]
set_input_delay 0.4 -clock "clk" [get_ports {B[1]}]
set_input_delay 0.4 -clock "clk" [get_ports {B[2]}]
set_input_delay 0.4 -clock "clk" [get_ports {B[3]}]
set_input_delay 0.4 -clock "clk" [get_ports {A[0]}]
set_input_delay 0.4 -clock "clk" [get_ports {A[1]}]
set_input_delay 0.4 -clock "clk" [get_ports {A[2]}]
set_input_delay 0.4 -clock "clk" [get_ports {A[3]}]
set_input_delay 1.2 -max -clock "clk" -clock_fall [get_ports {s1}]
set_input_delay 0 -min -clock "clk" -clock_fall [get_ports {s1}]
set_input_delay 1.2 -max -clock "clk" -clock_fall [get_ports {s0}]
set_input_delay 0 -min -clock "clk" -clock_fall [get_ports {s0}]
set_output_delay 1 -clock "clk" [get_ports {result[0]}]
set_output_delay 1 -clock "clk" [get_ports {result[1]}]
set_output_delay 1 -clock "clk" [get_ports {result[2]}]
set_output_delay 1 -clock "clk" [get_ports {result[3]}]
set_clock_uncertainty  0.4 [get_clocks {clk}]
set_operating_conditions "fast_25_1.20_BCT" -library "ssc_core_fast"
set_wire_load_model  -name "20KGATES" -library "ssc_core_fast"
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{clk}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{s0}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{s1}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{A[3]}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{A[2]}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{A[1]}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{A[0]}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{B[3]}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{B[2]}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{B[1]}]
set_driving_cell -lib_cell xor3b1  -library ssc_core_fast -pin "Q" [get_ports \
{B[0]}]
set_load -pin_load 0.00467 [get_ports {result[3]}]
set_load -pin_load 0.00467 [get_ports {result[2]}]
set_load -pin_load 0.00467 [get_ports {result[1]}]
set_load -pin_load 0.00467 [get_ports {result[0]}]
