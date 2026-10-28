`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 12:26:42 PM
// Design Name: 
// Module Name: test_alu
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


module test_alu();
    reg [15:0] a, b;
    wire [15:0] out;
    reg [1:0] op;
    wire zero;
    
    alu poop(out, zero, a, b, op);
    
    // ALU Ops:
    // 00 = add
    // 01 = sub
    // 10 = shift left
    // 11 = and
    initial begin
        // ADD
        a = 0; b = 1; op = 0; #100;
        a = 1; b = 1; #100;
        
        // SUB
        op = 1; #100;
        
        // Shift
        op = 2; #100;
        
        // And
        a = 16'h5AFF; b = 16'h9FA5; #100;
        op = 3; #100;
    end
endmodule
