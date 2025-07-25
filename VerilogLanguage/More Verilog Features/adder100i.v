module top_module( 
    input [99:0] a, b,
    input cin,
    output reg  [99:0] cout,
    output reg [99:0] sum );

  integer i;
  always@(*) begin
    for(i=0;i<=99;i=i+1)
      begin: adder
        if(i==0) begin
          sum[i]=a[i]+b[i]+cin;
          cout[i]=(a[i]&b[i]) |(b[i]&cin)|(cin&a[i]) ;
        end
        else
          begin
            sum[i]=a[i]+b[i]+cout[i-1];
            cout[i]=(a[i]&b[i]) |(b[i]&cout[i-1])|(cout[i-1]&a[i]) ;
          end
        
      end
  end
 

endmodule
