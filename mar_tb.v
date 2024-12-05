`timescale 1ns / 1ps

module tb_mar;

  // Inputs
  reg [3:0] d;
  reg clk, clr, lm;
  
  // Outputs
  wire [3:0] bus;

  // Instantiate the module under test (mar)
  mar uut (
    .bus(bus),
    .d(d),
    .clk(clk),
    .clr(clr),
    .lm(lm)
  );

  // Clock generation
  always begin
    #5 clk = ~clk; // Clock period is 10ns (frequency of 100MHz)
  end

  // Stimulus
  initial begin
    // Initialize Inputs
    clk = 0;
    clr = 0;
    lm = 0;
    d = 4'b0000;

    // Apply reset and test with different input values
    $display("Starting Test...");
    
    // Test Case 1: Apply clear signal
    clr = 1; // Assert clear
    #10 clr = 0; // De-assert clear
    d = 4'b1010; // Set input data
    #10;

    // Test Case 2: Test with lm = 1 (no load)
    lm = 1; // Set lm to 1 (no load, should set bus to 0000)
    #10 lm = 0; // Set lm to 0 (load data into bus)
    d = 4'b1111; // Change data input
    #10;

    // Test Case 3: Verify load behavior when lm = 0
    lm = 0;
    d = 4'b1100; // Set input data to 1100
    #10;
    
    // Test Case 4: Apply clear after load
    clr = 1; // Assert clear
    #10 clr = 0; // De-assert clear
    #10;

    // Test Case 5: Verify bus outputs over several clock cycles
    lm = 0;
    d = 4'b0011;
    #10;

    d = 4'b0101;
    #10;

    d = 4'b0110;
    #10;

    $display("Test Complete.");
    $stop;
  end

initial begin
    $dumpfile("waveform.vcd"); // Specifies the output VCD file
    $dumpvars(0, tb_mar);       // Dumps all variables in the pc_tb module
end


endmodule

