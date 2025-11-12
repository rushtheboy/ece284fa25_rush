// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module mac (out, a, b, c);

parameter bw = 4;
parameter psum_bw = 16;

input signed [bw-1:0] a; // signed 4 bit weight
input [bw-1:0] b; //unsigned 4 bit activation
input [psum_bw-1:0] c; // input carryover
output [psum_bw-1:0] out; // signed 16 bit partial sum output

wire signed [psum_bw-1:0] product;
assign product = a * $signed(b);

assign out = psum + $signed(product);

endmodule   
