`timescale 1ns / 1ps

module setzero(
    input [15:0] a,
    output z
    );
    wire w0, w1, w2, w3, w4, w5, w6, w7;
    wire w8, w9, w10, w11, w12, w13, w14;
    or
        or0001(w0, a[0], a[1]),
        or0203(w1, a[2], a[3]),
        or0405(w2, a[4], a[5]),
        or0607(w3, a[6], a[7]),
        or0809(w4, a[8], a[9]),
        or1011(w5, a[10], a[11]),
        or1213(w6, a[12], a[13]),
        or1415(w7, a[14], a[15]);
     or
        or01(w8, w0, w1),
        or23(w9, w2, w3),
        or45(w10, w4, w5),
        or67(w11, w6, w7);
     or
        or89(w12, w8, w9),
        orXI(w13, w10, w11);
     or
        or_out(z, or89, orXI);
endmodule
