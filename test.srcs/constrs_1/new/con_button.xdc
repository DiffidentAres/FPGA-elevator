# button

#input clk, changedata, changepos;
#output[3:0] group;
#output[7:0] data;

set_property PACKAGE_PIN P17 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN U4 [get_ports changedata]
set_property IOSTANDARD LVCMOS33 [get_ports changedata]

set_property PACKAGE_PIN V1 [get_ports changepos]
set_property IOSTANDARD LVCMOS33 [get_ports changepos]

set_property PACKAGE_PIN G1 [get_ports group[3]]
set_property IOSTANDARD LVCMOS33 [get_ports group[3]]

set_property PACKAGE_PIN F1 [get_ports group[2]]
set_property IOSTANDARD LVCMOS33 [get_ports group[2]]

set_property PACKAGE_PIN E1 [get_ports group[1]]
set_property IOSTANDARD LVCMOS33 [get_ports group[1]]

set_property PACKAGE_PIN G6 [get_ports group[0]]
set_property IOSTANDARD LVCMOS33 [get_ports group[0]]

set_property PACKAGE_PIN D4 [get_ports data[7]]
set_property IOSTANDARD LVCMOS33 [get_ports data[7]]

set_property PACKAGE_PIN E3 [get_ports data[6]]
set_property IOSTANDARD LVCMOS33 [get_ports data[6]]

set_property PACKAGE_PIN D3 [get_ports data[5]]
set_property IOSTANDARD LVCMOS33 [get_ports data[5]]

set_property PACKAGE_PIN F4 [get_ports data[4]]
set_property IOSTANDARD LVCMOS33 [get_ports data[4]]

set_property PACKAGE_PIN F3 [get_ports data[3]]
set_property IOSTANDARD LVCMOS33 [get_ports data[3]]

set_property PACKAGE_PIN E2 [get_ports data[2]]
set_property IOSTANDARD LVCMOS33 [get_ports data[2]]

set_property PACKAGE_PIN D2 [get_ports data[1]]
set_property IOSTANDARD LVCMOS33 [get_ports data[1]]

set_property PACKAGE_PIN H2 [get_ports data[0]]
set_property IOSTANDARD LVCMOS33 [get_ports data[0]]