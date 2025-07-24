module top_module(
  output out1,
  output out2,
  input a,
  input b,
  input c,
  input d);

  mod_a M0 (.out1(out1),.out2(out2),.in1(a),.in2(b),.in4(d),.in3(c));

endmodule
