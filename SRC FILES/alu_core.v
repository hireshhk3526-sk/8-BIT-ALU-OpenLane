module alu_core (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] sel,
    output reg [7:0] Y,
    output reg Carry
);

always @(*) begin
    Carry = 0;

    case(sel)
        3'b000: begin
            {Carry, Y} = A + B;   // Addition
        end

        3'b001: begin
            {Carry, Y} = A - B;   // Subtraction
        end

        3'b010: begin
            Y = A & B;            // AND
        end

        3'b011: begin
            Y = A | B;            // OR
        end

        3'b100: begin
            Y = A ^ B;            // XOR
        end

        3'b101: begin
            Y = ~A;               // NOT A
        end

        3'b110: begin
            Y = A << 1;           // Left Shift
        end

        3'b111: begin
            Y = A >> 1;           // Right Shift
        end

        default: begin
            Y = 8'b00000000;
            Carry = 0;
        end
    endcase

end

endmodule
