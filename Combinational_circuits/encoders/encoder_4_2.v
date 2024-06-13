`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:25:17
// Design Name: 
// Module Name: encoder_4_2
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


module encoder_4_2(input wire [3:0] a, input wire en, output reg [1:0] out);
    always @(*) begin     
    if(en) begin
        out = 2'd0;
           case(a)
              4'b0001 : out = 2'd0;
              4'b0010 : out = 2'd1;
              4'b0100 : out = 2'd2;
              4'b1000 : out = 2'd3;
              default : out = 2'd0;
           endcase
     end
  end
endmodule
