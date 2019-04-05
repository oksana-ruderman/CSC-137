`include "mealy_seq.v"

module tester();
    reg  clk,reset, x;
    wire z;

    mealy_seq mealy_seq1( clk,reset,x, z);

    initial begin
$monitor ("%4d:              z = %b", $time, z);
        clk = 0;
        reset = 1;
        x = 0;
        #10 reset = 0;
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
