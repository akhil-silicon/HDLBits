module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
  reg [7:0] temp;
  always @(posedge clk)
    begin
      pedge<=~temp & in;
       temp<=in;
    end
  

endmodule
