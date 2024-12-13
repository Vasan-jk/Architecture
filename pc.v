`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    09:27:24 12/05/24
// Design Name:    
// Module Name:    pc
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module pc(bus, clk, Cp, clr, Ep);
input clk, Cp, clr, Ep;
output [3:0] bus;
wire [4:1]s;
wire [4:1]c;
wire [4:1]q;
ha h1(s[1],c[1],Cp,q[1]);
ha h2(s[2],c[2],c[1],q[2]);
ha h3(s[3],c[3],c[2],q[3]);
ha h4(s[4],c[4],c[3],q[4]);

d_ff q1(q[1],s[1],clk,clr);
d_ff q2(q[2],s[2],clk,clr);
d_ff q3(q[3],s[3],clk,clr);
d_ff q4(q[4],s[4],clk,clr);

assign bus = Ep ? q : 4'bzzzz; 
endmodule
