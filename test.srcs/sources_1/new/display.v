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

// ʹ��ctl1�� ctl2 ���������Ŀ���. ����ʹ��group1(��), group2 (��)����ѡ��
// 

module display(group, data,indata);
output[3:0] group;
output[7:0] data;
input[7:0] indata;
assign data = indata;
endmodule
