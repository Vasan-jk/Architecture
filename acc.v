module acc(bus,s,i,la,ea,clk,clr);
output [7:0] bus,s;
input [7:0] i;
input la, ea, clk, clr;

wire [7:0] y;
wire [7:0] d;

assign y = la ? 8'b00000000 : i;

d_ff d1(d[0], y[0], clk, clr);
d_ff d2(d[1], y[1], clk, clr);
d_ff d3(d[2], y[2], clk, clr);
d_ff d4(d[3], y[3], clk, clr);
d_ff d5(d[4], y[4], clk, clr);
d_ff d6(d[5], y[5], clk, clr);
d_ff d7(d[6], y[6], clk, clr);
d_ff d8(d[7], y[7], clk, clr);

assign s = d;

assign bus = ea ? d : 8'b00000000;

endmodule


