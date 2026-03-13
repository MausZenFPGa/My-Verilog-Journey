adder-subtractor

module top_module(
input [31:0] a,
input [31:0] b,
input sub,
output [31:0] sum
);
wire cum;
add16 low_adder (
.a(a[15:0]),
.b(b[15:0]^ {16{sub}}),
.cin(sub),
.sum(sum[15:0]),
.cout(cum) ) ;
add16 high_adder (
.a(a[31:16]),
.b(b[31:16]^ {16{sub}}),
.cin(cum),
.sum(sum[31:16]) );

endmodule
