module alu(bus, reb, acc, eu, su);
output [7:0] bus;
input [7:0] reb, acc;
input eu, su;
wire [7:0] y,s,c;
assign y[0] = su ^ reb[0];
assign y[1] = su ^ reb[1];
assign y[2] = su ^ reb[2];
assign y[3] = su ^ reb[3];
assign y[4] = su ^ reb[4];
assign y[5] = su ^ reb[5];
assign y[6] = su ^ reb[6];
assign y[7] = su ^ reb[7];

FA fa1(s[0],c[0],y[0],acc[0],su);
FA fa2(s[1],c[1],y[1],acc[1],c[0]);
FA fa3(s[2],c[2],y[2],acc[2],c[1]);
FA fa4(s[3],c[3],y[3],acc[3],c[2]);
FA fa5(s[4],c[4],y[4],acc[4],c[3]);
FA fa6(s[5],c[5],y[5],acc[5],c[4]);
FA fa7(s[6],c[6],y[6],acc[6],c[5]);
FA fa8(s[7],c[7],y[7],acc[7],c[6]);

assign bus = eu ? s : 8'b00000000;

endmodule
