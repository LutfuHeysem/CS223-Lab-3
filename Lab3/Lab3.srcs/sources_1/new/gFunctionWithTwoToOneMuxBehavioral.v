`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 08:28:29 PM
// Design Name: 
// Module Name: gFunctionWithTwoToOneMuxBehavioral
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


module gFunctionWithTwoToOneMuxBehavioral( 
            input wire [2:0] in,
            output wire g 
            );

    TwoToOneMux mux (.a(in[0]), .b(~in[0] | in[2]), .sel(in[1]), .out(g));            
                                   
endmodule
