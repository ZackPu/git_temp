module interface_connect(
  input         clock,
  input         reset,
  input  [15:0] io_in_0_data,
  input         io_in_0_valid,
  input  [4:0]  io_in_0_parity,
  input  [15:0] io_in_1_data,
  input         io_in_1_valid,
  input  [4:0]  io_in_1_parity,
  input  [15:0] io_in_2_data,
  input         io_in_2_valid,
  input  [4:0]  io_in_2_parity,
  input  [15:0] io_in_3_data,
  input         io_in_3_valid,
  input  [4:0]  io_in_3_parity,
  input  [15:0] io_in_4_data,
  input         io_in_4_valid,
  input  [4:0]  io_in_4_parity,
  input  [2:0]  io_sel,
  output [15:0] io_out_0_data,
  output        io_out_0_valid,
  output [4:0]  io_out_0_parity,
  output [15:0] io_out_1_data,
  output        io_out_1_valid,
  output [4:0]  io_out_1_parity,
  output [15:0] io_out_2_data,
  output        io_out_2_valid,
  output [4:0]  io_out_2_parity,
  output [15:0] io_out_3_data,
  output        io_out_3_valid,
  output [4:0]  io_out_3_parity,
  output [15:0] io_out_4_data,
  output        io_out_4_valid,
  output [4:0]  io_out_4_parity
);
  assign io_out_0_data = io_in_0_data; // @[interface_connect.scala 29:10]
  assign io_out_0_valid = io_in_0_valid; // @[interface_connect.scala 29:10]
  assign io_out_0_parity = io_in_0_parity; // @[interface_connect.scala 29:10]
  assign io_out_1_data = io_in_1_data; // @[interface_connect.scala 29:10]
  assign io_out_1_valid = io_in_1_valid; // @[interface_connect.scala 29:10]
  assign io_out_1_parity = io_in_1_parity; // @[interface_connect.scala 29:10]
  assign io_out_2_data = io_in_2_data; // @[interface_connect.scala 29:10]
  assign io_out_2_valid = io_in_2_valid; // @[interface_connect.scala 29:10]
  assign io_out_2_parity = io_in_2_parity; // @[interface_connect.scala 29:10]
  assign io_out_3_data = io_in_3_data; // @[interface_connect.scala 29:10]
  assign io_out_3_valid = io_in_3_valid; // @[interface_connect.scala 29:10]
  assign io_out_3_parity = io_in_3_parity; // @[interface_connect.scala 29:10]
  assign io_out_4_data = io_in_4_data; // @[interface_connect.scala 29:10]
  assign io_out_4_valid = io_in_4_valid; // @[interface_connect.scala 29:10]
  assign io_out_4_parity = io_in_4_parity; // @[interface_connect.scala 29:10]
endmodule
