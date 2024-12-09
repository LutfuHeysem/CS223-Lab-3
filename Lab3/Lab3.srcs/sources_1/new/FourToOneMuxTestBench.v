`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 11:25:32 PM
// Design Name: 
// Module Name: FourToOneMuxTestBench
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


module FourToOneMuxTestBench;
        reg [3:0] in;
        reg [1:0] sel;
        wire out;
                              
    FourToOneMux uut(.in(in), .sel(sel), .out(out));
    
    initial begin
        $display("Time | in | sel | out");
        $monitor("%0t | %b | %b | %b", $time, in, sel, out);
        
        in = 4'b1010;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        
        $finish;
    end                              
endmodule
