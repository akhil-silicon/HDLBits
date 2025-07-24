module top_module(
  input [31:0] a,
  input [31:0] b,
  output [31:0] sum
                    );
wire cout1,cout2,cout3;
wire [15:0] sum_c0,sum_c1;
  
add16 A0 (a[15:0],b[15:0],1'b0,sum[15:0],cout1);
add16 A1 (a[31:16],b[31:16],1'b0,sum_c0,cout2);  
add16 A2 (a[31:16],b[31:16],1'b1,sum_c1,cout3); 

  always@(*) begin
    sum[31:16]=cout1?sum_c1:sum_c0;
  end

endmodule
