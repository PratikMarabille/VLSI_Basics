`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:33:06
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb;
    reg  a, b, sel;
  wire out;

  mux_2_1 dut_inst(a, b, sel, out);

  initial begin
        {a,b} = 2'd0;
          sel = 1'b0;
     #5 {a,b} = 2'd1;
          sel = 1'b1;
     #5 {a,b} = 2'd2;
          sel = 1'b0;
     #5 {a,b} = 2'd3;
          sel = 1'b1;
  end

  initial $monitor("a = %0d\nb = %0d\nsel = %0d\n---------\nout = %0d\n",a,b,sel,out);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,mux_2_1);
    #100 $finish;
  end
endmodule
