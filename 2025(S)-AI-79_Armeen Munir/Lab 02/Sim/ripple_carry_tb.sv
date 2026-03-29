module ripple_carry_tb;
    
    logic [2:0] a1, b1;
    logic c_in1;
    logic [2:0] sum1;
    logic c_out1;
    
    ripple_carry dut (
        .a(a1),
        .b(b1),
        .c_in(c_in1),
        .sum(sum1),
        .c_out(c_out1)
    );
    
    initial begin
        $display("Time\tA\tB\tCin\tSum\tCout");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, a1, b1, c_in1, sum1, c_out1);
        
        // Test cases from lab manual
        a1 = 3'b000; b1 = 3'b000; c_in1 = 0; #10;
        a1 = 3'b001; b1 = 3'b010; c_in1 = 0; #10;
        a1 = 3'b011; b1 = 3'b001; c_in1 = 1; #10;
        a1 = 3'b101; b1 = 3'b010; c_in1 = 0; #10;
        a1 = 3'b111; b1 = 3'b111; c_in1 = 0; #10;
        a1 = 3'b111; b1 = 3'b111; c_in1 = 1; #10;
        
        $display("Test Complete");
        $stop;
    end
    
endmodule