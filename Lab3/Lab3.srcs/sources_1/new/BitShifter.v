`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 01:42:20 PM
// Design Name: 
// Module Name: BitShifter
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


module BitShifter( input wire [3:0] in,
                   input wire shift,
                   output reg [3:0] out,
                   output reg k
                   );
    always @(*) begin
        if (shift == 1) begin
            out[3] = 1'b0;
            out[2] = in[3];
            out[1] = in[2];
            out[0] = in[1];
            k = in[0];
        end else begin
            out = in;
            k = 1'b0;
        end
    end  
endmodule
