module top_module( 
  input [2:0] vec,
  output [2:0] outv,
  output o2,
  output o1,
  output o0);

  assign {outv,o2,o1,o0}={vec,vec[2],vec[1],vec[0]};

endmodule
