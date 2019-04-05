`include "inv8.v"
`include "cla8.v"
`include "xorgate.v"

module addsub
(
   input [7:0] a, b,
   input m,
   output [7:0] s,
   output ovf
);

wire [7:0] e;
wire c7, c6;
inv8 inv1(b,m,e);

cla8 cla8a(a, e, m, s, c7, c6);
xorgate xor4(c6, c7, ovf);

endmodule
