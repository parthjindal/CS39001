`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

module TestFA;

	// Inputs
	reg cIn;
	reg a;
	reg b;

	// Outputs
	wire s;
	wire cOut;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.s(s), 
		.cOut(cOut), 
		.cIn(cIn), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		cIn = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		$monitor($time,"\ta=%b,\tb=%b,\tcIn=%b,\ts=%b,\tcOut=%b",a,b,cIn,s,cOut);
		#1 a = 0; b = 1; cIn = 0;
		#1 a = 1; b = 1; cIn = 0;
		#1 a = 1; b = 1; cIn = 1;

	end
      
endmodule

