`include "cla8.v"
module tester ();

reg [7:0] a, b;
reg ci;
wire [7:0] s;
wire [7:0] carry;


cla8 hybrid (a, b, ci, s, carry); //change carry to carryout
initial begin //start the test
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("a[0] b[0] a[1] b[1]  ci  s[0] s[1]  carry[0] carry[1]");//change c[0] c[1] to carryout
$monitor ("%b    %b     %b   %b      %b    %b   %b     %b      %b ", a[0], b[0], a[1], b[1], ci, s[0], s[1], carry[0], carry[1]);
//test
a = 8'hFF; b = 8'h01; ci = 0;
#10
a = 8'hFF; b =8'h01; ci = 1;
#10
//a[0] = 0; b[0] = 0; a[1] = 0; b[1] =1; ci = 0;
//#1
//a[0] = 0; b[0] = 0; a[1] = 0; b[1] = 1; ci = 1;
//#1
//a[0] = 0; b[0] = 0; a[1] = 1;b[1] = 0; ci = 0;
//#1
//a[0] = 1; b[0] = 1; a[1] = 1; b[1] = 1; ci = 0;
//#1
//a[0] = 1; b[0] = 1; a[1] = 1; b[1] = 1; ci = 0;
//#1
//a[0] = 1; b[0] =1; a[1] = 1; b[1] = 1; ci =1;
//#1
//a[0] =1; b[0] =1; a[1] =1; b[1] = 1; ci = 0;
//#1
$finish;
end
endmodule

