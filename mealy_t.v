`include "mealy.v"

module tester();
    reg  clk,reset, x;
    wire z;

    mealy mealy1( x, clk,reset, z);

    initial begin
$monitor ("%4d:              z = %b", $time, z);
        clk = 0;
        reset = 0;
        x = 0;
        #10 reset = 1;
    end

    always 
begin
        #5clk = ~clk;
    end

    initial begin
                #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 1; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 1; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 1; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 1; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 1; $display("%4d: x = %b", $time, x);
        #10 x = 1; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 0; $display("%4d: x = %b", $time, x);
        #10 x = 1; $display("%4d: x = %b", $time, x);
        #10 $finish;
    end
endmodule
