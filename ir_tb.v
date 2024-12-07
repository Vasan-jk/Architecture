module ir_tb;
reg clk, clr, li, ei;
reg [7:0] i;
wire [3:0] bus, ctrl;

ir uut(.bus(bus),.ctrl(ctrl),.i(i),.clk(clk),.clr(clr),.li(li),.ei(ei));

always #10 clk = ~clk;


initial begin

clk = 0;
clr = 0;
li = 0;
ei = 0;
i = 8'b00000000;
#10;

clr = 1;
#10
clr = 0;

li = 1;
ei = 1;
i = 8'b01010101;
#10;

i = 8'b11110000;
#10;

end 
initial begin
    $dumpfile("waveform_ir.vcd"); // Specifies the output VCD file
    $dumpvars(0, ir_tb);       // Dumps all variables in the pc_tb module
end
endmodule

