module decade_counter_tb();

reg clk;
reg rst;
wire [3:0]count;
wire ten;

decade_counter decade_counter_u0(
    .clk(clk),
    .rst(rst),
    .count(count),
    .ten(ten)
);

always begin
    //YOUR CODE HERE - Generate 20 unit time clock;
    #10 clk = !clk;
end

initial begin
    rst = 1; clk = 0;
    #30 rst = 0;
    #600 $stop;
    #10 $finish;
end

endmodule