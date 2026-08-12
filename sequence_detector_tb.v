`timescale 1ns / 1ps

module tb_sequence_detector;

reg clk;
reg reset;
reg in;
wire detected;

sequence_detector uut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .detected(detected)
);

always #5 clk = ~clk;
initial begin
    clk = 0;
    reset = 1;
    in = 0;

    #10 reset = 0;

    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;

    #20 $finish;
end

initial begin
    $monitor("Time=%0t | Reset=%b | Input=%b | Detected=%b",
             $time, reset, in, detected);
end
endmodule 