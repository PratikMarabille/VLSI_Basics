`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:23:17
// Design Name: 
// Module Name: decoder_3_8_tb
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


module decoder_3_8_tb;
    reg  [2:0] a;
  reg  en;
  wire [7:0] out;

  decoder_3_8 dut_inst(a, en, out);

  always begin
    #5 a = $random;
      en = $random;
  end

  initial begin
    a  = 3'b000;
    en = 1'b0;
    $monitor("a = %p\n---------\nout = %p\n",a,out);
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,decoder_3_8);
    #100 $finish;
  end

endmodule
