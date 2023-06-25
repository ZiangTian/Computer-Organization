module forward (

    // ex hazard
    input EX_MEM_RegWrite,
    input [4:0] EX_MEM_rd,
    input [4:0] ID_EX_rs1,
    input [4:0] ID_EX_rs2,

    // memory hazard
    input MEM_WB_RegWrite,
    input [4:0] MEM_WB_rd,

    // output
    input [1:0] forwardA,
    input [1:0] forwardB
);

    wire ex_hazard_rs1, ex_hazard_rs2;
    wire mem_hazard_rs1, mem_hazard_rs2;

    assign ex_hazard_rs1 = (EX_MEM_RegWrite && (EX_MEM_rd != 0) && (EX_MEM_rd == ID_EX_rs1));
    assign ex_hazard_rs2 = (EX_MEM_RegWrite && (EX_MEM_rd != 0) && (EX_MEM_rd == ID_EX_rs2));

    assign mem_hazard_rs1 = (MEM_WB_RegWrite && (MEM_WB_rd != 0) && (MEM_WB_rd == ID_EX_rs1));
    assign mem_hazard_rs2 = (MEM_WB_RegWrite && (MEM_WB_rd != 0) && (MEM_WB_rd == ID_EX_rs2));

    // assign forwardA = (ex_hazard_rs1) ? 2'b10 : (mem_hazard_rs1) ? 2'b01 : 2'b00;
    // assign forwardB = (ex_hazard_rs2) ? 2'b10 : (mem_hazard_rs2) ? 2'b01 : 2'b00;
    
endmodule