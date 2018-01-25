// Full Adder.v
// Developed By: Derek Johnston
//
// Implement a 1-bit Full Adder.
//
module FullAdder (
    input A, B, Cin,
    output S, Cout
);

// Define some wires to carry signals
wire adder1_s_adder2, adder1_c_or1, adder2_c_or1;

// Instantiate both half adders.
half_adder adder1 (
    .A(A),
    .B(B),
    .S(adder1_s_adder2),
    .C(adder1_c_or1)
); 

half_adder adder2 (
    .A(adder1_s_adder2),
    .B(Cin),
    .S(S),
    .C(adder2_c_or1)
);

// Instantiate the or gate.
or or1(Cout, adder1_c_or1, adder2_c_or1);

endmodule