module Fulladd_test;
wire sum, c_out;
reg a,b,c_in;

Fulladd fadd(sum, c_out, a,b,c_in);

initial 
begin
	a=0; b=0; c_in=0;
	#10; a=0;b=0;c_in=1;
	#10 a=0;b=1;c_in=0;
	#10 a=0;b=1;c_in=1;
	#10 a=1;b=0;c_in=0;
	#10 a=1;b=0;c_in=1;
	#10 a=1;b=1;c_in=0;
	#10 a=1;b=1;c_in=1;
	#10 $stop;
end
endmodule
