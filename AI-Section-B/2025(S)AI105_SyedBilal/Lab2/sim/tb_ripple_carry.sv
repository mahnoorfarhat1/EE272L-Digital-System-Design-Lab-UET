module tb_ripple_carry;
    
    logic [2:0] a1, b1;
    logic c_in1;
    logic [2:0] sum1;
    logic c_out1;

    ripple_carry DUT (
        .a(a1),
        .b(b1),
        .cin(c_in1),
        .sum(sum1),
        .cout(c_out1)
    );

    initial begin
        
        a1 = 3'b000; b1 = 3'b000; c_in1 = 0;
        #10;
        
        a1 = 3'b001; b1 = 3'b010; c_in1 = 0;
        #10;
        
        a1 = 3'b111; b1 = 3'b111; c_in1 = 1;
        #10;
        
        $stop; 
    end
endmodule