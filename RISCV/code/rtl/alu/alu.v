`include "timescale.v"

module alu(
			op_result,
			
			op_a,
			op_b
			);
			

assign res_slt = (op_a <  op_b);
assign res_sge = ~res_slt;
assign res_sgt = (op_a >  op_b);
assign res_sle = ~res_sqt;
assign res_eq  = (op_a == op_b);
assign res_ne  = ~res_eq;
assign res_or  = op_a  |  op_b;
assign res_and = op_a  &  op_b;
assign res_add = op_a  +  op_b;
assign res_xor = op_a  ^  op_b;
assign res_srl = op_a  >> op_b[4:0];
genvar i;
generate
  for(i=0; i<32; i++)
    begin
	  res_sll[i]  = res_srl[31-i];
	end
endgenerate

endmodule
