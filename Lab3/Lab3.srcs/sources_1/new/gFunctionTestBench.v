`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 09:18:06 PM
// Design Name: 
// Module Name: gFunctionTestBench
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


module gFunctionTestBench;

    reg [2:0] in;
    wire out;
    gFunctionWithTwoToOneMuxBehavioral uut(.in(in), .g(out));
    
    initial begin
        $monitor("Time = %0t, in = %b, out = %b", $time, in, out);
        in = 3'b000; #10
        in = 3'b001; #10
        in = 3'b010; #10
        in = 3'b011; #10
        in = 3'b100; #10
        in = 3'b101; #10
        in = 3'b110; #10
        in = 3'b111; #10
        $finish;
    end
endmodule
