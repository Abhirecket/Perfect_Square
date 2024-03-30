`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COLLEGE OF VLSI
// Engineer: ABHISHEK KUMAR KUSHWAHA
// 
// Create Date: 30.03.2024 13:14:55
// Design Name: 
// Module Name: tb_perfect_square
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns/1ps

module tb_perfect_square;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns
    parameter WIDTH = 32;
    // Signals
    reg clk;
    reg rst;
    wire [31:0] sqr_o;

    // Instantiate the perfect_square module
    perfect_square #(.WIDTH (WIDTH)) dut (
        .clk(clk),
        .rst(rst),
        .sqr_o(sqr_o)
    );

    // Clock generation
    always #((CLK_PERIOD/2)) clk = ~clk;

    // Reset initialization
    initial begin
        clk = 0;
        rst = 1;
        #20; // Wait for some time
        @(posedge clk) rst = 0; // Deassert reset
        #100; // Run for some time
        $stop; // Stop simulation
    end

    // Display output
    always @(posedge clk) begin
        $display("sqr_o = %d", sqr_o);
    end

endmodule
