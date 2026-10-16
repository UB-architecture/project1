`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 12:38:28 PM
// Design Name: 
// Module Name: adder_4
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


module adder_4(
    output [3:0] s,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
    );
    wire w01, w12, w23;
    adder_1(s[0], w01, a[0], b[0], cin);
    adder_1(s[1], w12, a[1], b[1], w01);
    adder_1(s[2], w23, a[2], b[2], w12);
    adder_1(s[3], cout, a[3], b[2], w23);
endmodule
