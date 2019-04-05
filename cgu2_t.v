`include "cgu2.v"

module tester ();

reg [1:0] p, g;
reg ci;
wire c0, carryout;

cgu2 cgu1 ( p, g, ci, c0, carryout );

initial begin //start the test
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("g[0] p[0] ci c0  g[1] p[1] ci  carryout");
$monitor ("%b    %b    %b   %b   %b   %b    %b   %b", g[0], p[0], ci,c0, g[1], p[1], ci, carryout);

//test
g[0] =0; p[0] = 0; ci = 0; g[1] = 0; p[1] = 0; 
#1
g[0] = 0; p[0] =0; ci = 1; g[1] = 0; p[1] = 0;
#1
g[0] = 0; p[0] = 1; ci = 0; g[1] =0; p[1] = 1; 
#1
g[0] = 0; p[0] = 1; ci = 1; g[1] = 0;p[1] = 1; 
#1
g[0] = 1; p[0] = 0; ci = 0; g[1] = 1;p[1] = 0; 
#1
g[0] = 1; p[0] = 0; ci = 1; g[1] = 1; p[1] = 0;
#1
g[0] = 1; p[0] = 1; ci = 0; g[1] = 1; p[1] = 1; 
#1
g[0] = 1; p[0] =1; ci =1; g[1] = 1; p[1] = 1;
#1
$finish;
end
endmodule

