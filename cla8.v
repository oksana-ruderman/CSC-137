`include "cla2.v"
module cla8 
(
 input [7:0] a, b,
 input ci,
 output [7:0] s,
 output c6, c7
);
wire [7:0] c;

assign c6 = c[6];
assign c7 = c[7];

cla2 cla3( a[1:0], b[1:0], ci, s[1:0], c[1], c[0]);
cla2 cla4(a[3:2], b[3:2], c[1], s[3:2], c[3], c[2]);
cla2 cla5(a[5:4], b[5:4], c[3], s[5:4], c[5], c[4]);
cla2 cla6(a[7:6], b[7:6], c[5], s[7:6], c[7], c[6]);
endmodule
