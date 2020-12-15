`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 21:17:08
// Design Name: 
// Module Name: button
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

module button(group, data, clk, changedata, changepos);
input clk, changedata, changepos;
output[3:0] group;
output[7:0] data;
reg[3:0] count;
reg[3:0] group;
wire out_changedata, out_changepos;

transfer t1(count, data);

initial begin
count = 0;
group = 4'b0001;
end

button_debounce bu(clk, changedata, out_changedata);
button_debounce bd(clk, changepos, out_changepos);

always @ (posedge out_changedata) begin
    count = (count + 1) % 10;
end

always @ (posedge out_changepos) begin
    if (group == 4'b1000) group = 4'b0001;
    else group = group << 1;
end
endmodule
