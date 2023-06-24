
// testbench for simulation
module xgriscv_tb();
    
    reg  clk, rstn;
    wire[32-1:0]	 pcW;
  
// instantiation of xgriscv 
   xgriscv_sc xgriscvp(clk, rstn, pcW);

   integer counter = 0;
   
   initial begin
       $readmemh("E:\One Drive\OneDrive - whu.edu.cn\Learning\computerOrg\lab_related\Computer-Organization\coursecodes\holidays\pl\pline\riscv32_sim7.hex", xgriscvp.U_imem.RAM);
      clk = 1;
      rstn = 1;
      #5 ;
      rstn = 0;
   end
   
  always begin
    #(50) clk = ~clk;
     
    if (clk == 1'b1) 
      begin
         counter = counter + 1;
         // comment these four lines for online judge
         //$display("clock: %d", counter);
         //$display("pc:\t\t%h", xgriscvp.pcF);  // pcF undeclared
         $display("instr:\t%h", xgriscvp.instr);
         $display("pcw:\t%h", pcW);
          if (pcW == 32'h000000ff) // set to the address of the last instruction
          begin
            //$display("pcW:\t\t%h", pcW);
            //$finish;
            $stop;
          end
      end
  end //end always
   
endmodule