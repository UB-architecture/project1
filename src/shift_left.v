`timescale 1ns / 1ps

module shift_left(
    output reg [15:0] out,
    input [15:0] a,
    input [15:0] shamt
    );
    always@(*)
    begin
        out = a << shamt;
    end
endmodule
