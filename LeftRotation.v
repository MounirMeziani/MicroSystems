
module LeftRotation #(parameter BITS=32)(
	input [BITS-1:0] valIn,
	input [BITS-1:0] AmountMove,
	output wire [BITS-1:0] Res
);

	assign Res = ((valIn << (AmountMove % BITS))|(valIn >> (BITS-(AmountMove % BITS))));
	
endmodule