module mealy_seq
(
  input clk, reset, x,
  output reg z
);

parameter A = 2'b00,
          B = 2'b01,
          C = 2'b10,
          D = 2'b11;

reg [1:0] cs, ns;

always@(*)
begin
    casex(cs)
    A: if (x == 1) begin
               ns = B;
               z = 0;
       end
       else begin
               ns = A;
               z = 0;
       end
    B: if (x == 0) begin
               ns = C;
               z = 0;
       end
       else begin
               ns = B;
               z = 0;
       end
    C: if (x == 1) begin
               ns = B;
               z = 0;
       end
       else begin
               ns = D;
               z = 0;
       end
    D: if (x == 1) begin
               ns = B;
               z = 1;
       end
       else begin
               ns = A;
               z = 0;
       end
    endcase
end

always@(posedge clk, posedge reset)
begin
    if (reset == 1)
         cs <= A;
    else
         cs <= ns;
end
endmodule
