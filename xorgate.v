module xorgate
(
  input  a,b,
  output  out
);

wire not1, not2, out1, out2;

not nota( not1, a);
not notb( not2, b);
nor nor1( out1, a, b);
nor nor2( out2, not2, not1);
nor nor3( out, out1, out2 );

endmodule

