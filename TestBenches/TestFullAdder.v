// TestFullAdder.v
// Developed By: Derek Johnston
//
// Provide a testbench for the Full Adder module.
module TestFullAdder();

// Registers for the inputs.
reg A, B, Cin;

// Wires for the outputs.
wire S, Cout;

// Instantiate the Module
FullAdder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

// Execute the TestBench
initial begin
  A = 1'b0;
  B = 1'b0;
  Cin = 1'b0;
  #20;
  A = 1'b0;
  B = 1'b0;
  Cin = 1'b1;
  #20;
  A = 1'b0;
  B = 1'b1;
  Cin = 1'b0;
  #20;
  A = 1'b0;
  B = 1'b1;
  Cin = 1'b1;
  #20;
  A = 1'b1;
  B = 1'b0;
  Cin = 1'b0;
  #20;
  A = 1'b1;
  B = 1'b0;
  Cin = 1'b1;
  #20;
  A = 1'b1;
  B = 1'b1;
  Cin = 1'b0;
  #20;
  A = 1'b1;
  B = 1'b1;
  Cin = 1'b1;
  #20;
  A = 1'b0;
  B = 1'b0;
  Cin = 1'b0;

end

endmodule
