`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 02:44:51 PM
// Design Name: 
// Module Name: test_lsl
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


module test_lsl();
    reg [15:0] a;
    reg [15:0] shamt;
    wire [15:0] out;
    shift_left poop(out[15:0], a, shamt);
    
    initial begin
    a = 9;shamt = 0; #100;
    shamt = 1; #100;
    shamt = 14; #100;
    shamt = 15; #100;
    shamt = 16; #100;
    end
endmodule
