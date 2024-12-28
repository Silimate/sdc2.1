set sdc_version 1.5
get_pin
get_pins
get_pins -hier
get_pin -hier
get_pin -hier -of_object celllist
#following should fail because -of_object and pattern are mutually exclusive


get_cell -of_object  abc*
get_lib_cells [get_cells -of_objects {$U*}]

 get_lib_cells misc_cmos/AN2*
 

set_operating_conditions  -library [get_libs  {V13fs120_t_max.db:rb13fs120_max}]  -object_list [get_cells -regexp -nocase  {U63ASTipoInst901}]

set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports -regexp {pidsel}]



