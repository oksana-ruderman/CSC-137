module og(q1, q0, start, mode, s2, s1, s0, e, m);
    input q1, q0, start, mode;
    output s2, s1, s0, e, m;

    assign z = q1 & q0 & x;
endmodule

