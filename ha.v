`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    09:32:46 12/05/24
// Design Name:    
// Module Name:    ha
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
module ha(s,c,a,b);
input a,b;
output s,c;
assign s = a^b;
assign c = a&b;
endmodule
