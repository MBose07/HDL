`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2025 11:57:31 AM
// Design Name: 
// Module Name: main
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


module main(
input [7:0] A ,B,
input [3:0] sel ,
output  [7:0]  o ,
output carry
);
reg [8:0] temp ;
assign o = temp[7:0];
assign carry = temp[8];
always @(*) begin
case (sel)
4'b0 : temp = A+B;
4'b0001: temp = A-B ;
4'b0010 : temp = A*B ;
4'b0011 : temp = A /B ;
4'b0100 : temp = {A,1'b0};
4'b0101 : temp = {1'b0,1'b0,A[6:0]};
4'b0110 : temp = {A[6:0] , A[7]};
4'b0111 : temp = {A[0] , A[7:1]};
4'b1000: temp = A&B ;
4'b1001: temp = A|B ;
4'b1010: temp = A^B ;
4'b1011: temp = !(A|B) ;
4'b1100: temp =!(A&B);
4'b1101: temp = !(A^B);
4'b1110: temp = A > B ? 8'b1 : 8'b0;
4'b1111: temp = A == B ? 8'b1 : 8'b0;
endcase
end


endmodule
