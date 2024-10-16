module  led(
       
	   output  wire   led0  ,
       output  wire   led1  ,
       output  wire   led2  ,
       output  wire   led3  


);
//赋值关键字assign
assign   led0 = 0  ;//点亮led0
assign   led1 = 1  ;//熄灭led1
assign   led2 = 1  ;//熄灭led2
assign   led3 = 0  ;//点亮led3


endmodule
