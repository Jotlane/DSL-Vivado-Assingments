//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output [1:0]W,
    output [1:0]X,
    output [1:0]Y,
    output [1:0]Z
    );
    
//YOUR CODE HERE
reg [1:0] reg_W = 2'b00;
reg [1:0] reg_X = 2'b00;
reg [1:0] reg_Y = 2'b00;
reg [1:0] reg_Z = 2'b00;

assign W = reg_W;
assign X = reg_X;
assign Y = reg_Y;
assign Z = reg_Z;

always@(A, SEL)
    begin
    case(SEL)
        2'b00: begin reg_W=A; reg_X=2'b00; reg_Y=2'b00; reg_Z=2'b00; end
        2'b01: begin reg_W=2'b00; reg_X=A; reg_Y=2'b00; reg_Z=2'b00; end
        2'b10: begin reg_W=2'b00; reg_X=2'b00; reg_Y=A; reg_Z=2'b00; end
        2'b11: begin reg_W=2'b00; reg_X=2'b00; reg_Y=2'b00; reg_Z=A; end
    endcase
    end


endmodule