circuit Demo_0 :
  module Demo_0 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in_a : UInt<2>, flip in_b : UInt<1>, out : UInt<3>}

    node _T = add(io.in_a, io.in_b) @[Demo_0.scala 10:21]
    node _T_1 = tail(_T, 1) @[Demo_0.scala 10:21]
    io.out <= _T_1 @[Demo_0.scala 10:10]

