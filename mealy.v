`include "og.v"
`include "nsg.v"
`include "ff.v"

module mealy(x, clk, reset, z);
    input x, clk, reset;
    output z;

    wire d0, d1, q0, q1;

    ff    ff0(d0, clk, reset, q0);
    ff    ff1(d1, clk, reset, q1);
    og           og0(q1, q0, x, z);
    nsg         nsg0(q1, q0, x, d1, d0);
endmodule
