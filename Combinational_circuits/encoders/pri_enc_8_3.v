`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:29:39
// Design Name: 
// Module Name: pri_enc_8_3
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


module pri_enc_8_3(input wire [7:0] a, input wire en, output reg [2:0] out);
    always @(*) begin     
    if(en) begin
        out = 3'd0;
           casex(a)	// using casex here which actually consider dont care conditions 'x'
              8'b0000_0001 : out = 3'd0;
              8'b0000_001x : out = 3'd1;
              8'b0000_01xx : out = 3'd2;
              8'b0000_1xxx : out = 3'd3;
              8'b0001_xxxx : out = 3'd4;
              8'b001x_xxxx : out = 3'd5;
              8'b01xx_xxxx : out = 3'd6;
              8'b1xxx_xxxx : out = 3'd7;
       	      default      : out = 3'd0;
           endcase
     end
  end
endmodule
