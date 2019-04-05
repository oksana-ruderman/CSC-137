module inv8
(
  input [7:0] b,
  input m,
  output reg [7:0] e
);

always @* begin
  if (m ==1)begin
     if ( b[0] ==0) begin
        e[0] = 1;
     end else begin
        e[0] = 0;
     end
     if(b[1] ==0) begin
        e[1] = 1;
     end else begin
        e[1] = 0;
     end
     if(b[2] == 0) begin
        e[2] =1;
     end else begin
        e[2] = 0;
     end
     if (b[3] ==0) begin
        e[3] = 1;
     end else begin
        e[3] = 0;
     end
     if(b[4] ==0) begin
        e[4] = 1;
     end else begin
        e[4] = 0;
     end
     if(b[5] == 0) begin
        e[5] = 1;
     end else begin
        e[5] = 0;
     end
     if(b[6] == 0) begin
        e[6] = 1;
     end else begin
        e[6] = 0;
     end
     if(b[7] == 0) begin
        e[7] = 1;
     end else begin
        e[7] = 0;
     end
   end else begin
        e = b;
   end
end
endmodule

