`timescale 1ns / 1ps
`define DELAY #0
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:31:54 PM
// Design Name: 
// Module Name: mux2
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


module mux2(
    output out,
    input a,
    input b,
    input sel
    );
    wire w0, w1, w2;
    not `DELAY
        not1(w0, sel);
    and `DELAY
        and1(w1, w0, a),
        and2(w2, sel, b);
    or `DELAY
        or1(out, w1, w2);
endmodule
