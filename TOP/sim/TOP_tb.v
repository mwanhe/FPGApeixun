`timescale  1ns/1ps


module  TOP_tb();
     reg  [7:0]   A   ;
     reg  [7:0]   B   ;
     reg  [7:0]   C   ;
     reg  [7:0]   D   ;
                      
    wire  [17:0]  Y   ;
	
initial 
 begin
 
 A = 8'd0  ;
 B = 8'd0  ;
  C = 8'd0  ;
   D = 8'd0  ;

end

//每隔100ns随机产生数据范围0~255的随机数

always #100 A = {$random} % 256 ;
always #100 B = {$random} % 256 ;
always #100 C = {$random} % 256 ;
always #100 D = {$random} % 256 ;

TOP TOP_1(
.A(A),
.B(B),
.C(C),
.D(D),

.Y(Y)
);



endmodule
