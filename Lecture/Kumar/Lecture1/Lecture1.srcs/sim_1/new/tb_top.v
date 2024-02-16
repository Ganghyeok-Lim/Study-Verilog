`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/16 10:27:55
// Design Name: 
// Module Name: tb_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(

    );

reg a, b;
wire y;

top dut(a,b,y);

initial begin

    a = 0;
    b = 0;

    #10
    a = 0;
    b = 1;

    #10
    a = 1;
    b = 0;

    #10
    a = 1;
    b = 1;
    
    #10
    a = 0;
    b = 0;

end

endmodule