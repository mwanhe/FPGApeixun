module  led_SGD

#(                            //#()括号内部可添加参数
   parameter  cnt_max = 32'd24_999_999 //数值对应0.5s
)

(

     input   wire   clk     ,
     input   wire   rst_n   ,
     input   wire   system_en  ,
     output  reg    led1   



);

//cnt:0.5s计数器

reg[31:0] cnt  ;
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
led1 <= 1'b1 ;
else if(system_en == 1'b0)//指令为0
led1 <= 1'b1 ;          //闪光灯熄灭
else if(cnt == cnt_max)//时间到达0.5S
led1 <= ~led1 ;          //小灯状态翻转
else
led1 <= led1  ;
end

endmodule
