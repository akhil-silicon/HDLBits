module top_module(
  input [7:0] in,
  output [7:0] out);

  // for loop outside procedural block need to be define inside generate block.
genvar N;
  generate 
    for (N=0;N<=7;N=N+1)
      begin: bit_reverse
      assign out[N]=in[3'd7-N] ;
      end
    endgenerate

endmodule
