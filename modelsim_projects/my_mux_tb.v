// ????????
module my_mux_tb;
reg  i0, i1, s;
wire  OUT;

// ?????my_mux
my_mux mux(OUT, s, i0,i1);


// ????
initial
begin
	// ?????????????
	i0=1'b0; i1=1'b1; s=1'b0;
	#5 i0=1'b0; i1=1'b1; s=1'b1;
	#5 i0=1'b1; i1=1'b0; s=1'b0;
	#5 i0=1'b1; i1=1'b0; s=1'b1;
	#5 i0=1'b1; i1=1'b1; s=1'b1;
	#5 i0=1'b1; i1=1'b1; s=1'b0;
	#5 i0=1'b0; i1=1'b0; s=1'b1;
	#5 i0=1'b0; i1=1'b0; s=1'b0;
end

initial 
	$monitor($time, "OUT=%b, i0=%b, i1=%b,  s=%b", OUT,  i0, i1, s);

endmodule