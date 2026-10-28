`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 02:25:07 PM
// Design Name: 
// Module Name: test_adder8
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


module test_adder8();
    reg [7:0] a, b;
    reg cin;
    wire [7:0] s;
    wire cout;
    adder_8 poop(s, cout, a, b, cin);
    
    initial begin
    #0 a=8'h02;b=8'h02;cin=0;
    #100 a=8'h10;b=8'h10;
    #100 a=8'h18;b=8'h08;
    #100 a=8'hFF;b=8'hFF;
    end
endmodule
