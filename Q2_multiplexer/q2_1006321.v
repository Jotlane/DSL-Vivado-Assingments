//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output [1:0]X
);

//YOUR CODE HERE
//TIPS: IN THE VERILOG CASE STATEMENT, YOU HAVE TO LIST ALL CONDITION TO AVIOD ANY AMBIGUOUS STATEMENT;

reg [1:0] reg_X = 2'b00;
assign X = reg_X;

always@(A, B, C, D, SEL)
    begin
    case(SEL)
        2'b00: reg_X=A;
        2'b01: reg_X=B;
        2'b10: reg_X=C;
        2'b11: reg_X=D;
    endcase
    end

endmodule