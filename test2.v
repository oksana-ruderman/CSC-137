`include "project2.v"

module tester();
reg x, y, z;

reg [3:0] k;
wire out;

project2 pr2 (x, y, z, out);

initial begin
$display ("Oksana Ruderman");
$display ("Sec 3: 5:30 - 6:45");
$display ("Time x y z out");
$monitor ("%4d %9d", $time, out);

for ( k = 0; k <= 7; k = k+1 ) begin
 #1 x = k[2]; y = k[1]; z = k[0]; $display ("%4d %b %b %b", $time, x, y, z);

end
#10 $finish;
end
endmodule
