`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:00:19 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input [15:0] a,
    input [15:0] b,
    input [4:0] op,
    output [15:0] r
    );
    wire w0, w1, w2, w3;
    
    // Create negative b
    not
        not1(w0, b);
    adder_16(w1, 0, w0, 1, 0);
    adder_16(w2, 0, w1, a, 0); // a - b
    
    adder_16(w3, 0, a, b, 0); // a + b
endmodule
