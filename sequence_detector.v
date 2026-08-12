`timescale 1ns / 1ps

module sequence_detector (
    input wire clk,
    input wire reset,
    input wire in,
    output reg detected
);

parameter S0 = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;

reg [2:0] state;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= S0;
        detected <= 1'b0;
    end
    else begin
        detected <= 1'b0;
		        case (state)
            S0: begin
                if (in)
                    state <= S1;
                else
                    state <= S0;
            end

            S1: begin
                if (in)
                    state <= S1;
                else
                    state <= S2;
            end

            S2: begin
                if (in)
                    state <= S3;
                else
					            state <= S0;
            end

            S3: begin
                if (in) begin
                    detected <= 1'b1;
                    state <= S1;
                end
                else
                    state <= S2;
                end

            default: begin
                state <= S0;
                detected <= 1'b0;
            end
        endcase
    end
end
endmodule 