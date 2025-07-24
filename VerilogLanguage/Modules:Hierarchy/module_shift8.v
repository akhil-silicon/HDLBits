module top_module(
  input clk,
  input [7:0] d,
  input [1:0] sel,
  output [7:0] q);

 reg [7:0] t1,t2,t3;
  my_dff8 M0 (.clk(clk), .d(d),.q(t1));
  my_dff8 M1 (.clk(clk), .d(t1),.q(t2));
  my_dff8 M2 (.clk(clk), .d(t2),.q(t3));

  always @ (*)
    begin
      case(sel)
        2'd0: q=d;
        2'd1: q=t1;
        2'd2: q=t2;
        2'd3: q=t3;
      endcase
    end
 
endmodule
