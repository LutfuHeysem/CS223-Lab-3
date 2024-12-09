`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 01:21:03 AM
// Design Name: 
// Module Name: EightToOneMuxTestBench
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


module EightToOneMuxTestBench;
    reg [7:0] in;
    reg [2:0] sel;

    wire out;

    EightToOneMux uut (
        .in(in), 
        .sel(sel), 
        .out(out)
    );
    
    integer i, j;
    initial begin
        $display("Time | in | sel | out");
        $monitor("%0t | %b | %b | %b", $time, in, sel, out);
        in = 0;
        sel = 0;
        for (i = 0; i < 8; i = i+1) begin
            in = 1 << i;
            for (j = 0; j < 8; j = j+1) begin
                sel = j;
                #10;
            end
        end
    end
endmodule
