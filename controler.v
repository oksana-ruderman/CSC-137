`include "nsgsc.v"
`include "ogsc.v"
`include "ffsc.v"

module controler
(
  input reset, clk, start, mode,
  output e, m, s0, s1, s2, done
);
wire [1:0] q, d;
nsgsc nsg1(start, mode, q, d);
//ogsc og1(start, mode,q, e, m, s0, s1, s2, done);
ffsc ff1(d[1], reset, clk, q[1]);
ffsc ff2(d[0],clk, reset, q[0]);
ogsc og1 (start, mode, q, e, m, s0, s1, s2, done);

endmodule
