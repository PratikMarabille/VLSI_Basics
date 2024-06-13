`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:26:36
// Design Name: 
// Module Name: encoder_4_2_tb
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


module encoder_4_2_tb;
    reg  [7:0] a;
  reg  en;
  wire [2:0] out;

  encoder_4_2 dut_inst(a, en, out);

  initial begin
	en = 1'b0;
    #5  a  = 4'b0001;
    #5  a  = 4'b0010;
    #5  a  = 4'b0100;
    #5  a  = 4'b1000;
        en = 1'b1;
    #5  a  = 4'b0000;
    #5  a  = 4'b0001;
    #5  a  = 4'b0010;
    #5  a  = 4'b0100;
    #5  a  = 4'b1000;
  end

  initial $monitor("a = %p\nen = %0d\n---------\nout = %p\n",a,en,out);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,encoder_4_2);
    #100 $finish;
  end
endmodule
