module MEM_WB (
    input clk,
    input rst,
    
    // info to be passed to WB
    input [31:0] PC_in,
    // input [31:0] inst_in,
    // input [4:0] rs1_in,
    // input [4:0] rs2_in,
    input [4:0] rd_in,
    input [31:0] alures_in,
    input [31:0] read_data_in, // read from memory

    // corresponding outputs
    output reg[31:0] PC_out,
    // output reg[31:0] inst_out,
    // output reg[4:0] rs1_out,
    // output reg[4:0] rs2_out,
    output reg[4:0] rd_out,
    output reg[31:0] alures_out,
    output reg[31:0] read_data_out, // read from memory

    // control signals for wb
    input [1:0] RegWrite_in,
    output reg[1:0] RegWrite_out,
    input [2:0] WDSel_in,
    output reg[2:0] WDSel_out,

    // control for stall
    input stall
    // input flush
);

always @(posedge clk or negedge rst) begin
    if(!rst 
    // || flush
    ) 
        begin 
            // inst_out <= 0; 
            // PC_out <= 0;
            // rs1_out <= 0;
            // rs2_out <= 0;
            rd_out <= 0;
            alures_out <= 0;
            read_data_out <= 0;
            RegWrite_out <= 0;
            WDSel_out <= 0; 
        end
    else if(!stall)
        begin
            // inst_out <= inst_in; 
            // PC_out <= PC_in;
            // rs1_out <= rs1_in;
            // rs2_out <= rs2_in;
            rd_out <= rd_in;
            alures_out <= alures_in;
            read_data_out <= read_data_in;
            RegWrite_out <= RegWrite_in;
            WDSel_out <= WDSel_in;
        end

  end
    
endmodule