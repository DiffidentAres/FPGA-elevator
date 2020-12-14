`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/12 17:00:41
// Design Name: 
// Module Name: display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// 使用ctl1， ctl2 控制阴极的开关. 阴极使用group1(左), group2 (右)进行选择。
// 

module display(group, data,indata);
output[3:0] group;
output[7:0] data;
input[7:0] indata;
assign data = indata;
endmodule
