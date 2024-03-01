//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module CCTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output [4:0] q
);
    
reg [4:0]reg_q = 5'b00000;
assign q = reg_q;

//YOUR CODE HERE

always@(A,B,C,rst,ctrl)
begin
    if(rst) reg_q = 5'b00000;
    else
    begin
    if(ctrl) reg_q = A - C;
    else reg_q = A + B;
    end
end

endmodule