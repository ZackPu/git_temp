import chisel3._

class Mux4 extends RawModule {
  val io = IO(new Bundle {
    val sel = Input(UInt(2.W))
    val in0 = Input(UInt(1.W))
    val in1 = Input(UInt(1.W))
    val in2 = Input(UInt(1.W))
    val in3 = Input(UInt(1.W))
    val out = Output(UInt(1.W))
  })
  val m0 = Module(new Mux2)
  m0.io.in0 := io.in0
  m0.io.in1 := io.in1
  m0.io.sel := io.sel(0)

  val m1 = Module(new Mux2)
  m1.io.sel := io.sel(0)
  m1.io.in0 := io.in2
  m1.io.in1 := io.in3

  val m3 = Module(new Mux2)
  m3.io.sel := io.sel(1)
  m3.io.in0 := m0.io.out
  m3.io.in1 := m1.io.out

  io.out := m3.io.out
}

class Mux4_fac extends RawModule {
  val io = IO(new Bundle {
    val sel = Input(UInt(2.W))
    val in0 = Input(UInt(1.W))
    val in1 = Input(UInt(1.W))
    val in2 = Input(UInt(1.W))
    val in3 = Input(UInt(1.W))
    val out = Output(UInt(1.W))
  })
  io.out := Mux2(io.sel(1), Mux2(io.sel(0), io.in0, io.in1), Mux2(io.sel(0), io.in2, io.in3))
}
object Mux4 extends App {Driver.emitVerilog(new Mux4_fac())
}