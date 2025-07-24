module top_module(
  input clk,
  input d,
  output q);

  wire [1:0] w;
  my_dff M0 (.clk(clk),.d(d),.q(w[0]));
  my_dff M1 (.clk(clk),.d(w[0]),.q(w[1]));
  my_dff M2 (.clk(clk),.d(w[1]),.q(q));
  
endmodule
