//`include "project21a.v"
module su_2bits
(
  input [1:0] p,
  input ci,c0,
  output s0, s1
);

project21a xor3 ( ci, p[0], s0 );
project21a xor4 ( c0, p[1], s1 );

endmodule

