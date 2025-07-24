module top_module(
  input [31:0] a,
  input [31:0] b,
  input sub,
  output [31:0] sum
);
  wire [31:0] bout;
  wire cout1,cout2;
  assign bout =b^{32{sub}};
  add16 A0 (a[15:0],bout[15:0],sub,sum[15:0], cout1);
  add16 A1 (a[31:16],bout[31:16],cout1,sum[31:16], cout2);

  
endmodule
