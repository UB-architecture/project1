`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 04:36:03 PM
// Design Name: 
// Module Name: sign_extend_4_to_16
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


module sign_extend_4_to_16(
        output wire[15:0] extended,
        input wire[3:0] in_wire
    );
    assign extended[15:4] = (in_wire[3] == 1) ? 12'b111111111111 : 12'b000000000000;
    assign extended[3:0] = in_wire;
endmodule