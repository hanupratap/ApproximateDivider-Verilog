`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 10:22:57 PM
// Design Name: 
// Module Name: main
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

// 16 / 8

module main(
 input [15:0] A,
 input [7:0] B,
 input CLK,
 output reg [7:0] ans
);
    
wire [3:0] lod_a;
wire [2:0] lod_b;
wire [3:0] lod_net;
wire [15:0] truncated_a;
wire [7:0] truncated_b; 

// a
assign truncated_a = A&(16'b1111111100000000);
// ea
p_encode_16to4 leadA(A, lod_a);


// b
assign truncated_b = B;
// eb
p_encode_8to3 leadB(B, lod_b);

// ea-eb
assign lod_net = lod_a - lod_b;


endmodule
