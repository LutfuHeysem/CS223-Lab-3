`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 05:17:01 PM
// Design Name: 
// Module Name: ThreeToOneMuxBehavioral
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


module ThreeToOneMuxBehavioral( input wire [2:0] in,
                                input wire [1:0] sel,
                                output reg out
                                );
                                
always @(*) begin
        case (sel)
            2'b00: out = in[0];
            2'b01: out = in[1];
            2'b10: out = in[2];
            2'b11: out = in[2];
        endcase
    end

endmodule
