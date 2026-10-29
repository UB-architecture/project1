`timescale 1ns / 1ps

module pc(
    output reg [15:0] out_adr,
    input [15:0] in_adr
    );
    assign out_adr = in_adr;
endmodule
