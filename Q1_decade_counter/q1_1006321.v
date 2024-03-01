//!DO NOT EDIT MODULE NAME AND PORT NAME!
module decade_counter(
    input clk,
    input rst,
    output [3:0] count,
    output ten
);
//YOUR CODE HERE
reg reg_ten = 1'b0; 
reg [3:0] reg_count = 4'b0;
assign ten = reg_ten;
assign count = reg_count;
always@(posedge clk, posedge rst)
    begin
        if(rst)
            begin
                reg_ten = 1'b0;
                reg_count = 4'b0000;
            end
        else reg_count = reg_count + 1'b1;
        if (reg_count == 4'b1010)
            begin
                reg_ten = 1'b1;
                reg_count = 4'b0000;
            end
    end

endmodule