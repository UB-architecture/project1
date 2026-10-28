`timescale 1ns / 1ps

module and4(
    output wire[3:0] out,
    input [3:0] a, b);
    and aa(out[0], a[0], b[0]);
    and bb(out[1], a[1], b[1]);
    and cc(out[2], a[2], b[2]);
    and dd(out[3], a[3], b[3]);
endmodule

module and16(
    output wire[15:0] out,
    input wire[15:0] a, b
    );
    and4 aa(out[3:0], a[3:0], b[3:0]);
    and4 bb(out[7:4], a[7:4], b[7:4]);
    and4 cc(out[11:8], a[11:8], b[11:8]);
    and4 dd(out[15:12], a[15:12], b[15:12]);
endmodule