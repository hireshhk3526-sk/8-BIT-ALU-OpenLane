module ALU (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] sel,
    output [7:0] Y,
    output Carry
);

alu_core U1 (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y),
    .Carry(Carry)
);

endmodule
