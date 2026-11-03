`timescale 1ns / 1ps

module sign_extend_4_to_16(
        output wire[15:0] extended,
        input wire[15:0] in_wire,
        input j
    );
    wire [15:0] w_4to16, w_12to16;
    
    assign w_4to16[15:4] = (in_wire[3] == 1) ? 12'b111111111111 : 12'b000000000000;
    assign w_4to16[3:0] = in_wire;
    
    assign w_12to16[15:12] = (in_wire[11] == 1) ? 4'hF : 4'h0;
    assign w_12to16[11:0] = in_wire;
    
    mux16_2_1 poop(extended, w_4to16, w_12to16, j);
endmodule