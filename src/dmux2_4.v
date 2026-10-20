`timescale 1ns / 1ps

module dmux2_4(
    output a,
    output b,
    output c,
    output d,
    input {1:0] sel
    );
    wire wX0, wX1, w0X, w1X;
    dmux2
        d0(wX0, wX1, sel[0]);
        d1(w0X, w1X, sel[1]);
    and
        a1(a, w0X, wX0); // 00
        a2(b, w0X, wX1); // 01
        a3(c, w1X, wX0); // 10
        a4(d, w1X, wX1); // 11
endmodule
