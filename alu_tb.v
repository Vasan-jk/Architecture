module alu_tb;
reg [7:0] reb, acc;
reg eu, su;
wire [7:0] bus;

alu uut(bus, reb, acc, eu, su);

initial begin

acc = 8'b00000000;
reb = 8'b00000000;
su = 0;
eu = 0;
#10;

acc = 8'b00110011;
reb = 8'b10101010;
su = 0;
eu = 1;
#10;

acc = 8'b01101001;
reb = 8'b10111011;
su = 1;
eu = 1;
#10;
end
initial begin
    $dumpfile("waveform_alu.vcd"); // Specifies the output VCD file
    $dumpvars(0, alu_tb);       // Dumps all variables in the pc_tb module
end

endmodule
