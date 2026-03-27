module full_adder(
    input  logic A,
    input  logic B,
    input  logic Cin,
    output logic Sum,
    output logic Cout
);

    logic a1,a2,a3;

    xor(Sum, A, B, Cin);
    and(a1, A, B);
    and(a2, A, Cin);
    and(a3, B, Cin);
    or(Cout, a1, a2, a3);

endmodule
