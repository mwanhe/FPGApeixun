module  not_gate            //module 模块的开始  后跟模块名
(                           //（）内部描述端口序列
    input   wire   A  ,    //输入端口  信号类型（wire:金属线）信号名
    output  wire   Y       //输出端口  信号类型 （wire：金属线）信号名
);
//逻辑功能描述区
//赋值关键字 assign: 分配、指派、指定
assign   Y = ~A  ;



endmodule     //endmodule  模块的结果