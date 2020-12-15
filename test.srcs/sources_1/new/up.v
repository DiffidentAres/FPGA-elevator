`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/15 15:45:35
// Design Name: 
// Module Name: up
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


module up(up, in_count, out_count);
input up;
input[3:0] in_count;
output [3:0] out_count;
reg[3:0] out_count;

initial begin
out_count = in_count;
end

always @ (posedge up) begin
    if(out_count != 9) out_count = out_count + 1;
    else out_count = out_count;
end

endmodule
