`include "datapath.v"
module tester();
reg clk, reset, start, mode, e, m, s2, s1, s0;
reg [7:0] A, B, C, D;
wire ovf;
datapath dp1(A, B, C, D, clk, reset, s2, s1, s0, e, m);
initial begin
clk = 0; reset = 1;
start = 1;
//mode = x;

#100 reset = 0;
end
always
begin
#5clk = ~clk;
end
initial begin
#100 start = 1; mode = 0; A = 8'h01; B = 8'h02; C = 8'h01; D = 8'h02; 

#100 $finish;
end
endmodule
