`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 01:13:36 AM
// Design Name: 
// Module Name: EightToOneMux
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


module EightToOneMux( input wire [7:0] in,
                      input wire [2:0] sel,
                      output wire out
                      );
                      
    wire [1:0] sel1;
    wire [1:0] sel2;
    wire out1;
    wire out2;
    
    assign sel1 = sel[1:0];
    assign sel2 = sel[2];
    
    FourToOneMux mux1(.in(in[3:0]), .sel(sel1), .out(out1));
    FourToOneMux mux2(.in(in[7:4]), .sel(sel1), .out(out2));
    
    assign out = (~sel2 & out1) | (sel2 & out2);
endmodule
