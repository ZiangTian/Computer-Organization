module Stall (

    // load stall
    input[4:0] IF_IDrs1_in,
    input[4:0] IF_IDrs2_in,
    input ID_EXmemread_in,
    input[4:0] ID_EXrd_in,

    // register stall
    input ID_EXregwrite_in,

    output reg stallout

);
    always @(*) begin
        if(ID_EXmemread_in&&(ID_EXrd_in==IF_IDrs1_in||ID_EXrd_in==IF_IDrs2_in))
            stallout<=1;
        else if ((ID_EXregwrite_in)&&(ID_EXrd_in==IF_IDrs1_in||ID_EXrd_in==IF_IDrs2_in))
           stallout<=1;
        else
            stallout<=0;
    end
    
endmodule