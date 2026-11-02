`timescale 1ns / 1ps

module test_cpu();
    
    wire [15:0] w_alu, pc_out, w_ins;
    reg clock, reset;
    
    wire [15:0] w_wd;

    wire [15:0] pc_in;
    pc counter(pc_out, pc_in, clock, reset);

    instruction_memory im(w_ins, pc_out);
    
    wire w_regw, w_memr, w_memw, w_useim, w_usem;
    wire w_j, w_b, w_beq;
    wire [1:0] w_aluop;
    control_block cb(
        w_regw, w_memr, w_memw, w_useim, w_usem, 
        w_j, w_b, w_beq,
        w_aluop,
        w_ins[15:12], w_ins[3:0]
        );
    
    wire [15:0] w_drt, w_drs;
    register_file rf(
        w_drt, w_drs,
        w_ins[11:8], w_ins[7:4], w_ins[11:8],
        w_wd,
        w_regw,
        clock
    );
    
    wire [15:0] w_se;
    sign_extend_4_to_16 se(w_se, w_ins[3:0]);
    
    wire [15:0] w_d_rt_or_c;
    mux16_2_1 mux0(w_d_rt_or_c, w_drt, w_se, w_useim);
    
    wire w_z;
    alu alu0(w_alu, w_z, w_d_rt_or_c, w_drs, w_aluop);
    
    wire [15:0] w_dm;
    data_memory dm(w_dm, w_alu, w_drt, w_memw, clock);
    
    jump_control jc(pc_in, pc_out, w_se, w_z, w_j, w_b, w_beq);
    
    mux16_2_1 rf_sel(w_wd, w_alu, w_dm, w_usem);
    
    integer i;
    initial begin
        $monitor("PC=%h\n\tALUOut=%h\n\tPCOut=%h",pc_out,w_alu,pc_in);
        reset = 0; clock = 0; #40;
        for (i = 0; i < 60; i = i + 1) begin
            clock = clock ^ 1; #20;
        end
    end
endmodule
