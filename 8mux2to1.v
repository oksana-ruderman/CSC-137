module 8mux2to1
(
  input s0,
  input [7:0] A, sum,
  output [7:0] out
);

always@(*)
begin
  if ( s0 == 8'b00000000)
     out = A;
  else 
     out = sum;
end
endmodule


