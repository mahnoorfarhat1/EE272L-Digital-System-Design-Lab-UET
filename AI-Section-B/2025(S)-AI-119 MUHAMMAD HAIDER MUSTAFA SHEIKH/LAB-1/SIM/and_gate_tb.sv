module and_gate_tb;

logic a1, b1, y1;

and_gate UUT(
    .A(a1),
    .B(b1),
    .Y(y1)
);

initial begin
    a1=0; b1=0; #10;
    a1=0; b1=1; #10;
    a1=1; b1=0; #10;
    a1=1; b1=1; #10;
    $stop;
end

endmodule