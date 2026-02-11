// testbench for a 2-input AND gate
module and_gate_tb;

    // testbench signals
    logic a1, b1, y1;

    // clock period / delay between test cases
    localparam period = 10;

    // instantiate the AND gate (device under test)
    and_gate dut (
        .A(a1),
        .B(b1),
        .Y(y1)
    );

    // apply different input combinations to test the AND gate
    initial begin
        $display("Testing 2-input AND gate");

        a1 = 0; b1 = 0;
        #period;
        a1 = 0; b1 = 1;
        #period;
        a1 = 1; b1 = 0;
        #period;
        a1 = 1; b1 = 1;
        #period;

        $stop;
    end

    // monitor and print inputs and output whenever they change
    initial begin
        $monitor("a = %b, b = %b, y = %b", a1, b1, y1); 
    end

endmodule
