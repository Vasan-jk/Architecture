module mar(bus,d,clk,clr,lm);
output [3:0]bus;
input [3:0]d;
input clk,clr;
input lm;
	wire [3:0]y;

d_ff d1(bus[0],y[0],clk,clr);
d_ff d2(bus[1],y[1],clk,clr);
d_ff d3(bus[2],y[2],clk,clr);
d_ff d4(bus[3],y[3],clk,clr);
	 
	 assign y=lm?d:4'bzzzz; 


endmodule
