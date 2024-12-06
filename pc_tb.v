`timescale 1ns / 1ps

module pc_tb;

    // Testbench signals
    reg clk;
    reg Cp;
    reg clr;
    reg Ep;
    wire [3:0] bus;
    
    // Instantiate the PC module
    pc uut (
        .bus(bus),
        .clk(clk),
        .Cp(Cp),
        .clr(clr),
        .Ep(Ep)
    );
    
    // Clock generation
    always begin
        #5 clk = ~clk; // Toggle clock every 5ns
    end
    
    // Test sequence
    initial begin
        // Initialize signals
        clk = 0;
        Cp = 0;
        clr = 0;
        Ep = 0;
        
        // Apply reset (clear the flip-flops)
        clr = 1;
        #10;
        clr = 0;
        
        // Test different values for Cp and Ep
        Cp = 1;
        Ep = 1;
        #20;  // Wait for some time
        
        Cp = 0;
        Ep = 0;
        #20;
        
        Cp = 1;
        Ep = 1;
        #20;
        
        Cp = 0;
        Ep = 1;
        #20;
        
        Cp = 1;
        Ep = 0;
        #20;
        
        // End of simulation
        $stop;
    end
    
    initial begin
    $dumpfile("waveform.vcd"); // Specifies the output file
    $dumpvars(0, pc_tb);       // Dumps all signals in pc_tb
end



endmodule

