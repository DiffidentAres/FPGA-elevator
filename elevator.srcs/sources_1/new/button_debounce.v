`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/15 09:36:13
// Design Name: 
// Module Name: button_debounce
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


module button_debounce(clk, in_bt, out_bt);
input clk, in_bt;
output out_bt;
wire clk_1khz;
reg[10:0] count;
reg bt_next;
reg bt_now;

div_clk_1khz(clk, clk_1khz);

always @ (posedge clk_1khz) 
begin 
    if (count == 20) count = 1;
    else count = count + 1;
end

always @ (posedge clk_1khz)
begin
    bt_now = bt_next;
end  

always @ (*) 
begin
if (count == 20) bt_next = in_bt;
else bt_next = bt_now;
end

assign out_bt = bt_now & (~bt_next);
endmodule
