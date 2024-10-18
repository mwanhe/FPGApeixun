module   ctrl(

   input   wire   clk    ,
   input   wire   rst_n  ,
   input   wire   key_ok    ,//按键信号

   output   reg    system_en //指令信号
    
);

always  @ (posedge clk , negedge rst_n)

begin
     if(~rst_n)
        system_en <= 1'b0  ;
     else if (key_ok)  //按键按下，指令发生变化
	     system_en <= ~system_en  ;
	 else
        system_en <= system_en  ;	
end




endmodule 