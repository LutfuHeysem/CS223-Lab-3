`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 11:10:03 PM
// Design Name: 
// Module Name: TwoToOneMux
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


module TwoToOneMux( input wire a, b,
                    input wire sel,
                    output wire out
    );
    assign out = (sel) ? b : a;
endmodule
