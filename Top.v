// Top.v (Basys3 HalfAdder)
// Developed By: Derek Johnston

module Top (
    input [1:0] sw,
    output [1:0] led
)

// Implement the HalfAdder
half_adder u1 (
    .A(sw[0]),
    .B(sw[1]),
    .S(led[0]),
    .C(led[1])
);

endmodule