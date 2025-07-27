module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );

  wire [3:-1] carryout;
  assign carryout[-1]=cin;
  assign cout=carryout[3];
  genvar i;
  generate
    for(i=0;i<=3;i=i+1)
      begin:bcdadder
        bcd_fadd (a[4*i+3:4*i],b[4*i+3:4*i],carryout[i-1],carryout[i],sum[4*i+3:4*i] );
      end
  endgenerate

endmodule
