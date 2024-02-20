`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/20 11:02:39
// Design Name: 
// Module Name: tb
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

//// Arithmetic operators : +, -, *, /, %
//// Logical operators : ~, &, |, ^
//// Expression operators : &&, ||, !, >, >=, <, <=, ==, !=
//// Shift : >>, <<
//// Concat : {, }
//// Repetition operator : {f{v}}
//// Ternary operator : () ? a : b;

module tb;

reg [3:0] din1 = 4'd5, din2 = 4'd6;
reg [4:0] add = 0;
integer sub = 0;
reg [7:0] mul = 0;

initial begin
add = din1 + din2;
sub = din1 - din2;
mul = din1 * din2;
#1;

$display("[Arithmetic operation] Value of Add : %0d, Sub : %0d, Mul : %0d", add, sub, mul);
$display("din1 : %0b, din2 : %0b", din1, din2);
$display("[Logical operation] Value of AND : %0b, OR : %0b, XOR : %0b, XNOR : %0b", (din1 & din2), (din1 | din2), (din1 ^ din2), (din1 ~^ din2));

end



endmodule