module top_module(output p2y,p1y, input p1a,p1b,p1c,p1d,p1e,p1f,p2a,p2b,p2c,p2d);
  wire t1,t2,t3,t4;
  assign t1=p2a & p2b;
  assign t2=p2c & p2d;
  assign t3=p1c & p1b & p1a;
  assign t4=p1f & p1e & p1d;

  assign p1y=t3|t4;
  assign p2y=t1|t2;
  
endmodule
