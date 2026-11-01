`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 02:44:21 PM
// Design Name: 
// Module Name: register_file
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


module register_file(
        output wire[15:0] data_rt, data_rs,
        input wire[3:0] rt, rs, WriteReg,
        input wire[15:0] WriteData,
        input wire RegW, //whether or not to write to WriteReg
        input clock
    );
    reg [15:0] registers [0:15];
    
    assign data_rt = registers[rt];
    assign data_rs = registers[rs];
    
    always @(negedge clock) begin
        if (RegW == 1) begin
            registers[WriteReg] = WriteData;
        end
    end
    
    integer i;    
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            registers[i] = i + 1;
        end
    end
endmodule
