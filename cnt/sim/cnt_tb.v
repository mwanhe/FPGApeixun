`timescale  1ns/1ps

module   cnt_tb();
 
reg  clk     ;
reg  rst_n   ;

wire   [3:0]   cnt_out  ;

initial
begin
     clk   =   0;//信号初始化
     rst_n =   0;
     #123
     rst_n =   1;
end

//clk：50Mhz   T：20ns

always  #10 clk = ~clk  ;

cnt  cnt_inst(

    .clk      (clk),
    .rst_n    (rst_n),
    .cnt_out  (cnt_out)

);

endmodule
