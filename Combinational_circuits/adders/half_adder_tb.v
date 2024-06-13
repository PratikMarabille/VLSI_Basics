`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:15:25
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
    reg  a, b;
  wire sum, carry;
  
  half_adder dut_inst(a,b,sum,carry);
  
  initial begin
       {a,b} = 2'd0;
    #5 {a,b} = 2'd1;
    #5 {a,b} = 2'd2;
    #5 {a,b} = 2'd3;
  end
 
  initial $monitor("a = %0d\nb = %0d\n---------\nsum = %0d\ncarry = %0d\n",a,b,sum,carry); 
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,half_adder);
    #20 $finish;
  end

endmodule
