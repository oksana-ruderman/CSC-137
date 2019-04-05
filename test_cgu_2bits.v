`include "cgu_2bits.v"

module tester ();

reg [1:0] g, p, c;
wire [1:0] carry;

cgu_2bits cgu2bits ( g, p, c, carry );

initial begin //start the test
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("g[0] p[0] c[0] carry[0] g[1] p[1] c[1] carry[1]");
$monitor ("%b    %b    %b    %b        %b    %b    %b    %b", g[0], p[0], c[0],carry [0], g[1], p[1], c[1], carry[1]);

//test
g[0] =0; p[0] = 0; c[0] = 0; g[1] = 0; p[1] = 0; c[1] = 0; 
#1
g[0] = 0; p[0] =0; c[0] = 1; g[1] = 0; p[1] = 0; c[1] = 1;
#1
g[0] = 0; p[0] = 1; c[0] = 0; g[1] =0; p[1] = 1; c[1] = 0;
#1
g[0] = 0; p[0] = 1; c[0] = 1; g[1] = 0;p[1] = 1; c[1] = 1;
#1
g[0] = 1; p[0] = 0; c[0] = 0; g[1] = 1;p[1] = 0; c[1] = 0;
#1
g[0] = 1; p[0] = 0; c[0] = 1; g[1] = 1; p[1] = 0; c[1] = 1;
#1
g[0] = 1; p[0] = 1; c[0] = 0; g[1] = 1; p[1] = 1; c[1] = 0;
#1
g[0] = 1; p[0] =1; c[0] =1; g[1] = 1; p[1] = 1; c[1] =1;
#1
$finish;
end
endmodule

