module top_module (
    input d, 
    input ena,
    output q);

  assign q= ena?d:q;

endmodule
