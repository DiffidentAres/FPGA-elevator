# button

#input clk, changedata, changepos;
#input run, reset, cancel;
#output[3:0] group1, group2;
#output[7:0] data1, data2;
#output led;

set_property PACKAGE_PIN P17 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN U4 [get_ports changedata]
set_property IOSTANDARD LVCMOS33 [get_ports changedata]

set_property PACKAGE_PIN V1 [get_ports changepos]
set_property IOSTANDARD LVCMOS33 [get_ports changepos]

set_property PACKAGE_PIN R1 [get_ports run]
set_property IOSTANDARD LVCMOS33 [get_ports run]

set_property PACKAGE_PIN N4 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

set_property PACKAGE_PIN J2 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]

set_property PACKAGE_PIN R11 [get_ports cancel]
set_property IOSTANDARD LVCMOS33 [get_ports cancel]
# group1
set_property PACKAGE_PIN G2 [get_ports group1[3]]
set_property IOSTANDARD LVCMOS33 [get_ports group1[3]]

set_property PACKAGE_PIN C2 [get_ports group1[2]]
set_property IOSTANDARD LVCMOS33 [get_ports group1[2]]

set_property PACKAGE_PIN C1 [get_ports group1[1]]
set_property IOSTANDARD LVCMOS33 [get_ports group1[1]]

set_property PACKAGE_PIN H1 [get_ports group1[0]]
set_property IOSTANDARD LVCMOS33 [get_ports group1[0]]

# group2
set_property PACKAGE_PIN G1 [get_ports group2[3]]
set_property IOSTANDARD LVCMOS33 [get_ports group2[3]]

set_property PACKAGE_PIN F1 [get_ports group2[2]]
set_property IOSTANDARD LVCMOS33 [get_ports group2[2]]

set_property PACKAGE_PIN E1 [get_ports group2[1]]
set_property IOSTANDARD LVCMOS33 [get_ports group2[1]]

set_property PACKAGE_PIN G6 [get_ports group2[0]]
set_property IOSTANDARD LVCMOS33 [get_ports group2[0]]

# data1
set_property PACKAGE_PIN B4 [get_ports data1[7]]
set_property IOSTANDARD LVCMOS33 [get_ports data1[7]]

set_property PACKAGE_PIN A4 [get_ports data1[6]]
set_property IOSTANDARD LVCMOS33 [get_ports data1[6]]

set_property PACKAGE_PIN A3 [get_ports data1[5]]
set_property IOSTANDARD LVCMOS33 [get_ports data1[5]]

set_property PACKAGE_PIN B1 [get_ports data1[4]]
set_property IOSTANDARD LVCMOS33 [get_ports data1[4]]

set_property PACKAGE_PIN A1 [get_ports data1[3]]
set_property IOSTANDARD LVCMOS33 [get_ports data1[3]]

set_property PACKAGE_PIN B3 [get_ports data1[2]]
set_property IOSTANDARD LVCMOS33 [get_ports data1[2]]

set_property PACKAGE_PIN B2 [get_ports data1[1]]
set_property IOSTANDARD LVCMOS33 [get_ports data1[1]]

set_property PACKAGE_PIN D5 [get_ports data1[0]]
set_property IOSTANDARD LVCMOS33 [get_ports data1[0]]

# data2
set_property PACKAGE_PIN D4 [get_ports data2[7]]
set_property IOSTANDARD LVCMOS33 [get_ports data2[7]]

set_property PACKAGE_PIN E3 [get_ports data2[6]]
set_property IOSTANDARD LVCMOS33 [get_ports data2[6]]

set_property PACKAGE_PIN D3 [get_ports data2[5]]
set_property IOSTANDARD LVCMOS33 [get_ports data2[5]]

set_property PACKAGE_PIN F4 [get_ports data2[4]]
set_property IOSTANDARD LVCMOS33 [get_ports data2[4]]

set_property PACKAGE_PIN F3 [get_ports data2[3]]
set_property IOSTANDARD LVCMOS33 [get_ports data2[3]]

set_property PACKAGE_PIN E2 [get_ports data2[2]]
set_property IOSTANDARD LVCMOS33 [get_ports data2[2]]

set_property PACKAGE_PIN D2 [get_ports data2[1]]
set_property IOSTANDARD LVCMOS33 [get_ports data2[1]]

set_property PACKAGE_PIN H2 [get_ports data2[0]]
set_property IOSTANDARD LVCMOS33 [get_ports data2[0]]