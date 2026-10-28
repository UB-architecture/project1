`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 01:00:53 PM
// Design Name: 
// Module Name: adder_8
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


module adder_8(
    output [7:0] s,
    output cout,
    input [7:0] a,
    input [7:0] b,
    input cin
    );
    wire w01;
    adder_4 aa(s[3:0], w01, a[3:0], b[3:0], cin);
    adder_4 bb(s[7:4], cout, a[7:4], b[7:4], w01);
endmodule
