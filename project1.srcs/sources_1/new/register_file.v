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
        output wire[15:0] ReadRegData1, ReadRegData2,
        input wire[3:0] ReadReg1, ReadReg2, WriteReg,
        input wire[15:0] WriteData,
        input wire RegW //whether or not to write to WriteReg
    );
    reg [15:0] registers [0:15];

    assign ReadRegData1 = registers[ReadReg1];
    assign ReadRegData2 = registers[ReadReg2];
    
    always@(WriteData)
    begin
        if (RegW == 1) begin
            registers[WriteReg] = WriteData;
        end
    end
endmodule
