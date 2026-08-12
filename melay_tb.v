`timescale 1ns / 1ps

module melay_fsm_tb;

    // Inputs
    reg clk;
    reg reset;
    reg in;
    wire out;
    mealy_fsm uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        in = 0;
        #10;
        reset = 0;
        #10;
        in = 1;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 1;
        #10;
        in = 1;
        #10;
        $finish;
    end
    initial begin
        $monitor("Time=%0t | Reset=%b | Input=%b | Output=%b",
                 $time, reset, in, out);
    end

endmodule