module ogsc
(
  input start, mode, 
  input [1:0] q,
  output reg e, m, s0, s1, s2, done
);

parameter start0 = 2'b00,
          start1 = 2'b01,
          start2 = 2'b10,
          finish = 2'b11;

always@(*)
begin
    casex(q)
        start0:  
                if(start == 0)
                begin
                   e = 0;
                   s0 = 1'bx;
                   done = 0;
                   m = 1'bx;
                   s1 = 1'bx;
                   s2 = 1'bx;
                end
                else 
                begin
                   e = 1;
                   done = 0;
                   s0 = 0;
                   s1 = 1'bx;
                   s2 = 1'bx;
                   m = 1'bx;
                end
       start1:
               if (mode == 1)
               begin
                  e = 1;
                  m = 1;
                  s0 = 1;
                  s1 = 0;
                  s2 = 1'bx;
                 done = 0;
end
               else
               begin
                  e = 1;
                  m = 0;
                  s0 = 1;
                  s1 = 0;
                  s2 = 1'bx;
                 done = 0;
               end
              
        start2: 
             if ( mode == 1)
               begin
                  e =1;
                  m = 0;
                  s0 = 1;
                  s1 = 1;
                  s2 = 0;
                  done = 0;
end
               else
               begin
                  e = 1;
                  m = 1;
                  s0 = 1;
                  s1 = 1;
                  s2 = 0;
                  done = 0;
               end
              
       finish:
               if ( mode == 1)
               begin
                  e = 1;
                  s0 = 1;
                  s1 = 1;
                  s2 = 1;
                 done = 1;
                 m = 1;
               end
               else
               begin
                  e = 1;
                  m = 1;
                  s0 = 1;
                  s1 = 1;
                  s2 = 1;
                  done = 1;
end
      default: begin
                  e = 1'b0;
                  m = 1'bx;
                  s0 = 1'bx;
                  s1 = 1'bx;
                  s2 = 1'bx;
                  done = 1'b0;
end
   endcase
end 
endmodule
