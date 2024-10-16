`timescale   1ns/1ps

module  D_ff_tb();


reg   clk   ;
reg   rst_n ;
reg   D     ;

wire   Q    ;

//initial对应信号赋值  reg
initial
begin

   clk   = 0  ; 
   rst_n = 0  ;
   D     = 0  ; 
   #123   
   rst_n = 1  ;
end

//clk  f=50Mhz  T=20ns  H,L  10ns
always  #10  clk = ~clk  ;  //时钟周期20ns时钟信号

//随机数

always  #333.333   D = {$random} % 2 ; 

D_ff D_ff_inst
(

   .clk       (clk)   ,
   .rst_n     (rst_n) ,
   .D         (D)     ,

   .Q         (Q)

);

  endmodule
