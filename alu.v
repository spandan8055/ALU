`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIITD&M Kancheepuram
// Engineer: spandan
// 
// Create Date:    14:21:05 01/18/2013 
// Design Name: 
// Module Name:    alu 
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
module alu(a,b,sel,c);
 input[31:0] a,b;
 input[3:0] sel;
 output[31:0] c;
  reg [31:0]c;
 
always@(*)
begin
if(sel==4'b0000)
c=a&b;
else if(sel==4'b0001)
c=a|b;
else if(sel==4'b0010)
c=a^b;
else if(sel==4'b0011)
c=~a;
else if(sel==4'b0100)
c=a+b;
else if(sel==4'b0101)
c=a-b;
else if(sel==4'b0110)
c=a%3;
else if(sel==4'b0111)
c=a/4;

else if(sel==4'b1000)
c=a>>2;
else if(sel==4'b1001)
c=a<<2;
else if(sel==4'b1010)
begin
if(a>b)
c=a;
else
c=b;
end
else if(sel==4'b1011)
begin
if(a<b)
c=b;
else
c=a;
end
else if(sel==4'b1100)
begin
if(a%2==0)
c=a;
else if(b%2==0)
c=b;
else
c=0;
end
else if(sel==4'b1101)
begin
if(a%2==1)
c=a;
else if(b%2==1)
c=b;
else
c=0;
end
else if(sel==4'b1110)
begin
if(^a==0)
c=1'b0;
end
else if(sel==4'b1111)
begin
if(^b==0)
c=1'b1;
end


end
endmodule
