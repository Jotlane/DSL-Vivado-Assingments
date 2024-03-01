//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output [4:0]q
);
    
reg [4:0]reg_q = 4'b0000;
assign q = reg_q;
//YOUR CODE HERE

always@(A,B,ctrl)
begin
    if(ctrl) reg_q = A[7:4] + B[7:4];
    else reg_q = A[3:0] + B[3:0];
end

endmodule