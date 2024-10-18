module   key_XD(

   input   wire   clk    ,
   input   wire   rst_n  ,
   input   wire   key    ,

   output   reg   key_ok    

   
);

//中间变量
reg  [31:0]  cnt  ;
always  @ (posedge clk , negedge rst_n)
begin

     if(~rst_n)
         cnt <= 32'd0  ;
     else if (key == 1'b1)//未稳定在按下的低电平状态
         cnt <= 32'd0  ;
		 
	 else if (cnt == 32'd999_999)//稳定在低电平20ms
	     cnt <= cnt  ;
	 else
	     cnt <= cnt + 1'b1  ;		 
end

always  @ (posedge clk , negedge rst_n)
begin

     if(~rst_n)
        key_ok <= 1'b0  ;
     else if (cnt == 32'd999_998)
	     key_ok <= 1'b1  ;
	 else
        key_ok <= 1'b0  ;	 
end


   
endmodule
