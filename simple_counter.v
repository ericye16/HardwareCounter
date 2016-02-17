module simple_counter(
						rst,
						pulse_in,
						counter_out
						);

input pulse_in;
input rst;
output[7:0] counter_out;
reg[7:0] counter_out;
always @(negedge pulse_in or negedge rst) begin
	if (!rst) begin
		counter_out <= 0;
	end
	else begin
		counter_out <= counter_out + 1;
	end
end
endmodule