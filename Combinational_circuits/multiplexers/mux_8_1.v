`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:35:43
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(input wire a, b, c, d, e, f, g, h, input wire [2:0] sel, output wire out);
assign out = sel[2] ? (sel[1] ? (sel[0] ? h : g) : (sel[0] ? f : e)) : (sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a));
endmodule
