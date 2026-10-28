`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 12:32:09 PM
// Design Name: 
// Module Name: test_adder1
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


module test_adder1();
    reg a, b, cin;
    wire s, cout;
    adder_1 poopy(s, cout, a, b, cin);
    initial begin
    #0 a=1;b=0;cin=0;
    #100 a=1;b=1;
    #100 a=0;b=1;
    #100 a=0;b=0;cin=1;
    #100 a=1;b=0;
    #100 a=1;b=1;
    #100 a=0;b=1;
    end
endmodule
