module mux2to1
(
  input [7:0] A, sum,
  input s0,
  output reg [7:0] out
);

always@(*)
begin
  if ( s0 == 0)
     out = A;
  else 
     out = sum;
end
endmodule


