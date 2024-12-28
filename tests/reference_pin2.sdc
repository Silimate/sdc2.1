###############################################################################

set sdc_version 2.0


set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports {sd_LD}]
set_output_delay  -1 -clock [get_clocks {IO_PCI_CLK}] -max -reference_pin \
 [get_ports {sd_DQ[31]}] [get_ports {preq_n}]
###############################################################################

