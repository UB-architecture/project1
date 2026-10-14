`timescale 1ns / 1ps
`define DELAY #0
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 12:35:46 PM
// Design Name: 
// Module Name: adder_1
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

// ADDS TWO 1 BIT VALUES w/ CARRY
module adder_1(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    wire w0, w1, w2, w3;
    xor `DELAY
        g0(w0, a, b),
        g1(w1, w0, cin);
    and `DELAY
        g2(w2, a, b),
        g3(w3, w2, c);
    or `DELAY
        g4(cout, w3, w2);
endmodule
