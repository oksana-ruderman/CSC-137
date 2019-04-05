module project1
(
  input x, y, z,
  output out
);

wire out1, ny, out2;

or or1 ( out1, x,  y );
not nty ( ny, y );
or or2 ( out2, ny, z );
and n3( out, out1, out2 );

endmodule
