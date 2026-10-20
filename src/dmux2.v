`timescale 1ns / 1ps

module dmux2(
    output a,
    output b,
    input sel
    );
    not(a, sel);
    not(b, a);
endmodule
