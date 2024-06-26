`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:27:48
// Design Name: 
// Module Name: encoder_8_3
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


module encoder_8_3(input wire [7:0] a, input wire en, output reg [2:0] out);
    always @(*) begin     
    if(en) begin
        out = 3'd0;
           case(a)
              8'b0000_0001 : out = 3'd0;
              8'b0000_0010 : out = 3'd1;
              8'b0000_0100 : out = 3'd2;
              8'b0000_1000 : out = 3'd3;
              8'b0001_0000 : out = 3'd4;
              8'b0010_0000 : out = 3'd5;
              8'b0100_0000 : out = 3'd6;
              8'b1000_0000 : out = 3'd7;
       	      default      : out = 3'd0;
           endcase
     end
  end
endmodule
