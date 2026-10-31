`timescale 1ns / 1ps

module pc(
    output reg [15:0] out_adr,
    input [15:0] in_adr,
    input clock,
    input reset
    );
    initial begin
        out_adr = 16'h0000;
    end
    always @(reset) begin
        out_adr = 16'h0000;
    end
    always @(posedge clock) begin
        out_adr = in_adr;
    end
endmodule
