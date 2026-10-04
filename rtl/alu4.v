module alu4 (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] ALU_Sel,
    output reg [3:0] Result,
    output reg       Carry
);

always @(*) begin
    Result = 4'b0000;
    Carry  = 1'b0;

    case (ALU_Sel)
        3'b000: {Carry, Result} = A + B;
        3'b001: {Carry, Result} = A - B;
        3'b010: Result = A & B;
        3'b011: Result = A | B;
        3'b100: Result = A ^ B;
        3'b101: Result = ~A;
        3'b110: Result = A << 1;
        3'b111: Result = A >> 1;
        default: Result = 4'b0000;
    endcase
end

endmodule
