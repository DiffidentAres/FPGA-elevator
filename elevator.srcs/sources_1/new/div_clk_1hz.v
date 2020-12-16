`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/15 09:29:54
// Design Name: 
// Module Name: div_clk_1hz
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


module div_clk_1khz(clk, div_clk);
input clk; output div_clk;
reg [17:0] counter;
reg div_clk = 0;

    always @ (posedge clk)
        begin
            if (counter >= 100000) 
                begin
                    div_clk <= ~div_clk;
                    counter <= 0; 
                end 
           else 
                begin
                    counter = counter + 1;
                end
        end 
endmodule
