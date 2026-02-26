`timescale 1ns/1ps

module and_gate (
    input a,
    input b,
    output y
);
    assign y = a & b;
endmodule

module and_gate_tb;
    reg a;
    reg b;
    wire y;

    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $stop;
    end
endmodule