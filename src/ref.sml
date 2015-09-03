structure Ref :> REF =
struct
  fun getAndIncrement cell =
    !cell before (cell := !cell + 1)

  fun incrementAndGet cell =
    (cell := !cell + 1; !cell)
end
