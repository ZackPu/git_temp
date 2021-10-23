circuit Mux4_fac :
  module Mux2 :
    output io : { flip sel : UInt<1>, flip in0 : UInt<1>, flip in1 : UInt<1>, out : UInt<1>}

    node _T = and(io.sel, io.in1) @[Mux2.scala 11:21]
    node _T_1 = not(io.sel) @[Mux2.scala 11:34]
    node _T_2 = and(_T_1, io.in0) @[Mux2.scala 11:42]
    node _T_3 = or(_T, _T_2) @[Mux2.scala 11:31]
    io.out <= _T_3 @[Mux2.scala 11:10]

  module Mux2_1 :
    output io : { flip sel : UInt<1>, flip in0 : UInt<1>, flip in1 : UInt<1>, out : UInt<1>}

    node _T = and(io.sel, io.in1) @[Mux2.scala 11:21]
    node _T_1 = not(io.sel) @[Mux2.scala 11:34]
    node _T_2 = and(_T_1, io.in0) @[Mux2.scala 11:42]
    node _T_3 = or(_T, _T_2) @[Mux2.scala 11:31]
    io.out <= _T_3 @[Mux2.scala 11:10]

  module Mux2_2 :
    output io : { flip sel : UInt<1>, flip in0 : UInt<1>, flip in1 : UInt<1>, out : UInt<1>}

    node _T = and(io.sel, io.in1) @[Mux2.scala 11:21]
    node _T_1 = not(io.sel) @[Mux2.scala 11:34]
    node _T_2 = and(_T_1, io.in0) @[Mux2.scala 11:42]
    node _T_3 = or(_T, _T_2) @[Mux2.scala 11:31]
    io.out <= _T_3 @[Mux2.scala 11:10]

  module Mux4_fac :
    output io : { flip sel : UInt<2>, flip in0 : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, flip in3 : UInt<1>, out : UInt<1>}

    node _T = bits(io.sel, 1, 1) @[Mux4.scala 39:24]
    node _T_1 = bits(io.sel, 0, 0) @[Mux4.scala 39:40]
    inst Mux2 of Mux2 @[Mux2.scala 17:19]
    Mux2.io.in0 <= io.in0 @[Mux2.scala 18:14]
    Mux2.io.in1 <= io.in1 @[Mux2.scala 19:14]
    Mux2.io.sel <= _T_1 @[Mux2.scala 20:14]
    node _T_2 = bits(io.sel, 0, 0) @[Mux4.scala 39:73]
    inst Mux2_1 of Mux2_1 @[Mux2.scala 17:19]
    Mux2_1.io.in0 <= io.in2 @[Mux2.scala 18:14]
    Mux2_1.io.in1 <= io.in3 @[Mux2.scala 19:14]
    Mux2_1.io.sel <= _T_2 @[Mux2.scala 20:14]
    inst Mux2_2 of Mux2_2 @[Mux2.scala 17:19]
    Mux2_2.io.in0 <= Mux2.io.out @[Mux2.scala 18:14]
    Mux2_2.io.in1 <= Mux2_1.io.out @[Mux2.scala 19:14]
    Mux2_2.io.sel <= _T @[Mux2.scala 20:14]
    io.out <= Mux2_2.io.out @[Mux4.scala 39:10]

