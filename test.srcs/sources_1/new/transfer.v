`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 21:27:21
// Design Name: 
// Module Name: transfer
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


module transfer(dec, hex);
input[3:0] dec;
output[7:0] hex;

reg[7:0] hex;

always @ (dec) 
begin 
case (dec)
            4'b0000: hex = 8'hfc;
            4'b0001: hex = 8'h60;
            4'b0010: hex = 8'hda;
            4'b0011: hex = 8'hf2;
            4'b0100: hex = 8'h66;
            4'b0101: hex = 8'hb6;
            4'b0110: hex = 8'hbe;
            4'b0111: hex = 8'he0;
            4'b1000: hex = 8'hfe;
            4'b1001: hex = 8'hf6;
            default: hex = 8'hfc;  
endcase 
end
endmodule
