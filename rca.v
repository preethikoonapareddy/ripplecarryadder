`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2026 08:53:55 PM
// Design Name: 
// Module Name: rca
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


module rca(
    input [3:0] a,b,
    input c,
    output[3:0] s,cout
    );
    wire w1,w2,w3;
    fulladder f1(.a(a),.b(b),.c(c),.s(s[0]),.cout(w1));
    fulladder f2(.a(a),.b(b),.c(w1),.s(s[1]),.cout(w2));
    fulladder f3(.a(a),.b(b),.c(w2),.s(s[2]),.cout(w3));
    fulladder f4(.a(a),.b(b),.c(w3),.s(s[3]),.cout(cout));
endmodule
