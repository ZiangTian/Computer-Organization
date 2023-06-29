`include "ctrl_encode_def.v"
// data memory
module dm(clk, DMWr, addr, din, dout,DMType,PC);
   input          clk;
   input          DMWr;
   input  [31:0]   addr;
   input  [31:0]  din;
   input  [2:0]  DMType;
   input [31:0] PC;
   output [31:0]  dout;
     
   reg [31:0] dmem[1023 : 0];
   reg [31:0] dout0;
   
integer i;
initial begin
		for(i=0; i <2048; i = i+1) begin
			dmem[i] = 32'b0;
		end
end
    always @(posedge clk)
      if (DMWr) begin
	//$display("dm_DMType = %b", DMType);
        // dmem[addr[8:2]] <= din;
         //$display("din %h,", din); 
	case(DMType)
		`dm_word:                 dmem[addr[31:2]] = din;
		`dm_halfword:             begin
					  	case(addr[1])
					  		1'b0:dmem[addr[31:2]][15:0] <= din[15:0];
					  		1'b1:dmem[addr[31:2]][31:16] <= din[15:0];
						endcase
					  end
		`dm_halfword_unsigned:    begin
					  	case(addr[1])
					  		1'b0:dmem[addr[31:2]][15:0] <= din[15:0];
					  		1'b1:dmem[addr[31:2]][31:16] <= din[15:0];
						endcase
					  end
		`dm_byte:                 begin
					  	case(addr[1:0])
					  		2'b00:dmem[addr[31:2]][7:0] <= din[7:0];
					  		2'b01:dmem[addr[31:2]][15:8] <= din[7:0];
					  		2'b10:dmem[addr[31:2]][23:16] <= din[7:0];
					  		2'b11:dmem[addr[31:2]][31:24] <= din[7:0];
						endcase
					  end
		`dm_byte_unsigned:        begin
					  	case(addr[1:0])
					  		2'b00:dmem[addr[31:2]][7:0] <= din[7:0];
					  		2'b01:dmem[addr[31:2]][15:8] <= din[7:0];
					  		2'b10:dmem[addr[31:2]][23:16] <= din[7:0];
					  		2'b11:dmem[addr[31:2]][31:24] <= din[7:0];
						endcase
					  end
	endcase
	$display("dmem[0x%8X] = 0x%8X,", addr << 2, din); 
	$display("PC = %h: addr = %h, data = %h", PC, addr << 2, dmem[addr[31:2]]); 
      end
   
  // assign dout = dmem[addr[8:2]];
    always @(*) begin
	if(addr[31:2]>4'd1023)
	dout0=0;
	else
	case(DMType)
		`dm_word:                  dout0 = dmem[addr[31:2]];
		`dm_halfword:		   begin
					  	case(addr[1])
					  		1'b0:	dout0 = {{16{dmem[addr[31:2]][15]}},dmem[addr[31:2]][15:0]};
					  		1'b1:	dout0 = {{16{dmem[addr[31:2]][31]}},dmem[addr[31:2]][31:16]};
						endcase
					   end
		`dm_halfword_unsigned:     begin
					  	case(addr[1])
					  		1'b0:	dout0 = {16'b0,dmem[addr[31:2]][15:0]};
					  		1'b1:	dout0 = {16'b0,dmem[addr[31:2]][31:16]};
						endcase
					   end
		`dm_byte:                  begin
					  	case(addr[1:0])
					  		2'b00:	dout0 = {{24{dmem[addr[31:2]][7]}},dmem[addr[31:2]][7:0]};
					  		2'b01:	dout0 = {{24{dmem[addr[31:2]][15]}},dmem[addr[31:2]][15:8]};
							2'b10:	dout0 = {{24{dmem[addr[31:2]][23]}},dmem[addr[31:2]][23:16]};
							2'b11:	dout0 = {{24{dmem[addr[31:2]][31]}},dmem[addr[31:2]][31:24]};
						endcase
					   end
		`dm_byte_unsigned:         begin
					  	case(addr[1:0])
					  		2'b00:	dout0 = {24'b0,dmem[addr[31:2]][7:0]};
					  		2'b01:	dout0 = {24'b0,dmem[addr[31:2]][15:8]};
							2'b10:	dout0 = {24'b0,dmem[addr[31:2]][23:16]};
							2'b11:	dout0 = {24'b0,dmem[addr[31:2]][31:24]};
						endcase
					   end
	endcase
	// $display("dm: %h", dout0);
    end
    assign dout = dout0;
endmodule
