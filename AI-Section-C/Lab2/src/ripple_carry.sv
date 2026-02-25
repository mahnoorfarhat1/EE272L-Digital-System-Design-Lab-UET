// ---------------------------
// Full Adder Module
// ---------------------------
module full_adder(
    input  logic a,
    input  logic b,
    input  logic c,
    output logic sum,
    output logic carry
);

    assign sum   = a ^ b ^ c;
    assign carry = (a & b) | (b & c) | (a & c);

endmodule


// ---------------------------
// 3-bit Ripple Carry Adder
// ---------------------------
module ripple_carry(
    input  logic [2:0] a,
    input  logic [2:0] b,
    input  logic c_in,
    output logic [2:0] sum,
    output logic c_out
);

    // Internal carry signals
    logic c1, c2;
    
    // First full adder
    full_adder fa0 (
        .a(a[0]),
        .b(b[0]),
        .c(c_in),
        .sum(sum[0]),
        .carry(c1)
    );
    
    // Second full adder
    full_adder fa1 (
        .a(a[1]),
        .b(b[1]),
        .c(c1),
        .sum(sum[1]),
        .carry(c2)
    );
    
    // Third full adder
    full_adder fa2 (
        .a(a[2]),
        .b(b[2]),
        .c(c2),
        .sum(sum[2]),
        .carry(c_out)
    );

endmodule