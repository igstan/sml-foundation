signature REF =
sig
  val getAndIncrement : int ref -> int
  val incrementAndGet : int ref -> int
end
