// test_half_adder.v
// Developed By: Derek Johnston

module test_half_adder ();

// Registers for the inputs.
reg A, B;

// Wires for the output.
wire S, C;

// Create an instance of the "unit under test"
half_adder uut (
    .A(A),
    .B(B),
    .S(S),
    .C(C)
);

// TEST PROGRAM GOES HERE
initial begin
  A = 1'b0;
  B = 1'b0;
  #100;
  A = 1'b0;
  B = 1'b1;
  #100;
  A = 1'b1;
  B = 1'b0;
  #100;
  A = 1'b1;
  B = 1'b1;
  #100;
  A = 1'b0;
  B = 1'b0;
end

endmodule