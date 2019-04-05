module project2
(
  input x, y, z,
  output out
);

wire out1, ny, out2;

nor n1 ( out1, x,  y );
not n ( ny, y );
nor n2 ( out2, ny, z );
nor n3( out, out1, out2 );

endmodule
