`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2024 10:43:29 PM
// Design Name: 
// Module Name: mux_2x1_3bit
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


module mux_2x1_3bit(
input x0,y0,x1,y1,x2,y2,s0,
output f0,f1,f2);

mux_2x1 M0 (.x1(x0),.x2(y0),.s(s0),.f(f0));
mux_2x1 M1 (.x1(x1),.x2(y1),.s(s0),.f(f1));
mux_2x1 M2 (.x1(x2),.x2(y2),.s(s0),.f(f2));

endmodule
