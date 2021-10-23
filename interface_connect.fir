circuit interface_connect :
  module interface_connect :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : { data : UInt<16>, valid : UInt<1>, parity : UInt<5>}[5], flip sel : UInt<3>, out : { data : UInt<16>, valid : UInt<1>, parity : UInt<5>}[5]}

    io.out[0].parity <= io.in[0].parity @[interface_connect.scala 29:10]
    io.out[0].valid <= io.in[0].valid @[interface_connect.scala 29:10]
    io.out[0].data <= io.in[0].data @[interface_connect.scala 29:10]
    io.out[1].parity <= io.in[1].parity @[interface_connect.scala 29:10]
    io.out[1].valid <= io.in[1].valid @[interface_connect.scala 29:10]
    io.out[1].data <= io.in[1].data @[interface_connect.scala 29:10]
    io.out[2].parity <= io.in[2].parity @[interface_connect.scala 29:10]
    io.out[2].valid <= io.in[2].valid @[interface_connect.scala 29:10]
    io.out[2].data <= io.in[2].data @[interface_connect.scala 29:10]
    io.out[3].parity <= io.in[3].parity @[interface_connect.scala 29:10]
    io.out[3].valid <= io.in[3].valid @[interface_connect.scala 29:10]
    io.out[3].data <= io.in[3].data @[interface_connect.scala 29:10]
    io.out[4].parity <= io.in[4].parity @[interface_connect.scala 29:10]
    io.out[4].valid <= io.in[4].valid @[interface_connect.scala 29:10]
    io.out[4].data <= io.in[4].data @[interface_connect.scala 29:10]

