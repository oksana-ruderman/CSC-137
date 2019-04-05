//`include "xorgate.v"
module pgu2 
(
 input [1:0] a, b,
 output [1:0]  p, g
);
//wire  p,g;

xorgate xor1 (a[0], b[0], p[0]);
and a1 (g[0], a[0], b[0]);
xorgate xor2 (a[1], b[1], p[1]);
and a2 ( g[1], a[1], b[1]);
endmodule
