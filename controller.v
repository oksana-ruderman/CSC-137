module controller
(
  input reset, clk, mode, start,
  output reg e, m, s0, s1, s2, done
);

parameter start0 = 2'b00,
          start1 = 2'b01,
          start2 = 2'b10,
          finish = 2'b11;

reg [1:0] cs, ns;


always@(*)
        casex(cs)
        start0:
                if(start == 1) begin
                        ns = start1;
                        e = 1;
                        done = 0;
                        m = 1'bx;
                        s0 = 0;
                        s1 = 1'bx;
                        s2 = 1'bx;
                end
                else begin
                        ns = start0;
                        e = 1;
                        done = 0;
                        m = 1'bx;
                        s0 = 0;;
                        s1 = 1'bx;
                        s2 = 1'bx;
                end
        start1:
                if(mode == 1) begin
                        ns = start2;
                        e = 1;
                        done = 0;
                        m = 1;
                        s0 = 1;
                        s1 = 0;
                        s2 = 1'bx;
                end
                else begin
                        ns = start2;
                        e = 1;
                        done = 0;
                        m = 0;
                        s0 = 1;
                        s1 = 0;
                        s2 = 1'bx;
                end
        start2:
                 if(mode == 1) begin
                        ns = finish;
                        e = 1;
                        done = 0;
                        m = 0;
                        s0 = 1;
                        s1 = 1;
                        s2 = 0;
                end
                else begin
                        ns = finish;
                        e = 1;
                        done = 0;
                        m = 1;
                        s0 = 1;
                        s1 = 1;
                        s2 = 0;
                end
        finish:
                if(mode == 1) begin
                        ns = start0;
                        e = 1;
                        done = 1;
                        m = 1;
                        s0 = 1;
                        s1 = 1;
                        s2 = 1;
                end
                else begin
                        ns = start0;
                        e = 1;
                        done = 1;
                        m = 1;
                        s0 = 1;
                        s1 = 1;
                        s2 = 1;
                end
        endcase


always@(posedge clk, posedge reset)
begin
        if (reset == 1)
                cs <= start0;
        else
                cs <= ns;
end
endmodule
