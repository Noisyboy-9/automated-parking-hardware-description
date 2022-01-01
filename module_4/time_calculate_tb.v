`include "./time_calculate.v"
module time_calculate_tb;
reg [7:0] time_in;
reg [7:0] time_out;
wire [7:0] result;
time_calculate uut(time_out, time_in, result);

initial begin
    $dumpfile("result.vcd");
    $dumpvars(0, time_calculate_tb);

    time_in = 0000_0000; time_out = 0000_0000; #100
    time_in = 0000_0000; time_out = 0010_0000; #100
    time_in = 0000_0000; time_out = 1000_0000; #100
    time_in = 0000_0000; time_out = 0000_1111; #100
    time_in = 0000_0001; time_out = 0000_1111; #100
    time_in = 0000_0001; time_out = 0000_1110; #100
    time_in = 0000_0001; time_out = 0000_1100; #100
    time_in = 0000_0001; time_out = 0000_1000; #100
    $finish;
    end
endmodule