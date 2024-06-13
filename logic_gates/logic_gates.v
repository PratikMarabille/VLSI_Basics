`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:00:19
// Design Name: 
// Module Name: logic_gates
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


module logic_gates(
input wire [4:0] a,b, output wire [4:0] y
    );
    assign y[0] = a[0]   & b[0];
    assign y[1] = a[1]   | b[1];
    assign y[2] =        ~a[2];
    assign y[3] = ~(a[3] & b[3]);
    assign y[4] = ~(a[4] | b[4]);
endmodule
