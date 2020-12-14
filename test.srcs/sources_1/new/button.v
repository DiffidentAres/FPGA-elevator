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


module button(up, down, left, right, group, data, tmp, tmp2);
input[3:0] tmp;
input[3:0] tmp2;
input up, down, left, right; //in_confi;
//output out_confirm;
output[3:0] group;
output[7:0] data;
reg[3:0] count = 4'b0000;
//reg out_confirm;
reg[3:0] group;
transfer(count, data);

//always @ (up or down or right or left )
//begin
//    if (up == 1) begin count = (count + 1) % 10; #100; end
//    if (down == 1) begin count = (count - 1) % 10; #1000; end
//    if (left == 1 && index != 4'b1000) begin index = index << 1;end
//    if (right == 1 && index != 4'b0001) begin index = index >> 1; end
//    //if (in_confirm == 1) out_confirm = 1; 
//end

//always @ (posedge up) 
//begin
//    count = (count + 1) % 10; 
//end

always @ (tmp) 
begin
    case (tmp)
       4'b0000: count = 4'b0000;
       4'b0001: count = 4'b0001;
       4'b0010: count = 4'b0010;
       4'b0011: count = 4'b0011;
       4'b0100: count = 4'b0100;
       4'b0101: count = 4'b0101;
       4'b0110: count = 4'b0110;
       4'b0111: count = 4'b0111;
       4'b1000: count = 4'b1000;
       4'b1001: count = 4'b1001;
       default: count = 4'b0000;
    endcase
end

always @ (tmp2) 
begin
    case (tmp2)
        4'b0001: group = 4'b0001;
        4'b0010: group = 4'b0010;
        4'b0100: group = 4'b0100;
        4'b1000: group = 4'b1000;
        default: group = 4'b0001;
    endcase
end

endmodule
