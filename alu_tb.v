`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIITD&M Kancheepuram
// Engineer: spandan
// 
// Create Date:    14:33:23 01/18/2013 
// Design Name: 
// Module Name:    alu_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "alu.v"

module top;
reg[31:0] a,b;
reg[3:0] sel;

wire[31:0] c;

alu test(a,b,sel,c);
initial
begin
	a=32'b00000000000000000000000000000001;
	b=32'b00000000000000000000000000000100;
	sel=4'b0000;
	#5 sel=4'b0001;
	#5 sel=4'b0010;
	#5 sel=4'b0011;
	#5 sel=4'b0100;
	#5 sel=4'b0101;
	#5 sel=4'b0110;
	#5 sel=4'b0111;
	#5 sel=4'b1001;
	#5 sel=4'b1010;
	#5 sel=4'b1011;
	#5 sel=4'b1100;
	#5 sel=4'b1101;
	#5 sel=4'b1110;
	#5 sel=4'b1111;
end


initial
$monitor($time,"a=%b , b=%b,  sel=%b,  c=%b ",a,b,sel,c);
endmodule
