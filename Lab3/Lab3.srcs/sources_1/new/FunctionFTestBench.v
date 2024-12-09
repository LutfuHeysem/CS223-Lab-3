`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 01:51:56 PM
// Design Name: 
// Module Name: FunctionFTestBench
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


module FunctionFTestBench;
    reg [4:0] in;
    wire F;
    FunctionF uut(.in(in), .F(F));
    
    initial begin
    $monitor("Time = %0t, in = %b, F = %b", $time, in, F);
        in = 5'b00000; #10
        in = 5'b00001; #10
        in = 5'b00010; #10
        in = 5'b00011; #10
        in = 5'b00100; #10
        in = 5'b00101; #10
        in = 5'b00110; #10
        in = 5'b00111; #10
        in = 5'b01000; #10
        in = 5'b01001; #10
        in = 5'b01010; #10
        in = 5'b01100; #10
        in = 5'b01101; #10
        in = 5'b01110; #10
        in = 5'b01111; #10
        in = 5'b10000; #10
        in = 5'b10001; #10
        in = 5'b10010; #10
        in = 5'b10011; #10
        in = 5'b10100; #10
        in = 5'b10101; #10
        in = 5'b10110; #10
        in = 5'b10111; #10
        in = 5'b11000; #10
        in = 5'b11001; #10
        in = 5'b11010; #10
        in = 5'b11100; #10
        in = 5'b11101; #10
        in = 5'b11110; #10
        in = 5'b11111; #10
    $finish; 
    end 
endmodule
