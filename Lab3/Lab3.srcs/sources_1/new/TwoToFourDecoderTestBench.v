`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 10:59:58 PM
// Design Name: 
// Module Name: TwoToFourDecoderTestBench
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


module TwoToFourDecoderTestBench;
    reg [1:0] in;
    reg en;
    wire [3:0] out;
    TwoToFourDecoderBehavioral uut (.en(en), .in(in), .out(out));
    
    initial begin
        $monitor("Time = %0t, en = %b, in = %b, out = %b", $time, en, in, out);
        en = 0; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;
        en = 1; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;
        $finish;
    end
endmodule
