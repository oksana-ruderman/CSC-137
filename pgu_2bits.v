`include "project21a.v"
module pgu_2bits (a,b,p,g); 

 input [1:0] a, b;
 output [1:0] p, g;

wire [1:0] p,g;

project21a xor1 (a[0], b[0], p[0]);
project21a xor2 (a[1], b[1], p[1]);
and a1 ( g[0], a[0], b[0]);
and a2 ( g[1], a[1], b[1]);
endmodule
