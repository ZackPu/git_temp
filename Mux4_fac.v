module Mux2(
  input   io_sel,
  input   io_in0,
  input   io_in1,
  output  io_out
);
  assign io_out = io_sel & io_in1 | ~io_sel & io_in0; // @[Mux2.scala 11:31]
endmodule
module Mux4_fac(
  input  [1:0] io_sel,
  input        io_in0,
  input        io_in1,
  input        io_in2,
  input        io_in3,
  output       io_out
);
  wire  Mux2_io_sel; // @[Mux2.scala 17:19]
  wire  Mux2_io_in0; // @[Mux2.scala 17:19]
  wire  Mux2_io_in1; // @[Mux2.scala 17:19]
  wire  Mux2_io_out; // @[Mux2.scala 17:19]
  wire  Mux2_1_io_sel; // @[Mux2.scala 17:19]
  wire  Mux2_1_io_in0; // @[Mux2.scala 17:19]
  wire  Mux2_1_io_in1; // @[Mux2.scala 17:19]
  wire  Mux2_1_io_out; // @[Mux2.scala 17:19]
  wire  Mux2_2_io_sel; // @[Mux2.scala 17:19]
  wire  Mux2_2_io_in0; // @[Mux2.scala 17:19]
  wire  Mux2_2_io_in1; // @[Mux2.scala 17:19]
  wire  Mux2_2_io_out; // @[Mux2.scala 17:19]
  Mux2 Mux2 ( // @[Mux2.scala 17:19]
    .io_sel(Mux2_io_sel),
    .io_in0(Mux2_io_in0),
    .io_in1(Mux2_io_in1),
    .io_out(Mux2_io_out)
  );
  Mux2 Mux2_1 ( // @[Mux2.scala 17:19]
    .io_sel(Mux2_1_io_sel),
    .io_in0(Mux2_1_io_in0),
    .io_in1(Mux2_1_io_in1),
    .io_out(Mux2_1_io_out)
  );
  Mux2 Mux2_2 ( // @[Mux2.scala 17:19]
    .io_sel(Mux2_2_io_sel),
    .io_in0(Mux2_2_io_in0),
    .io_in1(Mux2_2_io_in1),
    .io_out(Mux2_2_io_out)
  );
  assign io_out = Mux2_2_io_out; // @[Mux4.scala 39:10]
  assign Mux2_io_sel = io_sel[0]; // @[Mux4.scala 39:40]
  assign Mux2_io_in0 = io_in0; // @[Mux2.scala 18:14]
  assign Mux2_io_in1 = io_in1; // @[Mux2.scala 19:14]
  assign Mux2_1_io_sel = io_sel[0]; // @[Mux4.scala 39:73]
  assign Mux2_1_io_in0 = io_in2; // @[Mux2.scala 18:14]
  assign Mux2_1_io_in1 = io_in3; // @[Mux2.scala 19:14]
  assign Mux2_2_io_sel = io_sel[1]; // @[Mux4.scala 39:24]
  assign Mux2_2_io_in0 = Mux2_io_out; // @[Mux2.scala 18:14]
  assign Mux2_2_io_in1 = Mux2_1_io_out; // @[Mux2.scala 19:14]
endmodule
