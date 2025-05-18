`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2025 12:26:56 PM
// Design Name: 
// Module Name: tb_alu
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


module tb_alu;
 reg[7:0] A,B;
 reg[3:0] ALU_Sel;

 wire[7:0] ALU_Out;
 wire CarryOut;

 integer i;
 
 main test_unit(
            A,B,              
            ALU_Sel,
            ALU_Out, 
            CarryOut
     );
     
         initial begin
    // hold reset state for 100 ns.
      A = 8'h0A;
      B = 4'h02;
      ALU_Sel = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
       ALU_Sel = ALU_Sel + 8'h01;
       #10;
      end;
      
      A = 8'hF6;
      B = 8'h0A;
      
    end
endmodule
