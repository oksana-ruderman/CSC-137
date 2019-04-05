`include "project21a.v"

module tester ();
reg a, b;

reg [2:0] k;
wire out;


project21a pr21a ( a, b, out );

initial begin
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("Time x y out");
$monitor ("%4d %9d", $time, out);

for ( k = 0; k <= 3; k = k+1 ) begin
 #1 a = k[1]; b = k[0]; $display("%4d %b %b", $time, a, b);
end

#10 $finish;
end
endmodule

