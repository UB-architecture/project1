`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 04:08:12 PM
// Design Name: 
// Module Name: data_memory
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


module data_memory(
        output wire[15:0] ReadData,
        input wire[15:0] Addr, WriteData,
        input wire MemW
    );
    reg [7:0] memory [0:1023];
    
    
    //potentially fill out the memory with data here
    initial
    begin
    end
    
    assign ReadData[15:8] = memory[Addr];
    assign ReadData[7:0] = memory[Addr+1];
    
    always @(*)
    begin
        if (MemW == 1) begin
            memory[Addr] = WriteData[15:8];
            memory[Addr+1] = WriteData[7:0];
        end
    end
endmodule