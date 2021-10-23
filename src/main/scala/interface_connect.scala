import chisel3._
import chisel3.util.log2Ceil
import chisel3.Driver

class SimpleLink extends Bundle {
  val data = Output(UInt(16.W))
  val valid = Output(Bool())
}
class PLink extends SimpleLink {
  val parity = Output(UInt(5.W))
}
class CrossbarIo(n:Int) extends Bundle {
  val in = Vec(n, Flipped(new PLink))
  val sel = Input(UInt(log2Ceil(n).W))
  val out = Vec(n, new PLink)
}

class FilterIO extends Bundle {
  val x = Flipped(new PLink)
  val y = new PLink
}
class Filter extends Module {
  val io = IO(new FilterIO)
  io.x <> io.y
}

class interface_connect(n: Int) extends Module {
  val io =IO(new CrossbarIo(n))
  io.out <> io.in
}

object interface_connect extends App {
  Driver.emitVerilog(new interface_connect(5))
}
