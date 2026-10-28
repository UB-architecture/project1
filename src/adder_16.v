`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 01:02:54 PM
// Design Name: 
// Module Name: adder_16
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


module adder_16(
    output [15:0] s,
    output cout,
    input [15:0] a,
    input [15:0] b,
    input cin
    );
    wire w01;
    adder_8 aa(s[7:0], w01, a[7:0], b[7:0], cin);
    adder_8 bb(s[15:8], cout, a[15:8], b[15:8], w01);
endmodule
