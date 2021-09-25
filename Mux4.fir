circuit Mux4 :
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

  module Mux4 :
    output io : { flip sel : UInt<2>, flip in0 : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, flip in3 : UInt<1>, out : UInt<1>}

    inst m0 of Mux2 @[Mux4.scala 12:18]
    m0.io.in0 <= io.in0 @[Mux4.scala 13:13]
    m0.io.in1 <= io.in1 @[Mux4.scala 14:13]
    node _T = bits(io.sel, 0, 0) @[Mux4.scala 15:22]
    m0.io.sel <= _T @[Mux4.scala 15:13]
    inst m1 of Mux2_1 @[Mux4.scala 17:18]
    node _T_1 = bits(io.sel, 0, 0) @[Mux4.scala 18:22]
    m1.io.sel <= _T_1 @[Mux4.scala 18:13]
    m1.io.in0 <= io.in2 @[Mux4.scala 19:13]
    m1.io.in1 <= io.in3 @[Mux4.scala 20:13]
    inst m3 of Mux2_2 @[Mux4.scala 22:18]
    node _T_2 = bits(io.sel, 1, 1) @[Mux4.scala 23:22]
    m3.io.sel <= _T_2 @[Mux4.scala 23:13]
    m3.io.in0 <= m0.io.out @[Mux4.scala 24:13]
    m3.io.in1 <= m1.io.out @[Mux4.scala 25:13]
    io.out <= m3.io.out @[Mux4.scala 27:10]

