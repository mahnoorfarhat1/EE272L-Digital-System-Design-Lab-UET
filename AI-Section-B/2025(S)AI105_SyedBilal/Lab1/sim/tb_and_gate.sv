`timescale 1ns/1ps
module tb_and_gate;
    logic x_top;
    logic y_top;
    logic z_top;

    and_gate dut(
        .x(x_top), 
        .y(y_top), 
        .z(z_top)
    );

    initial begin
        $monitor("Time=%0t | x=%b y=%b | z=%b", $time, x_top, y_top, z_top);

        x_top = 0; y_top = 0;
        #10;

        x_top = 0; y_top = 1;
        #10;

        x_top = 1; y_top = 0;
        #10;

        x_top = 1; y_top = 1;
        #10;

        $stop;
    end
endmodule