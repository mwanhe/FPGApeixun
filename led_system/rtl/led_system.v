module   led_system(

   input   wire   clk    ,
   input   wire   rst_n  ,
   input   wire   key    ,

   output   wire    led0 ,
   output   wire    led1 
    
);

wire  key_ok ;
wire  system_en  ;


key_XD   key_XD_1(

   .clk    (clk   ),
   .rst_n  (rst_n ),
   .key    (key   ),
         
   .key_ok (key_ok)  

);

ctrl   ctrl_1(

   .clk        (clk      ),
   .rst_n      (rst_n    ),
   .key_ok     (key_ok   ),
  
   .system_en  (system_en)
    
);

led_D   led_D_1(
   
   .system_en   (system_en) ,
   
   
   .led0        (led0)
    
);
led_SGD

#(                           
   .cnt_max(32'd24_999_999)
)
led_SGD_1
(
     
     .clk       (clk      ) ,
     .rst_n     (rst_n    ) ,
     .system_en (system_en)  ,
     .led1      (led1     )



);
endmodule
