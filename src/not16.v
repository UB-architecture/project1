`timescale 1ns / 1ps

module not4(
    output wire[3:0] out,
    input [3:0] a);
    not aa(out[0], a[0]);
    not bb(out[1], a[1]);
    not cc(out[2], a[2]);
    not dd(out[3], a[3]);
endmodule

module not16(
    output wire[15:0] out,
    input wire[15:0] a
    );
    not4 aa(out[3:0], a[3:0]);
    not4 bb(out[7:4], a[7:4]);
    not4 cc(out[11:8], a[11:8]);
    not4 dd(out[15:12], a[15:12]);
endmodule
