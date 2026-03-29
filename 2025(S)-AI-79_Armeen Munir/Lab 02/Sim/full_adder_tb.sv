module full_adder_tb;
    
    // Testbench signals
    logic a1, b1, cin1;
    logic sum1, cout1;
    
    // Device Under Test (DUT) - full adder ko connect karo
    full_adder dut (
        .a(a1),
        .b(b1),
        .cin(cin1),
        .sum(sum1),
        .cout(cout1)
    );
    
    // Stimulus - inputs generate karo
    initial begin
        $display("Time\ta\tb\tcin\tsum\tcout");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, a1, b1, cin1, sum1, cout1);
        
        // Test all 8 combinations
        a1 = 0; b1 = 0; cin1 = 0; #10;
        a1 = 0; b1 = 0; cin1 = 1; #10;
        a1 = 0; b1 = 1; cin1 = 0; #10;
        a1 = 0; b1 = 1; cin1 = 1; #10;
        a1 = 1; b1 = 0; cin1 = 0; #10;
        a1 = 1; b1 = 0; cin1 = 1; #10;
        a1 = 1; b1 = 1; cin1 = 0; #10;
        a1 = 1; b1 = 1; cin1 = 1; #10;
        
        $display("Test Complete");
        $stop;
    end
    
endmodule