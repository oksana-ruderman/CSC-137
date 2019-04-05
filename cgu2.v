module cgu2 
(
  input [1:0] p, g,
  input ci,
  output [1:0] c
);
assign c[0] = (p[0] | g[0]) & (g[0] | ci);
assign c[1] = (g[1]) | (g[0] & p[1]) | (p[1] & p[0] & ci);

endmodule

