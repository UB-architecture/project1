`timescale 1ns / 1ps

module btop(
    input clk,
    input btn_c, btn_u,
    
    output [15:0] leds,
    output [3:0] anodes,
    output [6:0] cathode
    );

    wire [15:0] cpu_pc;
    wire [15:0] cpu_inst;
    wire [15:0] cpu_alu;
    
    wire step_clk;
    
    cpu my_cpu(  //Modify this to fit your specific CPU module 
        .clock(step_clk),   
        .reset(btn_u),
        .pc_out(cpu_pc),
        .w_ins(cpu_inst),
        .w_alu(cpu_alu)
    );
    
    reg btn_sync_0, btn_sync_1;
    reg [15:0] debounce_counter;
    reg btn_state, btn_prev;
    
    always @(posedge clk) begin
        // synchronize button to 100MHz clock
        btn_sync_0 <= btn_c;
        btn_sync_1 <= btn_sync_0;
        btn_prev   <= btn_state;
        
        // debounce counter
        if (btn_sync_1 == btn_state) begin
            debounce_counter <= 0;
        end else begin
            debounce_counter <= debounce_counter + 1;
            if (debounce_counter == 16'hFFFF) begin
                btn_state <= btn_sync_1;
            end
        end
    end
    
    // generate a single pulse that lasts for exactly one 100MHz clock cycle
    assign step_clk = (btn_state == 1'b1) && (btn_prev == 1'b0);

    
    
endmodule
