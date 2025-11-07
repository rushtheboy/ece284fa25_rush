// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module mac (out, a, b, c);

parameter bw = 4;
parameter psum_bw = 16;

input a,b,c;
input signed [bw-1:0] a; // signed 4 bit weight
input [bw-1:0] b; //unsigned 4 bit activation
output reg [psum_bw-1:0] out; 

output wire [psum_bw-1:0] output_s;

assign output_s = $signed(a) * $signed(b) + $signed(c);

always @ (posedge clk) begin
    if (reset) begin
        out <= 0;
    end 
    else begin
        out <= output_s;
    end
end


endmodule
