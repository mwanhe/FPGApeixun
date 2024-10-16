`timescale  1ns/1ps

module  led_tb();

//输入信号统一使用res
//输出信号统一使用wire

         wire   A  ;//led0
         wire   B  ;//led1
         wire   C  ;//led2
         wire   D  ;//led3
//没有输入信号，不需要模拟输入的变化，直接观测输出信号

//调用待测试模块

led  led_inst(

       .led0(A)  ,
       .led1(B)  ,
       .led2(C)  ,
       .led3(D) 
);




endmodule
