`timescale 1ns/1ns
`include "JKflipflop.v"


module tb_jk;  
   reg j;  
   reg k;  
   reg clk; 

   jk_FF jk( j, k ,clk, q); 
  
   initial begin
        clk=0;
        forever #10 clk = ~clk;  
    end 
   
  
   initial begin  

    $dumpfile("tb_jk.vcd");
    $dumpvars(0,tb_jk);

        j = 1;
        k = 0;
        #100;

        j = 0;
        k = 0;
        #100;

        j = 0;
        k = 1;
        #100;

        j = 1;
        k = 1;
        #100;
   end  
  

endmodule