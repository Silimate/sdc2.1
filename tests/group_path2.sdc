set sdc_version 1.7
group_path -name group1  -weight 2.0 -to {CLK1A CLK1B}
group_path -name group1  -weight 2.0 -to CLDK23
group_path  -default  -weight 2.0 -to CLDK23

group_path -name group1  -weight 10.0 -from {I1 I2} -rise_from {O5 O7}

