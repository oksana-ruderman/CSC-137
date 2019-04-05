module nsg(q1, q0, x, d1, d0);
    input q1, q0, x;
    output d1, d0;
assign d1 = (~q1&q0&~x)|(q1&~q0&~x);
assign d0 = x|(q1&~q0);

endmodule

