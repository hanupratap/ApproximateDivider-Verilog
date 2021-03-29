`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2021 12:54:10 AM
// Design Name: 
// Module Name: main_test
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


module main_test;

reg [15:0] A;
reg [7:0] B;
reg clk;
 
wire [7:0] op;

main a1(A,B,clk,op);

initial begin
clk = 1'b0;
forever
#10 clk = ~clk;
end

initial begin
#10
A = 16'b0101011010011110;
B = 8'b00100010;
#10
$finish;

end


endmodule
