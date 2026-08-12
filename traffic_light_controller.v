`timescale 1ns / 1ps
module traffic_light (
    input wire clk,
    input wire reset,
    output reg [2:0] light
);
    parameter RED    = 3'b100;
    parameter YELLOW = 3'b010;
    parameter GREEN  = 3'b001;
	 parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    reg [1:0] state;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S0;
            light <= RED;
        end
        else begin
            case (state)
                S0: begin
                    state <= S1;
                    light <= GREEN;
                end
                S1: begin
                    state <= S2;
                    light <= YELLOW;
                end
                S2: begin
                    state <= S0;
                    light <= RED;
                end
 default: begin
                    state <= S0;
                    light <= RED;
                end

            endcase
        end

    end

endmodule 