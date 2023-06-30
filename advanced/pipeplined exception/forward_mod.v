module Forward (

    // ex hazard
    input EX_MEM_RegWrite,
    input [4:0] EX_MEM_rd,
    input [4:0] ID_EX_rs1,
    input [4:0] ID_EX_rs2,

    // memory hazard
    input MEM_WB_RegWrite,
    input [4:0] MEM_WB_rd,

    // output
    output reg [1:0] forwardA,
    output reg [1:0] forwardB

    // output [1:0] forwardA,
    // output [1:0] forwardB
);

    always @(*) begin
        if(MEM_WB_RegWrite && (MEM_WB_rd!=0) && (MEM_WB_rd==ID_EX_rs1))
            forwardA = 2'b01;
        else if(EX_MEM_RegWrite && (EX_MEM_rd!=0) && (EX_MEM_rd==ID_EX_rs1))
            forwardA = 2'b10;
        else forwardA = 2'b00;
    end

    always @(*) begin
        if(MEM_WB_RegWrite && (MEM_WB_rd!=0) && (MEM_WB_rd==ID_EX_rs2))
            forwardB = 2'b01;
        else if(EX_MEM_RegWrite && (EX_MEM_rd!=0) && (EX_MEM_rd==ID_EX_rs2))
            forwardB = 2'b10;
        else forwardB = 2'b00;        
    end
    
endmodule