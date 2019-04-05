`include "su2.v"

module tester ();

reg [1:0] p;
reg ci, c0;
wire [1:0] s;

su2 su1 ( p, ci, c0, s );

initial begin //start the test
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("ci p[0] s[0] c0 p[1] s[1]");
$monitor ("%b    %b    %b    %b    %b    %b", ci, p[0], s[0],c0, p[1], s[1]);

//test
c0 =0; p[0] = 0;  p[1] = 0;ci = 0; 
#1
c0 = 0; p[0] =1;  p[1] = 1; ci =0;
#1
c0 = 1; p[0] = 0;  p[1] = 0; ci = 1;
#1
c0 = 1; p[0] = 1;  p[1] = 1; ci = 1;
#1

$finish;
end
endmodule

