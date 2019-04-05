module mux3to1
(
  input [7:0] B, C, D,
  input s1, s2,
  output  [7:0] out
);

wire [7:0] v;

mux2to1 mux1( C, D, s2, v);
mux2to1 mux2(B, v, s1, out);
endmodule

