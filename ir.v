module ir(bus, ctrl, i, clk, clr, li, ei); 
    output [3:0] bus, ctrl; 
    input clk, clr, li, ei; 
    input [7:0] i; 
    
    wire [7:0] y, z;
    
    d_ff d1(z[0], y[0], clk, clr); 
    d_ff d2(z[1], y[1], clk, clr); 
    d_ff d3(z[2], y[2], clk, clr); 
    d_ff d4(z[3], y[3], clk, clr); 
    d_ff d5(z[4], y[4], clk, clr); 
    d_ff d6(z[5], y[5], clk, clr); 
    d_ff d7(z[6], y[6], clk, clr); 
    d_ff d8(z[7], y[7], clk, clr); 
    
    assign ctrl[0] = z[4]; 
    assign ctrl[1] = z[5]; 
    assign ctrl[2] = z[6]; 
    assign ctrl[3] = z[7]; 
    
    assign bus[3:0] = ei ? z[3:0] : 4'b0000; 

    assign y = li ? i : 8'b00000000;
    
endmodule

