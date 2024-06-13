`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:28:44
// Design Name: 
// Module Name: encoder_8_3_tb
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


module encoder_8_3_tb;
    reg  [7:0] a;
  reg  en;
  wire [2:0] out;

  encoder_8_3 dut_inst(a, en, out);

  initial begin
	en = 1'b0;
    #5  a  = 8'b0001_0000;
    #5  a  = 8'b0010_0000;
    #5  a  = 8'b0100_0000;
    #5  a  = 8'b1000_0000;
        en = 1'b1;
    #5  a  = 8'b0000_0000;
    #5  a  = 8'b0000_0001;
    #5  a  = 8'b0000_0010;
    #5  a  = 8'b0000_0100;
    #5  a  = 8'b0000_1000;
    #5  a  = 8'b0001_0000;
    #5  a  = 8'b0010_0000;
    #5  a  = 8'b0100_0000;
    #5  a  = 8'b1000_0000;
  end

  initial $monitor("a = %p\nen = %0d\n---------\nout = %p\n",a,en,out);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,encoder_8_3);
    #100 $finish;
  end

endmodule
