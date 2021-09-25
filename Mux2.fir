circuit Mux2 :
  module Mux2 :
    output io : { flip sel : UInt<1>, flip in0 : UInt<1>, flip in1 : UInt<1>, out : UInt<1>}

    node _T = and(io.sel, io.in1) @[Mux2.scala 11:21]
    node _T_1 = not(io.sel) @[Mux2.scala 11:34]
    node _T_2 = and(_T_1, io.in0) @[Mux2.scala 11:42]
    node _T_3 = or(_T, _T_2) @[Mux2.scala 11:31]
    io.out <= _T_3 @[Mux2.scala 11:10]

