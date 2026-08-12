module mealy_fsm (
    input wire clk,
    input wire reset,
    input wire in,
    output reg out
);

reg state;

parameter S0 = 1'b0,
          S1 = 1'b1;

always @(posedge clk or posedge reset) begin

    if (reset) begin
        state <= S0;
        out <= 1'b0;
    end

    else begin

        case (state)
		   S0: begin
                if (in) begin
                    state <= S1;
                    out <= 1'b0;
                end
                else begin
                    state <= S0;
                    out <= 1'b0;
                end
            end

            S1: begin
                if (in) begin
                    state <= S1;
                    out <= 1'b1;
                end
					 else begin
                    state <= S0;
                    out <= 1'b0;
                end
            end

            default: begin
                state <= S0;
                out <= 1'b0;
            end

        endcase
    end
end

endmodule