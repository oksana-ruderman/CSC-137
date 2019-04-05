`include "cla2.v"
`include "xorgate.v"
module tester ();

reg [1:0] a, b;
reg ci;
wire [1:0] s;
wire [1:0] carry;
//wire [1:0] p, g;
//wire [1:0] carry;
cla2 cla1 (a, b, ci, s, carry1, carry2); //change carry to carryout
initial begin //start the test
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("a[0] b[0] a[1] b[1]  ci s[0] s[1]   carry1 carry2");//change c[0] c[1] to carryout
$monitor ("%b    %b     %b   %b      %b     %b    %b      %b      %b", a[0], b[0], a[1], b[1], ci, s[0], s[1], carry1, carry2);
//test
a[0] =0; b[0] = 0; a[1] = 0; b[1] = 0; ci = 0;
#1
a[0] = 0; b[0] =0; a[1] = 0; b[0] = 0; ci = 1;
#1
a[0] = 0; b[0] = 0; a[1] = 0; b[1] =1; ci = 0;
#1
a[0] = 0; b[0] = 0; a[1] = 0; b[1] = 1; ci = 1;
#1
a[0] = 0; b[0] = 0; a[1] = 1;b[1] = 0; ci = 0;
#1
a[0] = 1; b[0] = 1; a[1] = 1; b[1] = 1; ci = 0;
#1
a[0] = 1; b[0] = 1; a[1] = 1; b[1] = 1; ci = 0;
#1
a[0] = 1; b[0] =1; a[1] = 1; b[1] = 1; ci =1;
#1
a[0] =1; b[0] =1; a[1] =1; b[1] = 1; ci = 0;
#1
$finish;
end
endmodule

