`timescale 1ns / 1ps

module test_jumpc();
    reg [15:0] adr, offset;
    reg z, j, beq;
    wire [15:0] out;
    
    jump_control gat(out, adr, offset, z, beq, j);
    
    initial begin
        adr = 16'h1000; offset = 25; z = 0; beq = 0; j = 0; #100;
        // BEQ not taken
        beq = 1; z = 1; #100;
        // BEQ taken
        z = 0; #100;
        // J
        z = 1; beq = 0; j = 1; #100;
        // Not J 
        j = 0; #100;
    end
endmodule
