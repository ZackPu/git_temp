import chisel3._
import chisel3.Driver

class Demo_0 extends Module {
  val io = IO(new Bundle {
    var in_a = Input(UInt(2.W))
    var in_b = Input(UInt(1.W))
    var out = Output(UInt(3.W))
  })
  io.out := io.in_a + io.in_b
}

object Demo_0 extends App {
  Driver.emitVerilog(new Demo_0())
}
