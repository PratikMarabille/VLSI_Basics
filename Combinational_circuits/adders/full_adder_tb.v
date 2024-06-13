`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:12:37
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
reg  a, b, c;
  wire sum, carry;
  
  full_adder dut_inst(a,b,c,sum,carry);
  
  initial begin
       {a,b,c} = 3'b0;
    #5 {a,b,c} = 3'd1;
    #5 {a,b,c} = 3'd2;
    #5 {a,b,c} = 3'd3;
    #5 {a,b,c} = 3'd4;
    #5 {a,b,c} = 3'd5;
    #5 {a,b,c} = 3'd6;
    #5 {a,b,c} = 3'd7;
  end
  
  initial $monitor("a = %0d\nb = %0d\nc = %0d\n---------\nsum = %0d\ncarry = %0d\n",a,b,c,sum,carry);
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,full_adder);
    #40 $finish;
  end
endmodule
