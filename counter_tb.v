module Sync_Counter_tb;
    reg clk, reset;
    wire [3:0] Q;

    Sync_Counter uut (
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock toggles every 5 time units
    end

    initial begin
        reset = 1;
        #10 reset = 0;

        #100 reset = 1;
        #10 reset = 0;

        #100 $finish;
    end
endmodule
