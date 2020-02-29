
module RightShift(
	input [31:0] valIn,
	input [31:0] AmountMove,
	output wire [31:0] Res
);

assign Res = (valIn >> AmountMove);

endmodule