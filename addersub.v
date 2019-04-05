`include "inverter.v"
`include "adder.v"
module addersub
(
 output [7:0] s,
input  [7:0] a,b,
input m
);
wire [7:0] e;
wire c6, c7;
//assign ovf = c7 ^ c6;

adder u1(s, c7, c6, a, e, m);
inverter u2(e, b, m);
endmodule
