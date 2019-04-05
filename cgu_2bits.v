module cgu_2bits (g, p, ci, c, c0, cout);

  input [1:0] g,p;
  input ci;
  output [1:0] cout, c0,c;

assign cout[0] = (g[0] | p[0]) & (g[0] | ci);
assign cout[1] = (p[1] & c[1]) | g[1];

endmodule

