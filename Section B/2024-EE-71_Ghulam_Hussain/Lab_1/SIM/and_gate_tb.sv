module and_gate_tb;

    logic a1, b1, y1;

    localparam period = 10;

    // Instantiate DUT
    and_gate UUT (
        .a(a1),
        .b(b1),
        .y(y1)
    );

    initial
    begin
        
        // Apply all possible input combinations once
        a1 = 0; b1 = 0; #period;
        a1 = 0; b1 = 1; #period;
        a1 = 1; b1 = 0; #period;
        a1 = 1; b1 = 1; #period;

        $stop;
    end

    // Monitor values
    initial 
    begin
        $monitor("y=%b,a=%b,b=%b", y1,a1,b1);
    end

endmodule
