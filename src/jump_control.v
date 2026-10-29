`timescale 1ns / 1ps

module jump_control(
    output [15:0] out,
    input [15:0] pc, offset,
    input z, beq, j
    );
    wire [15:0] w0, w1;
    wire w2, w3, w4;
    wire wx, wxx;
    
    adder_16 g0(w0, wx, pc, 16'h0002, 0); // add 2 for non jump
    adder_16 g1(w1, wxx, w0, offset, 0); // add 2 for non jump

    not g2(w2, z);
    and g3(w3, w2, beq);
    or g4(w4, j, w3);
    
    mux16_2_1 g5(out, w0, w1, w4);
endmodule
