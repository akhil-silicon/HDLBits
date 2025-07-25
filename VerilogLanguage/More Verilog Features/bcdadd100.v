module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

wire [100:0] carryout;
assign carryout[0]=cin;
assign cout=carryout[100];
genvar i;
  generate
    for(i=0;i<=99;i=i+1) 
      begin:bcdadder
        bcd_fadd B0 (a[4*i+3:4*i],b[4*i+3:4*i],carryout[i],carryout[i+1],sum[4*i+3:4*i]);
      end
  endgenerate
 
endmodule
