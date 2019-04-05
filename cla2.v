`include "pgu2.v"
`include "cgu2.v"
`include "su2.v"

module cla2 
(
  input [1:0]  a,b,
  input ci,
  output [1:0] s,
  output co1, co0
);
  wire [1:0] c, p, g;
 
assign co0 = c[0];
assign co1 = c[1];

pgu2 pgu2(a, b, p, g);
cgu2 cgu2(p, g, ci, c);
su2 su2(p, {c[0], ci}, s);
endmodule

