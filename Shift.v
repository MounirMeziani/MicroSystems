begin shift

module Shift(
	input [1:0] direction,
	input [31:0] valIn,
	input [31:0] AmountMove,
	output wire [31:0] Res
);
end module

begin

	if (direction == 1) 
		assign Res = (valIn >> AmountMove);
	else 
		assign Res = (valIn << AmountMove);
		
end

end