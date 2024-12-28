set sdc_version 1.5
set U_cells [get_cells U*]
set_resistance 0.6  [get_nets -of_object $U_cells]

get_cells -of_object {$mypins}

get_net
get_net -of_object mypins

