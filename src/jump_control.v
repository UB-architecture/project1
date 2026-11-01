`timescale 1ns / 1ps

module jump_control(
    output [15:0] out,
    input [15:0] pc, offset,
    input z, j, b, beq
    );
    wire [15:0] w0, w1;
    wire w2, w3, w4;
    wire wx, wxx;
    wire [15:0] offset_shifted;
    
    assign offset_shifted = offset << 1;
    
    adder_16 g0(w0, wx, pc, 16'h0002, 0);  // add 2 for non jump
    adder_16 g1(w1, wxx, w0, offset_shifted, 0);   // add 2 for non jump

    xor g2(w2, z, beq);
    not g3(w3, w2);
    and g4(w4, w3, b);
    
    or g5(w5, w4, j);
    
    mux16_2_1 g6(out, w0, w1, w5);
endmodule
