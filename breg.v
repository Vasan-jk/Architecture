module breg(out, bus, lb, clk, clr);
output [7:0] out;
input [7:0] bus;
input clk, clr, lb;
wire [7:0] y;

y = lb ? 8'bzzzzzzzz : bus;

d_ff d1(out[0], y[0], clk, clr);
d_ff d2(out[1], y[1], clk, clr);
d_ff d3(out[2], y[2], clk, clr);
d_ff d4(out[3], y[3], clk, clr);
d_ff d5(out[4], y[4], clk, clr);
d_ff d6(out[5], y[5], clk, clr);
d_ff d7(out[6], y[6], clk, clr);
d_ff d8(out[7], y[7], clk, clr);

endmodule


