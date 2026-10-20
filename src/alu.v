`timescale 1ns / 1ps

module alu(
    input [15:0] a,
    input [15:0] b,
    input [4:0] op,
    input [1:0] aluop,
    output [15:0] r,
    output z
    );
    wire w0, w1;
    wire wr;
    
    // ADD/SUB
    not(w0, b);    
    mux16_2_1(w1, w0, a, aluop[0]);
    adder_16(wr, 0, w1, a, aluop[0]);
    setzero(z, wr);
    
    // AND
    and(w2, a, b);
    
    // SLL
    shift_left(w3, a, b);
    
    // Select AND or SLL
    mux16_2_1(w4, w3, w2, op[0]);
    
    // Select ADDER or LOGIC as output
    mux16_2_1(r, wr, w4, op[1]);
    
endmodule
