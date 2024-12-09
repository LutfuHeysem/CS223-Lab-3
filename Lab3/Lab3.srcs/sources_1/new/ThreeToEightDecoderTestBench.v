`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 12:02:19 AM
// Design Name: 
// Module Name: ThreeToEightDecoderTestBench
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


module ThreeToEightDecoderTestBench;
    reg [2:0] in;
    reg en;
    wire [7:0] out;
    
    ThreeToEightDecoderStructural uut(.in(in), .en(en), .out(out));
    
    initial begin
        $monitor("Time = %0t, en = %b, in = %b, out = %b", $time, en, in, out);
            en = 0; in = 3'b000; #10;
            in = 3'b001; #10;
            in = 3'b010; #10;
            in = 3'b011; #10;
            in = 3'b100; #10;
            in = 3'b101; #10;
            in = 3'b110; #10;
            in = 3'b111; #10;
            en = 1; in = 3'b000; #10;
            in = 3'b001; #10;
            in = 3'b010; #10;
            in = 3'b011; #10;
            in = 3'b100; #10;
            in = 3'b101; #10;
            in = 3'b110; #10;
            in = 3'b111; #10;
        $finish;
    end
endmodule
