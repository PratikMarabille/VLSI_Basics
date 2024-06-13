`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:30:30
// Design Name: 
// Module Name: pri_enc_8_3_tb
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


module pri_enc_8_3_tb;
    reg  [7:0] a;
  reg  en;
  wire [2:0] out;

  pri_enc_8_3 dut_inst(a, en, out);

  always begin
    #5  a  = $random;
     	en = $random;
  end

  initial begin
	en = 1'b1;
        a  = 8'b1000_0000;
  end

  initial $monitor("a = %p\nen = %0d\n---------\nout = %p\n",a,en,out);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,pri_enc_8_3);
    #100 $finish;
  end
endmodule
