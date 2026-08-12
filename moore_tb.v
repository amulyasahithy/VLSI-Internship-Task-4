`timescale 1ns / 1ps

module moore_tb;
    reg clk;
    reg reset;
    wire [1:0] state;

    moore uut (
        .clk(clk),
        .reset(reset),
        .state(state)
    );
	
    always #5 clk = ~clk;

      initial begin  
        clk = 0;
        reset = 1;
        #10;
        reset = 0;
        #50;
        $finish;
    end
endmodule 