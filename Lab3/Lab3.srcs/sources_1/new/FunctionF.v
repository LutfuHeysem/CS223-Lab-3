`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 01:33:45 AM
// Design Name: 
// Module Name: FunctionF
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


module FunctionF( input wire [4:0] in,
                  output wire F
                  );
                  
    wire [3:0] decoderOut;
    TwoToFourDecoderBehavioral decoder(.en(1'b1), .in(in[1:0]), .out(decoderOut));
    
    wire [7:0] muxIn;
    assign muxIn[0] = 1'b1;
    assign muxIn[1] = decoderOut[0]; //~D&~E
    assign muxIn[2] = in[1]; //D
    assign muxIn[3] = 1'b0;
    assign muxIn[4] = 1'b1;
    assign muxIn[5] = 1'b0;
    assign muxIn[6] = decoderOut[1]; //~D&E
    assign muxIn[7] = ~in[1];//~D
    EightToOneMux mux(.in(muxIn), .sel(in[4:2]), .out(F)); 
                      
endmodule
