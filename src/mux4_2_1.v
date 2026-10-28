`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:34:10 PM
// Design Name: 
// Module Name: mux4_2_1
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


module mux4_2_1(
    output [3:0] out,
    input [3:0] a,
    input [3:0] b,
    input sel
    );
    mux2 aa(out[0], a[0], b[0], sel);
    mux2 bb(out[1], a[1], b[1], sel);
    mux2 cc(out[2], a[2], b[2], sel);
    mux2 dd(out[3], a[3], b[3], sel);
endmodule
