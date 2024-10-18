module  not_gate_tb();

reg       A  ;

wire      Y  ;


//tb专用赋值关键字 initial
initial 
begin
     A  = 0 ;//信号初始化
	 #100
	 A  = 1;
	 #200
	 A  = 0;
	 #123
	 A  = 1;
	 #256
	 A  = 0;
	 #1000
	 A  = 1;
end 
//实例化调用
 not_gate  not_gate_1          
(                          
    .A (A) ,    
    .Y (Y)      
);



endmodule
