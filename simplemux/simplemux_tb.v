module simplemux_tb;

  reg a_i;
  reg b_i;
  reg sel_i;
  wire y_o;

simplemux DUT(a_i,b_i,sel_i,y_o);

initial begin
      a_i = 0;
      b_i = 0;
      sel_i = 0;
      #300 $finish;
end

      always #75 sel_i = ~sel_i;
      always #10 a_i = ~a_i;
      always #55 b_i = ~b_i;

initial begin
  $monitor(a_i,b_i,sel_i,y_o);
  $dumpfile("simplemux.vcd");
  $dumpvars;
end

endmodule
