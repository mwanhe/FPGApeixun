module  D_ff(

   input   wire   clk   ,
   input   wire   rst_n ,
   input   wire   D     ,

   output   reg   Q   
   //使用assign对信号赋值 wire
   //使用always对信号赋值 reg
   
);
//时序逻辑
always   @  (posedge  clk or negedge  rst_n)
begin    
    if  (rst_n == 0)
        Q  <=  0  ;
    else
		Q  <=  D  ;

end
/*
组合逻辑   =   阻塞赋值
时序逻辑  <=   非阻塞逻辑

a=1  b=10  c=100
阻塞赋值
begin 
   b = a;
   c = b;
end

非阻塞赋值
begin 
   b <= a;
   c <= b;
end

*/

endmodule
