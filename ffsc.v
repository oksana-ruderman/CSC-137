module ffsc
(
    input d, reset, clk,
    output reg q
);

    always @(posedge clk, posedge reset)
    begin
        if (reset == 1) 
            q <= 0;
        else 
            q <= d;
        end
endmodule
