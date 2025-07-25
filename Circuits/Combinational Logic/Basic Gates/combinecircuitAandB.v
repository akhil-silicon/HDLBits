
module simplecircuitA (input x, input y, output z);

  assign z= (x^y) &x;

endmodule

module simplecircuitB ( input x, input y, output z );
  assign z= ~(x^y);
endmodule

module top_module (input x, input y, output z);
  wire [3:0] out;
  simplecircuitA A0 (x,y,out[0]);
  simplecircuitB B0 (x,y,out[1]);
  simplecircuitA A1 (x,y,out[2]);
  simplecircuitB B1 (x,y,out[3]);

  assign z= (out[2] &out[3]) ^(out[0]|out[1]);
  
  
  
  
endmodule
