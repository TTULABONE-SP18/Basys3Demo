// half_adder.v
// Developed By: Derek Johnston
//
// Implement the combinational logic for a 1-bit binary half_adder
//
module half_adder (
    input A, B,
    output S, C
);

// Implement the half_adder
xor u1(S, A, B);
and u2(C, A, B);

endmodule