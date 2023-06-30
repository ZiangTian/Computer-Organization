module INT_SAVER (
    input INT,
    input [31:0] ID_EX_PC,

    input [31:0] cause,

    output reg [31:0] SEPC,
    output reg [31:0] SCAUSE
);

    always @(*) begin
        if (INT) begin
            SEPC <= ID_EX_PC;
            SCAUSE <= cause;
        end
    end
    
endmodule