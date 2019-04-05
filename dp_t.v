`include "seqcirc.v"

module tester();
reg reset, clk, start, mode;
reg[7:0] A, B, C, D;
wire [7:0] result;
wire done;

seqcirc seqcirc1(reset, clk, start, mode, A, B, C, D, result, done);

initial begin
$display ("Oksana Ruderman. Section 3");
$display("Time,  start,  mode,  A,      B,      C,      D,      result,   done");
$monitor("%4d    %b      %b      %h     %h      %h       %h,     %h,        %b", $time, start, mode, A, B, C, D, result, done);

reset = 0;
clk = 0;
start = 1;
A = 8'h01; B = 8'h02; C = 8'hFF; D = 8'hFE; mode = 1'b0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
reset = 1;
#200
reset = 0;
clk = 1'b0;
start = 1;
A = 8'hFE; B = 8'h01; C = 8'h01; D = 8'h04; mode = 1'b1;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
reset = 1;
#200
reset = 1'b0;
clk = 1'b0;
start = 1;
A = 8'h01; B = 8'hFF; C = 8'hFF; D = 8'hFF; mode = 1'b0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
reset = 1;
#200
reset = 1'b0;
clk = 1'b0;
start = 1;
A = 8'hFF; B = 8'h01; C = 8'hFF; D = 8'h01; mode = 1'b1;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
clk = 0;
#200
clk = 1;
#200
#8000
$finish;
end
endmodule


