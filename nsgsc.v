module nsgsc
(
  input start, mode,
  input [1:0] q,
  output reg [1:0] d
);

parameter start0 = 2'b00,
          start1 = 2'b01,
          start2 = 2'b10,
          finish = 2'b11;

always@(*)
begin
    casex(q)
        start0:  
                if(start == 1)
                begin
                   d = start1;
                end
                else 
                begin
                   d = start0;
                end
       start1:
               if (mode == 1)
               begin
                  d = start2;
               end
               else
               begin
                  d = start2;
               end
        start2: 
               if ( mode == 1)
               begin
                  d = finish;
               end
               else
               begin
                  d = finish;
               end
       finish:
               if (mode ==1 )
               begin
               d = start0;
               end
               else
               begin
                  d = start0;
               end
       default: begin
               d = 2'bxx;
               end
endcase
end
endmodule
