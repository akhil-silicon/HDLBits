module top_module(
  input [2:0] a,
  input [2:0] b,
  output [2:0] out_or_bitwise,
  output [5:0] out_not,
  output out_or_logical);

  assign out_or_bitwise= a|b;
  assign out_not = {~b,~a};
  assign out_or_logical=a||b;
 
endmodule
