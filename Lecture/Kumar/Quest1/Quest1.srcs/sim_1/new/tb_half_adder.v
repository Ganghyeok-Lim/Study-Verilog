`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/16 11:25:35
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder(

    );
    
reg clk;
reg [3:0] ia, ib;
wire [3:0] os;
wire oc;

half_adder dut (.a(ia), .b(ib), .s(os), .c(oc));

initial clk = 0;
always #5 clk = ~clk;

integer i = 0;

initial begin
    for(i = 0; i < 10; i = i + 1) begin
        ia = $urandom;
        ib = $urandom;
        #10;
    end    
end    
    
endmodule
