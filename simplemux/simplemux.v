module simplemux(a_i,b_i,sel_i,y_o);

  input a_i;
  input b_i;
  input sel_i;
  output y_o;

  assign y_o = (!sel_i & a_i) | (sel_i & b_i);

endmodule
