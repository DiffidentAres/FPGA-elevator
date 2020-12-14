# input 

## button

set_property PACKAGE_PIN U4 [get_ports up]
set_property IOSTANDARD LVCMOS33 [get_ports up]

set_property PACKAGE_PIN R17 [get_ports down]
set_property IOSTANDARD LVCMOS33 [get_ports down]

set_property PACKAGE_PIN V1 [get_ports left]
set_property IOSTANDARD LVCMOS33 [get_ports left]

set_property PACKAGE_PIN R11 [get_ports right]
set_property IOSTANDARD LVCMOS33 [get_ports right]

# output

## display -- group

set_property PACKAGE_PIN G1 [get_ports group[3]]
set_property IOSTANDARD LVCMOS33 [get_ports group[3]]

set_property PACKAGE_PIN F1 [get_ports group[2]]
set_property IOSTANDARD LVCMOS33 [get_ports group[2]]

set_property PACKAGE_PIN E1 [get_ports group[1]]
set_property IOSTANDARD LVCMOS33 [get_ports group[1]]

set_property PACKAGE_PIN G6 [get_ports group[0]]
set_property IOSTANDARD LVCMOS33 [get_ports group[0]]

## display -- data

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



# test 

## input -- tmp

set_property PACKAGE_PIN P5 [get_ports tmp[3]]
set_property IOSTANDARD LVCMOS33 [get_ports tmp[3]]

set_property PACKAGE_PIN P4 [get_ports tmp[2]]
set_property IOSTANDARD LVCMOS33 [get_ports tmp[2]]

set_property PACKAGE_PIN P3 [get_ports tmp[1]]
set_property IOSTANDARD LVCMOS33 [get_ports tmp[1]]

set_property PACKAGE_PIN P2 [get_ports tmp[0]]
set_property IOSTANDARD LVCMOS33 [get_ports tmp[0]]

## input -- tmpp2

set_property PACKAGE_PIN R2 [get_ports tmp2[3]]
set_property IOSTANDARD LVCMOS33 [get_ports tmp2[3]]

set_property PACKAGE_PIN M4 [get_ports tmp2[2]]
set_property IOSTANDARD LVCMOS33 [get_ports tmp2[2]]

set_property PACKAGE_PIN N4 [get_ports tmp2[1]]
set_property IOSTANDARD LVCMOS33 [get_ports tmp2[1]]

set_property PACKAGE_PIN R1 [get_ports tmp2[0]]
set_property IOSTANDARD LVCMOS33 [get_ports tmp2[0]]


