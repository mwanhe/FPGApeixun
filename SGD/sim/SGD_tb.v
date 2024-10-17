`timescale 1ns/1ps

module SGD_tb();

reg   clk   ;
reg   rst_n  ;
wire   led   ;

initial 
begin
    clk   = 1'b0;  //信号初始化
    rst_n = 1'b0;
    #123
    rst_n = 1'b1;
end

//clk:50MHz
always  #10  clk = ~clk  ; 


SGD
#(
    .cnt_max(24_999_999)//0.5ms
)


SGD_inst(
    .clk   (clk),
    .rst_n (rst_n),
	
    .led   (led)
);


endmodule
