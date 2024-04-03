`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2024 04:22:01 PM
// Design Name: 
// Module Name: riscV_top_tb
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


module riscV_top_tb;
    wire [5:0] LEDS;
    reg [1:0] SWITCHES;
    reg clk = 0;
    wire [7:0] current;
    localparam time_step = 20;
    parameter CLK_PERIOD = 10;
    riscV_top top(clk, SWITCHES, LEDS, current);
    
    
    always #((CLK_PERIOD / 2)) clk = ~clk;
    initial begin
        SWITCHES = 2'b00;
        #time_step;
    end
endmodule