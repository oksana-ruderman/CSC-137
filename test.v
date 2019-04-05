`include "full_adder.v"
module tester ();
reg a, b, cin;
reg [3:0] k;
wire s, cout;
full_adder fa1 ( a, b, cin, s, cout);
initial begin
$display ("Time a b cin cout s");
$monitor ("%4d  %b %b", $time, cout, s);

for (k = 0; k<= 7; k = k+1 ) begin
 #1 a = k[2]; b = k[1]; cin = k[0]; $display("%4d %b %b %b", $time, a, b, cin);
end
#10 $finish;
end
endmodule
