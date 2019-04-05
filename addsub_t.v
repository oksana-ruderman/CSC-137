`include "addsub.v"

module tester();

reg [7:0] a, b;
reg m;
wire [7:0] s, e;
wire ovf;

addsub addsub1(a, b, m, s, ovf);
invert inv2(b, m, e);
initial begin
$display ("a, b, m, s, ovf");
$monitor("%h   %h  %b  %h  %b  %h", a, b, m, s, ovf, e);

a = 8'hFF; b = 8'h01; m = 1'b0;
#10
a = 8'h7F; b = 8'h01; m = 1'b0;
#10
a = 8'h01; b = 8'hFF; m= 1'b0;
#10
a = 8'h55; b = 8'hAA; m = 1'b0;
#10
a = 8'h80; b= 8'h01; m = 1'b1;
#10
a = 8'h6C; b = 8'hCA; m = 1'b0;
#10
$finish;
end
endmodule

