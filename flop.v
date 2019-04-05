module flop 
(
  input [7:0] d,
  input  e, reset, clk,
  output reg [7:0] q
);
always@(posedge clk, posedge reset)
begin
  if (e == 1)
begin
  if (reset == 1)
   q <= 8'h00;
  else
   q <= d;
end
end
endmodule
