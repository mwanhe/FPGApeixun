module  SGD

#(                            //#()括号内部可添加参数
   parameter  cnt_max = 32'd24_999_999
)

(

     input   wire   clk     ,
     input   wire   rst_n   ,
     
     output  reg    led     



);
//cnt:0.5s计数器

reg[31:1] cnt  ;
always  @  (posedge clk , negedge rst_n)
begin

    if(~rst_n)
       cnt <= 32'd0;
    else if (cnt == cnt_max)//cnt == 32'd24_999_999
       cnt <= 32'd0;
    else
       cnt <= cnt + 1'd1;
end

//led:0.5s状态转换
always @ (posedge clk , negedge rst_n)
begin
if(~rst_n)
led <= 1'b0 ;
else if(cnt == cnt_max)//时间到达0.5S
led <= ~led ;          //小灯状态翻转
else
led <= led  ;
end

endmodule
