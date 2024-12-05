`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    09:35:12 12/05/24
// Design Name:    
// Module Name:    d_ff
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
module d_ff(q, d, clk, clr);
input d, clk, clr;
output reg q;
always @(posedge clk) begin 
	if (clr)
		q <= 0;
	else 
		q <= d;
end 
endmodule
