module full_adder(
    input logic a, b, c_in,
    output logic sum, c_out
);
    logic a1, b1, c1;

    xor g1(sum, a, b, c_in);  // sum = a XOR b XOR c_in
    and g2(a1, a, b);
    and g3(b1, a, c_in);
    and g4(c1, b, c_in);
    or  g5(c_out, a1, b1, c1); // carry
endmodule


