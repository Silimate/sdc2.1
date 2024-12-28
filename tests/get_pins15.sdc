set sdc_verison 1.5
set_pin
set_pins
set_pins -hier
set_pin -hier
set_pin -hier -of_object $celllist
#following should fail because -of_object and pattern are mutually exclusive


get_cell -of_object  $pinlist abc*
get_lib_cells [get_cells -of_objects $U*]

#get_lib_cells should fail because it requires a pattern
get_lib_cells


