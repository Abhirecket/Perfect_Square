`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COLLEGE OF VLSI
// Engineer: ABHISHEK KUMAR KUSHWAHA
// 
// Create Date: 30.03.2024 11:38:04
// Design Name: 
// Module Name: perfect_square
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


module perfect_square #(
parameter WIDTH = 32
)(
  input   wire        clk,
  input   wire        rst,
  output  wire [WIDTH-1:0] sqr_o
);


  reg [WIDTH-1:0] count, square;
  wire [WIDTH-1:0] count_nxt, square_nxt;  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        begin
      		count <= 32'h3;
          square <= 32'h1;
        end
      else
        begin
      		count <= count_nxt;
          square <= square_nxt;
        end
    end
    
  assign count_nxt = count + 32'h2;
  assign square_nxt = count + square;
  
  //output
  assign sqr_o = square;
endmodule

