`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 11:12:07 PM
// Design Name: 
// Module Name: FourToOneMux
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


module FourToOneMux(input wire [3:0] in,
                    input wire [1:0] sel,
                    output wire out
    );
    wire mux1out, mux2out;
    
    TwoToOneMux mux1 (.a(in[0]), .b(in[1]), .sel(sel[0]), .out(mux1out));
    TwoToOneMux mux2 (.a(in[2]), .b(in[3]), .sel(sel[0]), .out(mux2out));
    TwoToOneMux mux3 (.a(mux1out), .b(mux2out), .sel(sel[1]), .out(out));

endmodule
