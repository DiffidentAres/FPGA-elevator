# button_debounce

## input: clk, in_bt, 
## output: out_bt

set_property PACKAGE_PIN U4 [get_ports in_bt]
set_property IOSTANDARD LVCMOS33 [get_ports in_bt]

set_property PACKAGE_PIN K2 [get_ports out_bt]
set_property IOSTANDARD LVCMOS33 [get_ports out_bt]

set_property PACKAGE_PIN P17 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]