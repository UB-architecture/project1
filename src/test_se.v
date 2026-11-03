`timescale 1ns / 1ps

module test_se();
    reg [15:0] num;
    reg j;
    wire [15:0] out;
    
    sign_extend_4_to_16 poop(out, num, j);
    initial begin
        $monitor("a=%h, out=%h, j=%b", num, out, j);
        num = 16'h0008; j=0; #100;  // expected FFF8
        num = 16'h0007; #100;       // expected 0007
        num = 16'hA5E8; #100;       // expected FFF8
        num = 16'hA5E7; #100;       // expected 0007
        num = 16'h0F33; j=1; #100;  // expected FF33
        num = 16'h00FF; #100;       // expected 00FF
        num = 16'hF0AB; #100;       // 00AB
        num = 16'h0800; #100;       // F800
    end
endmodule
