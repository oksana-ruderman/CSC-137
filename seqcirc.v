`include "datapath.v"
`include "controller.v"
module seqcirc
(
   input reset, clk, start, mode,
   input [7:0] A, B, C, D,
   output [7:0] result,
   output done
);
wire e, m, s0, s1, s2;
//datapath dp2(reset, clk, m, s0, s1, s2, e, A, B, C, D, result);
controller c3(reset, clk, mode, start, e, m, s0, s1, s2, done);
datapath dp1(reset, clk, m, s0, s1, s2, e, A, B, C, D, result);
endmodule
