`timescale 1ns / 1ps

module instruction_memory(
        output wire[15:0] Instruction,
        input wire[15:0] PC
    );
    reg [7:0] memory [0:1023];
    
    
    //potentially fill out the memory with instructions here
    initial begin
        memory[0] = 8'hFF; // Dummy first instruction
        memory[1] = 8'hAA;
        
        memory[2] = 8'h00;  // ADD r0 + r1 ( 1 + 2 )
        memory[3] = 8'h10;  // r0 = 3
        
        memory[4] = 8'h20;  // SW r0, (r5)
        memory[5] = 8'h50;
        
        memory[6] = 8'h1A;  // LW r10, (r5)
        memory[7] = 8'h50;
        
        memory[8] = 8'h0A;  // ADD r10, r10
        memory[9] = 8'hA0;  // 6
        
        memory[10]=8'h3A;   // ADDI r10, 1
        memory[11]=8'hA1;
        
        memory[12]=8'h5A;   // BNE r10, r8, -2
        memory[13]=8'h8E;
        
        memory[14]=8'h02;   // SLL r1, r1
        memory[15]=8'h12;
        
        memory[16]=8'h01;   // SUB r1, r1
        memory[17]=8'h11;
        
        memory[18]=8'h31;   // ADDI r1, r1, 1
        memory[19]=8'h11;
        
        memory[20]=8'h6F;   // JMP -9  (-18) (To start of program)
        memory[21]=8'hF6;
        
    end
    
    
/*
0x0010
0x2050
0x1A50
0x0AA0
0x3A01
0x5A8E
0x0310
*/
    assign Instruction[15:8] = memory[PC];
    assign Instruction[7:0] = memory[PC+1];

endmodule
