`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2021 08:40:08 PM
// Design Name: 
// Module Name: Top
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

module top(
 input dir, clk, 
 output reg [6:0] T,
 output [7:0] AN,
 output [2:0]binary,
 output [2:0]grey,
 output [7:0]onehot);

reg [31:0]Time=32'd0;
reg sec=0;

always@(posedge clk)
 begin
 if(Time==31'd10**8)
 begin
 Time <= 0;
 sec <= ~sec;
 end
 else
 Time <= Time + 1;
 end
 
BinaryC BIN(dir, sec, binary);
GreyCode GREY(dir, sec, grey);
OneHot OH(dir, sec, onehot); 
 
always@(binary)
 begin
 case(binary)
     3'b000: T <= 7'b1000000;
     3'b001: T <= 7'b1111001;
     3'b010: T <= 7'b0100100;
     3'b011: T <= 7'b0110000;
     3'b100: T <= 7'b0011001;
     3'b101: T <= 7'b0010010;
     3'b110: T <= 7'b0000010;
     3'b111: T <= 7'b1111000;
 endcase
 end

assign AN = 8'b11111110;
    
endmodule