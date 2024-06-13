`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:36:45
// Design Name: 
// Module Name: mux_8_1_tb
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


module mux_8_1_tb;
     reg  a, b, c, d, e, f, g, h;
  reg  [2:0] sel;
  wire out;

  mux_8_1 dut_inst(a, b, c, d, e, f, g, h, sel, out);

  always begin

       #5 {a, b, c, d, e, f, g, h} = $random;
       sel 			   = $random;
  end

  initial begin
    {a, b, c, d, e, f, g, h} = 8'b0011_0000;
    sel 	   	     = 3'b011;
    $monitor("a = %0d\nb = %0d\nc = %0d\nd = %0d\ne = %0d\nf = %0d\ng = %0d\nh = %0d\nsel[0] = %0d\nsel[1] = %0d\nsel[2] = %0d\n---------\nout = %0d\n",a,b,c,d,e,f,g,h,sel[0],sel[1],sel[2],out);
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,mux_8_1);
    #100 $finish;
  end
endmodule
