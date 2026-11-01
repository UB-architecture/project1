`timescale 1ns / 1ps

module alu(
    output [15:0] r,
    output z,
    input [15:0] rt, // a
    input [15:0] rs, // b
    input [1:0] op // ALUop
    );
    wire [15:0] w0, w1, w2, w3, w4;
    wire [15:0] wr, wx;
    
    not16 g0(w0, rt);
    mux16_2_1 g1(w1, rt, w0, op[0]);
    adder_16 g2(wr, wx, rs, w1, op[0]);
    setzero g3(z, wr);
    
    // and
    and16 g4(w2, rs, rt);
    
    // shift
    shift_left g5(w3, rt, rs);
    
    // sel
    mux16_2_1 g6(w4, w3, w2, op[0]);
    mux16_2_1 g7(r, wr, w4, op[1]);
endmodule
