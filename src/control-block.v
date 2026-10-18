`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2026 05:45:49 PM
// Design Name: 
// Module Name: control-block
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

// ALU Ops:
// 00 = add
// 01 = sub
// 10 = shift left
// 11 = and

// RegW = whether to write to out register or not
// MemR = whether to read memory or not
// MemW = whether to write to memory or not
// UseIm = 0 -> use register 1-> use immediate
// UseM = 0-> write ALU out to reg, 1-> write memread out to reg

//Takes in bits 15:12 (opcode) and 3:0 (func code for R-type) of instruction and generates control signals 
module control_block(
    output reg RegW, MemR, MemW, UseIm, UseM,
    output reg[1:0] ALUOp,
    input [3:0] opcode,
    input [3:0] funccode
    );
    
    always@(*)
    begin
    case(opcode)
    4'b0000: begin //R-type instruction
        RegW = 1;
        MemR = 0;
        MemW = 0;
        UseIm = 0;
        UseM = 0;
        ALUOp = funccode[1:0];
    end
    4'b0001: begin //Load Word
        RegW = 1;
        MemR = 1;
        MemW = 0;
        UseIm = 1;
        UseM = 1;
        ALUOp = 2'b00;
    end
    4'b0010: begin //Store Word
        RegW = 0;
        MemR = 0;
        MemW = 1;
        UseIm = 1;
        UseM = 0;
        ALUOp = 2'b00;
    end
    4'b0011: begin //Add Imm
        RegW = 1;
        MemR = 0;
        MemW = 0;
        UseIm = 1;
        UseM = 0;
        ALUOp = 2'b00;
    end
    4'b0100: begin //BEQ
        RegW = 0;
        MemR = 0;
        MemW = 0;
        UseIm = 0;
        UseM = 0;
        ALUOp = 2'b01; //subtract, other logic handled in top right of datapath
    end
    4'b0101: begin //BNE
        RegW = 0;
        MemR = 0;
        MemW = 0;
        UseIm = 0;
        UseM = 0;
        ALUOp = 2'b01; //subtract, other logic handled in top right of datapath
    end
    4'b0110: begin //Jump, nothing ALU matters
        RegW = 0;
        MemR = 0;
        MemW = 0;
        UseIm = 0;
        UseM = 0;
        ALUOp = 2'b00;
    end
    default: begin // Unreachable
        RegW = 0;
        MemR = 0;
        MemW = 0;
        UseIm = 0;
        UseM = 0;
        ALUOp = 2'b00;
    end
    endcase
    end
    
endmodule
