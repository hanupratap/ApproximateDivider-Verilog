`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2021 01:26:40 AM
// Design Name: 
// Module Name: p_encode_16to4_test
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


module p_encode_16to4_test;

reg [16:0] A;
wire [3:0] op;

p_encode_16to4 enc(A, op);

initial begin
#10
A = 16'b0101011010011110;
#10
$finish;
end

endmodule
