`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/17 21:19:59
// Design Name: 
// Module Name: top
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


module bram_mux (
 input sel , clk, we,
 input [7:0] pass_ip,
 input [10:0] addr,
 input [7:0] din,
 output reg [7:0] dout );
 
 reg preselectR, selectR, weR;
 reg [7:0] temp, mem [2047:0];
 
 always @(posedge clk)
 begin
 if (we)
  mem[addr] <= din;
  temp      <= mem[addr];
  weR       <= we;
  preselectR <= sel;
  selectR <= preselectR;
  dout <= selectR ? temp : pass_ip;
 end
endmodule