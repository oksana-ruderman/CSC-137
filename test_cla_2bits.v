`include "cla_2bits.v"

module tester ();

reg [1:0] a, b;
reg ci;
wire s0,s1,cout;

//pgu_2bits pgu1( a[0], b[0],p, g);
//cgu_2bits cgu1 ( g, p, ci[0], c );
//su_2bits su1(p, c, s);
cla_2bits cla1 (a, b, ci,s1,s0, cout);
initial begin //start the test
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("a[0] b[0] a[1] b[1] ci s0 s1 cout");
$monitor ("%b   %b   %b  %b  %b   %b   %b   %b", a[0], b[0], a[1], b[1], ci, s0, s1, cout);

//test
a[0] =0; b[0] = 0; ci =0; a[1] = 0; b[1] = 0;
#1
a[1] = 0; a[0] =0; b[1] = 0; b[0] = 0; ci = 1;
#1
a[1] = 0; a[0] = 0; b[1] = 0; b[0] =0; ci = 0;
#1
//g[0] = 0; p[0] = 1; c[0] = 1; g[1] = 0;p[1] = 1; c[1] = 1;
//#1
//g[0] = 1; p[0] = 0; c[0] = 0; g[1] = 1;p[1] = 0; c[1] = 0;
//#1
//g[0] = 1; p[0] = 0; c[0] = 1; g[1] = 1; p[1] = 0; c[1] = 1;
//#1
//g[0] = 1; p[0] = 1; c[0] = 0; g[1] = 1; p[1] = 1; c[1] = 0;
//#1
//g[0] = 1; p[0] =1; c[0] =1; g[1] = 1; p[1] = 1; c[1] =1;
//#1
$finish;
end
endmodule

