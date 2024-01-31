`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2024 12:03:21 AM
// Design Name: 
// Module Name: mux_4x1_3bit
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


module mux_4x1_3bit(
input x1,x2,x3, y1,y2,y3,z1,z2,z3,w1,w2,w3,s0,s1,
output m1,m2,m3
    );
    wire g0,g1,g2;
    wire g3,g4,g5;
    mux_2x1_3bit N0 (.x0(x1),.y0(y1),.x1(x2),.y1(y2),.x2(x3),.y2(y3),.s0(s0),.f0(g0),.f1(g1),.f2(g2));
    mux_2x1_3bit N1 (.x0(z1),.y0(w1),.x1(z2),.y1(w2),.x2(z3),.y2(w3),.s0(s0),.f0(g3),.f1(g4),.f2(g5));
    mux_2x1_3bit N3 (.x0(g0),.y0(g3),.x1(g1),.y1(g4),.x2(g3),.y2(g5),.s0(s1),.f0(m1),.f1(m2),.f2(m3));

endmodule
