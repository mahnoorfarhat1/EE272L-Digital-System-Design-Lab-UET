module ripple_carry (
    input  logic [2:0] a,     
    input  logic [2:0] b,    
    input  logic       c_in,    
    output logic [2:0] sum,   
    output logic       c_out      
);

    logic c1, c2;   

    full_adder fa0 (
        .a(a[0]), 
        .b(b[0]), 
        .cin(c_in), 
        .sum(sum[0]), 
        .cout(c1)
    );
    
    full_adder fa1 (
        .a(a[1]), 
        .b(b[1]), 
        .cin(c1), 
        .sum(sum[1]), 
        .cout(c2)
    );
    
    full_adder fa2 (
        .a(a[2]), 
        .b(b[2]), 
        .cin(c2), 
        .sum(sum[2]), 
        .cout(c_out)
    );

endmodule