module top_module( 
    input [254:0] in,
    output reg [7:0] out );
integer i;
  always @(*) begin
    out=8'b0;
    for(i=0;i<=254;i=i+1)
      begin
        out=out+in[i];
      end
  end
  
endmodule
