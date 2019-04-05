module project21a
(
  input  a,b,
  output  p
);

wire not1, not2, out1, out2;

not noty( not2, b);
not notx( not1, a);
nor nor1( out1, a, b);
nor nor2( out2, not2, not1);
nor nor3( p, out1, out2 );

endmodule

