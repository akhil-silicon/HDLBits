module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );

genvar i;
generate
    for(i=0;i<=2;i=i+1)
      begin:outboth
        assign out_both[i]=in[i] &in[i+1];
      end
    for(i=1;i<=3;i=i+1)
      begin:outany
        assign out_any[i]=in[i] |in[i-1];
      end
  for(i=0;i<=3;i=i+1)
      begin:outdifferent
       assign out_different[i]=in[i]^in[(i+1)%4];
      end
    
endgenerate

  

endmodule
