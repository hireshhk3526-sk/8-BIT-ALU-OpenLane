`timescale 1ns/1ps

module alu_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] sel;

wire [7:0] Y;
wire Carry;

ALU uut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y),
    .Carry(Carry)
);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

    A = 8'd15;  B = 8'd5;

    sel = 3'b000; #10;   // ADD
    sel = 3'b001; #10;   // SUB
    sel = 3'b010; #10;   // AND
    sel = 3'b011; #10;   // OR
    sel = 3'b100; #10;   // XOR
    sel = 3'b101; #10;   // NOT
    sel = 3'b110; #10;   // LEFT SHIFT
    sel = 3'b111; #10;   // RIGHT SHIFT

    A = 8'd100;
    B = 8'd50;

    sel = 3'b000; #10;
    sel = 3'b001; #10;

    $finish;
end

endmodule
