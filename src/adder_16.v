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
    adder_8(s[0:7], w01, a[0:7], b[0:7], cin);
    adder_8(s[8:15], cout, a[8:15], b[8:15], w01);
endmodule
