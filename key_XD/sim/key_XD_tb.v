`timescale  1ns/1ps

module   key_XD_tb();

   reg      clk    ;
   reg      rst_n  ;
   reg      key    ;

   wire     key_ok ; 
   
   
initial
begin

     clk     =    1'b0 ;
     rst_n   =    1'b0 ;
     key     =    1'b1 ;
	 #123
     rst_n   =    1'b1 ;
	 #1000
	 key     =    1'b0;
	 #2000
	 key     =    1'b1;
	 #2000
	 key     =    1'b0;
	 #123000
	 key     =    1'b1;
	 #2000
	 key     =    1'b1;
	 #2000
	 key     =    1'b0;
	 #123000
	 key     =    1'b1;
	 #1350
	 key     =    1'b0;
	 #30_000_000
	 key     =    1'b1;
	 #1000
	 key     =    1'b0;
	 #2000
	 key     =    1'b1;
	 #12200
	 key     =    1'b0;
	 
end


always  #10  clk = ~clk ;

key_XD   key_XD_inst(

   .clk      (clk),
   .rst_n    (rst_n) ,
   .key      (key) ,
  
  
   .key_ok   (key_ok) 
   
);

endmodule
