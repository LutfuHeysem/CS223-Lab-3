`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 11:39:56 PM
// Design Name: 
// Module Name: ThreeToEightDecoderStructural
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


module ThreeToEightDecoderStructural( input wire [2:0] in,
                                      input wire en,
                                      output wire [7:0] out
                                      );
                                      
    wire [3:0] lowerOut, upperOut;
    assign lowerEn = en & ~in[2];
    assign upperEn = en & in[2];
    
    TwoToFourDecoderStructural lowerDecoder(.in(in[1:0]), .en(lowerEn), .out(lowerOut));
    TwoToFourDecoderStructural upperDecoder(.in(in[1:0]), .en(upperEn), .out(upperOut));
    
    assign out = {upperOut, lowerOut};
endmodule
