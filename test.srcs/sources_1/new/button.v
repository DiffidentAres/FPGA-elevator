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

module button(group1, data1, group2, data2, clk, changedata, changepos, led, run, reset, cancel);
input clk, changedata, changepos;
input run, reset, cancel;
output[3:0] group1, group2;
output[7:0] data1, data2;
output led;

wire out_changedata, out_changepos, div, out_cancel;

button_debounce bu(clk, changedata, out_changedata);
button_debounce bd(clk, changepos, out_changepos);
button_debounce br(clk, cancel, out_cancel);

reg[3:0] level = 0, d1_2 = 10, d1_1=10, d1_0 = 10;
reg[3:0] d2_3=10, d2_2=10, d2_1=10, d2_0=10;
reg[3:0] pos=0;

always @ (posedge out_changedata) begin
if (~run) begin
    case(pos) 
        3: begin 
        if (d2_3 == 10) d2_3 = 0;
        else d2_3 = (d2_3+1) % 10;
        end
        
        2: begin
        if (d2_2 == 10) d2_2 = 0;
        else d2_2 = (d2_2+1) % 10;
        end 
        
        1: begin
        if (d2_1 == 10) d2_1 = 0;
        else d2_1 = (d2_1 + 1) % 10;
        end
        
        0:begin
        if (d2_0 == 10) d2_0 = 0;
        else d2_0 = (d2_0 + 1) % 10;
        end
    endcase
end
end

reg led = 0;
always @ (posedge out_changepos) begin
if(~run) begin
    if (pos == 3) pos = 0;
    else pos = pos + 1;
end
end

div_clk c1(clk, div);

always @ (posedge div) begin
    if(reset && ~run) begin level = 0; end
    else begin
        if (run) begin
        level = (level + 1) % 10;
        case (level)
            d2_3: led <= 1;
            d2_2: led <= 1;
            d2_1: led <= 1;
            d2_0: led <= 1;
            default: led <= 0;
        endcase
        end
end
end

display dp1(clk, level, d1_2, d1_1, d1_0, group1, data1);
display dp2(clk, d2_3, d2_2, d2_1, d2_0, group2, data2);

endmodule
