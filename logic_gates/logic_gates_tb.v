`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:01:33
// Design Name: 
// Module Name: logic_gates_tb
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


module logic_gates_tb;
    reg  [4:0] a, b;
    wire [4:0] y;
    integer i;

    logic_gates dut_inst(a,b,y);

    initial begin
	a = 5'b0;
        b = 5'b0;
      
        for (i = 0; i < 5; i = i + 1) begin
            #5 a = $random;
               b = $random;
    	    $display("a[%0d] = %0d\nb[%0d] = %0d\n---------\ny[%0d] = %0d\n",i,a[i],i, b[i],i, y[i]);
        end
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,logic_gates);

	#30 $finish;
    end
endmodule
