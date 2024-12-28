set sdc_version 1.3
set_driving_cell -lib_cell buf1a1 [get_ports {Instrn[17]}]
set_driving_cell -lib_cell buf1a4 -rise  -library cba_core [get_ports \
{Instrn[16]}]
set_driving_cell -lib_cell buf1a4 -library cba_core -pin Y [get_ports \
{Instrn[31]}]
set_driving_cell -lib_cell buf1a4 -pin Y [get_ports {Instrn[31]}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[30]}}]
set_driving_cell -rise -library cba_core -lib_cell buf1a4 -pin Y [get_ports \
 {{Instrn[31]}}]
set_driving_cell -rise -lib_cell buf1a4 -pin Y [get_ports {{Instrn[29]}}]
set_driving_cell -fall -lib_cell buf1a4 -pin Y [get_ports {{Instrn[29]}}]
set_driving_cell -lib_cell buf1a4 -pin Y -multiply_by 2 [get_ports \
{Instrn[15]}]
set_driving_cell -lib_cell buf1a4 -pin Y -from_pin A -multiply_by 2 [get_ports \
{Instrn[1]}]
set_driving_cell -lib_cell buf1a4 -from_pin A -multiply_by 2 [get_ports \
{Instrn[15]}]

set_driving_cell -rise -multiply_by 2.000000 -lib_cell buf1a4 -from_pin A \
 [get_ports {{Instrn[1]}}]

set_driving_cell -fall -multiply_by 2.000000 -lib_cell buf1a4 -from_pin A \
 [get_ports {{Instrn[1]}}]
set_driving_cell -lib_cell buf1a4 -dont_scale [get_ports {Instrn[22]}]
set_driving_cell -lib_cell buf1a4 -pin Y [get_ports {Instrn[21]}]
set_driving_cell -rise -dont_scale -lib_cell buf1a4 [get_ports {{Instrn[22]}}]
set_driving_cell -fall -dont_scale -lib_cell buf1a4 [get_ports {{Instrn[22]}}]
set_driving_cell -lib_cell buf1a4 -pin Y -from_pin A -multiply_by 2 \
-no_design_rule [get_ports {Instrn[22]}]
set_driving_cell -rise -no_design_rule -multiply_by 2.000000 -lib_cell buf1a4 \
 -from_pin A -pin Y [get_ports {{Instrn[22]}}]
set_driving_cell -fall -no_design_rule -multiply_by 2.000000 -lib_cell buf1a4 \
 -from_pin A -pin Y [get_ports {{Instrn[22]}}]

