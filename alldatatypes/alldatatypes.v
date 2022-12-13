module alldatatypes();

real a, b, c ; // a,b,c to be real
output x ; //output port declaration for x to get the computation in output, check it out why??
output reg y ; //output register declaration for y to get the computation in output, check it out why??
reg e, f ; //input reg e, f ;
// replace it with input reg e, f and see what happens!
logic d ; // logic datatype, specially to perform invert operation
logic l ;
wire w ; // added to get the inverse of d, it should be wire, check it out why??
wor p ;
wand q ;
tri r ;
integer j, k ; // integer variable
integer i[1:32] ; // array of integer variables
time newtime ;
/* time and integer are similar in functionality, time is an unsigned 64-bit used for time variables*/

reg [8*14:1] string ;
/* This defines a vector with range [msb_expr: lsb_expr] */

initial begin
 a = 0.5 ; // same as 5.0e-1. real variable
 b = 1.2E12 ;
 c = 26.19_60_e-11 ; // _’s are used for readability
 string = " string example " ;
 newtime =$time;
end

  assign x=a+1; //

always @ ( * ) begin
  y = b+1 ;
end

  assign w=~d;

  assign p = e & f ;
  assign p = ~e & ~f ;

  assign q = e ;
  assign q = f ;

  assign r = (d) ? l:1'bz ;

endmodule
