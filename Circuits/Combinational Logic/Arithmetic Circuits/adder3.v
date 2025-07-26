module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

  genvar i;
  generate
    assign sum[0]=a[0]^b[0]^cin;
    assign cout[0]=(a[0]&b[0])+(b[0]&cin)+(cin&a[0]);
    for(i=1;i<=2;i=i+1)
      begin:adder3
        assign sum[i]=a[i]^b[i]^cout[i-1];
        assign cout[i]=(a[i]&b[i])+(b[i]&cout[i-1])+(cout[i-1]&a[i]);
      end
  endgenerate

endmodule
