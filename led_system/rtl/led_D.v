module   led_D(

   input   wire   system_en    ,//在指令信号为0


   output   wire    led0 
    
);
//在指令信号为0  小灯点亮  led0低电平（逻辑0）

assign   led0 = system_en  ;


endmodule 