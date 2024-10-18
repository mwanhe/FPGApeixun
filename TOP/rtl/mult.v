module   mult(

     input   wire   [8:0]  mult_in1 ,
     input   wire   [8:0]  mult_in2 ,
     
     output   wire   [17:0]  mult_out 
	 
);

assign   mult_out = mult_in1 * mult_in2  ;


endmodule 

