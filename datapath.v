`include "addersub.v"
`include "mux3to1.v"
`include "mux2to1.v"
`include "flop.v"
module datapath
(
  input reset, clk, m, s0, s1, s2, e,
  input [7:0] A, B, C, D,
  output [7:0] result
);
wire  [7:0] v, outbcd, outadd, outa;

mux2to1 mux3(A, outadd, s0, outa);
mux3to1 mux4( B, C, D, s1, s2, outbcd);
addersub addersub1( outadd, result, outbcd, m);
flop flop1(outa, e, reset, clk, result);
endmodule
