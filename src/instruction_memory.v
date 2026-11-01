`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 03:55:06 PM
// Design Name: 
// Module Name: instruction_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module instruction_memory(
        output wire[15:0] Instruction,
        input wire[15:0] PC
    );
    reg [7:0] memory [0:1023];
    
    
    //potentially fill out the memory with instructions here
    initial begin
        memory[0] = 8'hFF; // Dummy first instruction
        memory[1] = 8'hAA;
        
        memory[2] = 8'h00; // ADD r0 + r1 ( 1 + 2 )
        memory[3] = 8'h10; // r0 = 3
        
        memory[4] = 8'h20; // SW r0, (r5)
        memory[5] = 8'h50;
        
        memory[6] = 8'h1A; // LW r10, (r5)
        memory[7] = 8'h50;
        
        memory[8] = 8'h0A; // ADD r10, r10
        memory[9] = 8'hA0; // 6
        
        memory[10]=8'h3A;
        memory[11]=8'hA1;
        
        memory[12]=8'h5A;
        memory[13]=8'h8E;
        
        memory[14]=8'h02;
        memory[15]=8'h12;
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
