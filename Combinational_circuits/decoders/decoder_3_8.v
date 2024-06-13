`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:22:19
// Design Name: 
// Module Name: decoder_3_8
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


module decoder_3_8(input wire [2:0] a, input wire en, output reg [7:0] out);
    always @(*) begin
     
    if(en) begin
        out = 8'b0000_0000;
           case(a)
              3'd0 : out[0] = 1;
              3'd1 : out[1] = 1;
              3'd2 : out[2] = 1;
              3'd3 : out[3] = 1;
              3'd4 : out[4] = 1;
              3'd5 : out[5] = 1;
              3'd6 : out[6] = 1;
              3'd7 : out[7] = 1;
       	   default : out = 8'b0000_0000;
           endcase
     end
  end
endmodule
