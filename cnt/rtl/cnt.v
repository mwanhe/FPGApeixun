module   cnt(

   input   wire   clk    ,
   input   wire   rst_n  ,
   
   output   reg  [3:0]  cnt_out

);
//cnt_out:0~9循环计数器
always  @ (posedge clk , negedge rst_n)
begin

    if (~rst_n)//rst_n == 0
       cnt_out <= 4'd0  ;//默认32`d
    else if (cnt_out == 4'd0)
       cnt_out <= 4'd0 ;
    else
	   cnt_out <= cnt_out + 1'b1 ;
	
end


endmodule
