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
    initial
    begin
    end
    
    assign Instruction[15:8] = memory[PC];
    assign Instruction[7:0] = memory[PC+1];

endmodule
