module  TOP(

     input   wire  [7:0]   A   ,
     input   wire  [7:0]   B   ,
     input   wire  [7:0]   C   ,
     input   wire  [7:0]   D   ,
     
     output  wire  [17:0]  Y   


);		

wire   [8:0]   add_mult1  ;
wire   [8:0]   add_mult2  ;


//调用第一个加法器

add  add_1(

         .add_in1 (A),
         .add_in2 (B),
		
         .add_out (add_mult1)
);

//调用第二个加法器

add   add_2(

         .add_in1 (C),
         .add_in2 (D),
		 
         .add_out (add_mult2)
);

//调用乘法器模块

mult  mult_1(

     .mult_in1 (add_mult1) ,
     .mult_in2 (add_mult2) ,
     
     .mult_out (Y)
    
);


endmodule
