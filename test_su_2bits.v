`include "su_2bits.v"

module tester ();

reg [1:0] c, p;
wire [1:0] s;

su_2bits su2bits ( c, p, s );

initial begin //start the test
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("c[0] p[0] s[0] c[1] p[1] s[1]");
$monitor ("%b    %b    %b    %b    %b    %b", c[0], p[0], s[0],c[1], p[1], s[1]);

//test
c[0] =0; p[0] = 0; c[1] = 0; p[1] = 0; 
#1
c[0] = 0; p[0] =1; c[1] = 0; p[1] = 1;
#1
c[0] = 1; p[0] = 0; c[1] = 1; p[1] = 0;
#1
c[0] = 1; p[0] = 1; c[1] = 1; p[1] = 1;
#1

$finish;
end
endmodule

