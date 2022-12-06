module inverter_tb;
  reg a;
  wire y;

  //Design Instance
  inverter inv(y,a);

  //enabling the wave dump
  initial
  begin
    $dumpfile("inverter.vcd"); $dumpvars;
  end

	initial
	begin

    $display ("RESULT \ta\ty");

		a = 1; # 100; // Another value
    if (y==0)
      $display ("PASS \t%d\t%d",a,y);
    else
      $display ("PASS \t%d\t%d",a,y);

		a = 0; # 100; // Initial value is set
    if (y==1)
      $display ("PASS \t%d\t%d",a,y);
    else
      $display ("PASS \t%d\t%d",a,y);

		a = 1; # 50; // Another value
    if (y==0)
      $display ("PASS \t%d\t%d",a,y);
    else
      $display ("PASS \t%d\t%d",a,y);

		a = 0; # 100; // Initial value is set
    if (y==1)
      $display ("PASS \t%d\t%d",a,y);
    else
      $display ("PASS \t%d\t%d",a,y);

	end

endmodule
