module jk_FF ( input j, input k, input clk, output reg q);   
  
   always @(posedge clk)
    begin
    if (j == 0 && k == 0) 
    begin
        q = q;
    end

    else if (j == 0 && k == 1) 
    begin
        q = 1;
    end

    else if (j == 1 && k == 0) 
    begin
        q = 0;
    end

    else if (j == 1 && k == 1) 
    begin
        q = ~q;
    end
    
    end
endmodule 

