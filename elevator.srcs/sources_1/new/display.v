`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/15 16:28:53
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


module display(clk, d3, d2, d1, d0, group, data);
input clk;
wire div;
div_clk_1khz c1(clk, div);
input[7:0] d3, d2, d1, d0;
output[3:0] group;
output[7:0] data;
reg[3:0] dec = 0;
wire[7:0] data;
reg[3:0] group;
reg[3:0] cnt = 0;

transfer(dec, data);

always @ (posedge div) begin
    if (cnt >= 4) begin cnt = 0; end
    else begin
        case (cnt)
        0: begin
            group = 4'b0001;
            dec = d0;
            cnt = cnt + 1;
        end
        1: begin
            group = 4'b0010;
            dec = d1;
            cnt = cnt + 1;
        end
        2: begin
            group = 4'b0100;
            dec = d2;
            cnt = cnt + 1;
        end
        3: begin
            group = 4'b1000;
            dec = d3;
            cnt = cnt + 1;
        end
        endcase
    end
end

endmodule
