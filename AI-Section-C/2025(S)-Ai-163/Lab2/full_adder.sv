module full_adder
(
    input  logic a,
    input  logic b,
    input  logic c,
    output logic sum,
    output logic carry
);

    logic x1;
    logic a1, a2, a3;

    // XOR for Sum
    xor (x1, a, b);
    xor (sum, x1, c);

    // AND gates for Carry
    and (a1, a, b);
    and (a2, a, c);
    and (a3, b, c);

    // OR gate for final carry
    or (carry, a1, a2, a3);

endmodule
