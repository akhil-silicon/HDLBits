module top_module( 
  input [99:0] in,
  output [98:0] out_both,
  output [99:1] out_any,
  output [99:0] out_different );

genvar i;
generate
  for(i=0;i<=98;i=i+1)
      begin:outboth
        assign out_both[i]=in[i] &in[i+1];
      end
  for(i=1;i<=99;i=i+1)
      begin:outany
        assign out_any[i]=in[i] |in[i-1];
      end
  for(i=0;i<=99;i=i+1)
      begin:outdifferent
        assign out_different[i]=in[i]^in[(i+1)%100];
      end
    
endgenerate

  

endmodule
