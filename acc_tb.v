module acc_tb;
reg [7:0] i;
reg la, ea, clk, clr;
wire [7:0] bus, s;

acc uut(.bus(bus), .s(s), .i(i), .la(la), .ea(ea), .clk(clk), .clr(clr));

initial begin

clk = 0;
clr = 0;
i = 8'b00000000;
la = 0;
ea = 0;

clr = 1;
#10;
clr = 0;

i = 8'b10011001;
la = 0;
ea = 1;
#10;

i = 8'b11111111;

la = 0;
ea = 0;
#10;

end
always #10 clk = ~clk;

initial begin
    $dumpfile("waveform_acc.vcd"); // Specifies the output VCD file
    $dumpvars(0, acc_tb);       // Dumps all variables in the pc_tb module
end

endmodule
