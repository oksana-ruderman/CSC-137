//`include "xorgate.v"
module su2
(
  input [1:0] p,c,
  output [1:0] s
);
xorgate xor3 ( p[0], c[0], s[0] );
xorgate xor4 ( p[1], c[1], s[1] );

endmodule

