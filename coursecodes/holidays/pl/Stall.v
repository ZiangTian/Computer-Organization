module Stall (

    // load stall
    input[4:0] IF_IDrs1_in,
    input[4:0] IF_IDrs2_in,
    input ID_EXmemread_in,
    input[4:0] ID_EXrd_in,

    // register stall
    input ID_EXregwrite_in,
    
    // when load
    input load,   // taken directly from ctrl

    // when branch taken
    input[2:0] NPCOp,

    output reg stallout,
    output reg flushout

);
// stall when load, and on load, stall for one cycle immediately
    always @(*) begin
        if (load && (ID_EXrd_in!=0)) begin
            if(ID_EXmemread_in&&(ID_EXrd_in==IF_IDrs1_in||ID_EXrd_in==IF_IDrs2_in))  // load
                stallout<=1;
            else if ((ID_EXregwrite_in)&&(ID_EXrd_in==IF_IDrs1_in||ID_EXrd_in==IF_IDrs2_in))
            stallout<=1;
            else
                stallout<=0;
        end
        else stallout<=0;
    end

    always @(*) begin
        if (NPCOp!=3'b000) flushout<=1;
        else flushout<=0;
    end
endmodule