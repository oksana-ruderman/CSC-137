module project3
(
  input x,y,z,
  output out
);

  assign out = (x | y) & (~y | z);

endmodule 
