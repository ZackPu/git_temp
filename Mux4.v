module Mux2(
  input   io_sel,
  input   io_in0,
  input   io_in1,
  output  io_out
);
  assign io_out = io_sel & io_in1 | ~io_sel & io_in0; // @[Mux2.scala 11:31]
endmodule
module Mux4(
  input  [1:0] io_sel,
  input        io_in0,
  input        io_in1,
  input        io_in2,
  input        io_in3,
  output       io_out
);
  wire  m0_io_sel; // @[Mux4.scala 12:18]
  wire  m0_io_in0; // @[Mux4.scala 12:18]
  wire  m0_io_in1; // @[Mux4.scala 12:18]
  wire  m0_io_out; // @[Mux4.scala 12:18]
  wire  m1_io_sel; // @[Mux4.scala 17:18]
  wire  m1_io_in0; // @[Mux4.scala 17:18]
  wire  m1_io_in1; // @[Mux4.scala 17:18]
  wire  m1_io_out; // @[Mux4.scala 17:18]
  wire  m3_io_sel; // @[Mux4.scala 22:18]
  wire  m3_io_in0; // @[Mux4.scala 22:18]
  wire  m3_io_in1; // @[Mux4.scala 22:18]
  wire  m3_io_out; // @[Mux4.scala 22:18]
  Mux2 m0 ( // @[Mux4.scala 12:18]
    .io_sel(m0_io_sel),
    .io_in0(m0_io_in0),
    .io_in1(m0_io_in1),
    .io_out(m0_io_out)
  );
  Mux2 m1 ( // @[Mux4.scala 17:18]
    .io_sel(m1_io_sel),
    .io_in0(m1_io_in0),
    .io_in1(m1_io_in1),
    .io_out(m1_io_out)
  );
  Mux2 m3 ( // @[Mux4.scala 22:18]
    .io_sel(m3_io_sel),
    .io_in0(m3_io_in0),
    .io_in1(m3_io_in1),
    .io_out(m3_io_out)
  );
  assign io_out = m3_io_out; // @[Mux4.scala 27:10]
  assign m0_io_sel = io_sel[0]; // @[Mux4.scala 15:22]
  assign m0_io_in0 = io_in0; // @[Mux4.scala 13:13]
  assign m0_io_in1 = io_in1; // @[Mux4.scala 14:13]
  assign m1_io_sel = io_sel[0]; // @[Mux4.scala 18:22]
  assign m1_io_in0 = io_in2; // @[Mux4.scala 19:13]
  assign m1_io_in1 = io_in3; // @[Mux4.scala 20:13]
  assign m3_io_sel = io_sel[1]; // @[Mux4.scala 23:22]
  assign m3_io_in0 = m0_io_out; // @[Mux4.scala 24:13]
  assign m3_io_in1 = m1_io_out; // @[Mux4.scala 25:13]
endmodule
