set sdc_version 1.5
set_clock_latency 0.2 -clock SYS_CLK I_CLOCK_GEN/sdram_clk
set_clock_latency -fall 0.1 -clock [get_clocks PCI_CLK] I_CLOCK_GEN/pclk
# following willfail because -early requires -source
set_clock_latency -early 0.1 SYS_CLK 
#following will pass
set_clock_latency -early 0.1 -source SYS_CLK
set_clock_latency -late 0.3 -source PCI_CLK

set_clock_latency 0.9 -source \
           -late  [get_clocks CLK1]

