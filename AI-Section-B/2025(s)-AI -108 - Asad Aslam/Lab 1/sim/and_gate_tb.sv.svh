`timescale 1ns/1ps

module and_gate_tb;

    logic a1, b1;
    logic y1;

    and_gate UUT (
        .A(a1),
        .B(b1),
        .Y(y1)
    );

    initial begin
        $monitor("%b %b | %b", a1, b1, y1);

        a1 = 0; b1 = 0; #10;
        a1 = 0; b1 = 1; #10;
        a1 = 1; b1 = 0; #10;
        a1 = 1; b1 = 1; #10;

        $finish;
    end

endmodule