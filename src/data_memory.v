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
        input wire MemW,
        input clock
    );
    reg [7:0] memory [0:1023];
    
    assign ReadData[15:8] = memory[Addr];
    assign ReadData[7:0] = memory[Addr+1];
    
    integer i;
    initial begin
        for (i = 0; i < 100; i = i + 1) begin
            memory[i] = 0;
        end
    end
    
    always @(posedge clock)
    begin
        if (MemW == 1) begin
            memory[Addr] = WriteData[15:8];
            memory[Addr+1] = WriteData[7:0];
        end
    end
endmodule