`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 10:30:58 PM
// Design Name: 
// Module Name: ThreeToOneMuxTestBench
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


module ThreeToOneMuxTestBench; 

    reg [2:0] in;
    reg [1:0] sel;
    wire out;
    ThreeToOneMuxBehavioral uut( .in(in), .sel(sel), .out(out));
    
    initial begin
        $monitor("Time = %0t, in = %b, sel = %b, out = %b", $time, in, sel, out);
        in = 3'b101; sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        $finish;
    end
endmodule
