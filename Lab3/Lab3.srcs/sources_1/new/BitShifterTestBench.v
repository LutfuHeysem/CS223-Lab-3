`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 01:53:47 PM
// Design Name: 
// Module Name: BitShifterTestBench
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


module BitShifterTestBench;
    reg [3:0] in; 
    reg shift;
    wire [3:0] out;
    wire k;
    BitShifter uut (.in(in), .shift(shift), .k(k), .out(out));
    
    initial begin
        $monitor("Time = %0t, in = %b, shift = %b, out = %b, k = %b", $time, in, shift, out, k);
        shift = 0; in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0011; #10;
        in = 4'b0100; #10;
        in = 4'b0101; #10;
        in = 4'b0110; #10;
        in = 4'b0111; #10;
        in = 4'b1000; #10;
        in = 4'b1001; #10;
        in = 4'b1010; #10;
        in = 4'b1011; #10;
        in = 4'b1100; #10;
        in = 4'b1101; #10;
        in = 4'b1110; #10;
        in = 4'b1111; #10;
        shift = 1; in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0011; #10;
        in = 4'b0100; #10;
        in = 4'b0101; #10;
        in = 4'b0110; #10;
        in = 4'b0111; #10;
        in = 4'b1000; #10;
        in = 4'b1001; #10;
        in = 4'b1010; #10;
        in = 4'b1011; #10;
        in = 4'b1100; #10;
        in = 4'b1101; #10;
        in = 4'b1110; #10;
        in = 4'b1111; #10;
        $finish;
    end
endmodule
