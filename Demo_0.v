module Demo_0(
  input        clock,
  input        reset,
  input  [1:0] io_in_a,
  input        io_in_b,
  output [2:0] io_out
);
  wire [1:0] _GEN_0 = {{1'd0}, io_in_b}; // @[Demo_0.scala 10:21]
  wire [1:0] _T_1 = io_in_a + _GEN_0; // @[Demo_0.scala 10:21]
  assign io_out = {{1'd0}, _T_1}; // @[Demo_0.scala 10:21]
endmodule
