`include "pgu_2bits.v"
`include "cgu_2bits.v"
`include "su_2bits.v"
module cla_2bits
(
  input [1:0]  a,b,
  input ci,
  output s0, s1, cout
);
wire c0;
wire [1:0] p, g;

pgu_2bits pgu1(a, b, p, g);
cgu_2bits cgu1(p, g, ci, c, c0, cout);
su_2bits su1(p, ci, c0,s0, s1);

endmodule

