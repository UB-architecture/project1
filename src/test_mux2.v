`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 12:33:41 PM
// Design Name: 
// Module Name: test_mux2
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


module test_mux2(

    );
    reg [15:0] a, b;
    reg sel;
    wire [15:0] out;
    wire z;
    
    mux16_2_1 poop(out, a, b, sel);
    setzero poopy(z, a);
    initial begin
        a=0;b=0;sel=0; #100;
        a = 15; #100;
        a = 16'hFFFF; #100;
        b = 330; #100;
        a = 1020; #100;
        sel = 1; #100;
        a = 111; #100;
        b = 5; #100;
    end
    
    
//    reg [3:0] a, b;
//    reg sel;
//    wire [3:0] out;
    
//    mux4_2_1 poop(out, a, b, sel);
    
//    initial begin
//        a = 0; b = 0; sel = 0; #100;    // 0
//        a = 7; #100;                    // 7
//        a = 4'hF; #100;                 // F
//        b = 3; #100;
//        b = 4'hF; a = 9; #100;
//        a = 0; b = 0; sel = 1; #100;
//        a = 10; #100;
//        b = 3; #100;
//    end


//    reg a, b;
//    reg sel;
//    wire out;
    
//    mux2 poop(out, a, b, sel);
//    initial begin
//        a = 0; b = 0; sel = 0; #100;    // 0
//        a = 1; #100;                    // 1
//        b = 1; #100;                    // 1
//        a = 0; #100;                    // 0
//        a = 0; b = 0; sel = 1; #100;    // 0
//        a = 1; #100;                    // 0
//        b = 1; #100;                    // 1
//        a = 0; #100;                    // 1
//        a=0;b=0;sel=0;#100;
//    end
endmodule
