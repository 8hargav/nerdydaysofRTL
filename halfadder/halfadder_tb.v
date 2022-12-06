module halfadder_tb();

  reg  a, b;
  wire  sum, carry;

  halfadder uut(sum,carry,a,b);

  initial
    begin
      a = 0; b =0;
  #5; a = 0; b =1;
  #5; a = 1; b =0;
  #5; a = 1; b =1;
  #5;
    end

 //Dump waves (only required here)
initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
