`include "pgu_2bits.v"

module tester ();

reg [1:0] a, b;
wire [1:0] p, g;

pgu_2bits pgu2bits ( a, b, p, g );

initial begin //start the test
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("a[0] b[0] p[0] g[0] a[1] b[1] p[1] g[1]");
$monitor ("%b    %b    %b    %b    %b    %b     %b     %b", a[0], b[0], p[0], g[0], a[1], b[1], p[1], g[1]);

//test
a[0] =0; a[1] = 0; b[0] = 0; b[1] =0; 
#1
a[0] = 0; a[1] =0; b[0] = 1; b[1] = 1;
#1
a[0] = 1; a[1] = 1; b[0] = 0; b[1] = 0;
#1
a[0] = 1; a[1] = 1; b[0] = 1; b[1] = 1;
#1

$finish;
end
endmodule

