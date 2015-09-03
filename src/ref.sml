structure Ref :> REF =
struct
  fun getAndIncrement cell =
    !cell before (cell := !cell + 1)

  fun incrementAndGet cell =
    (cell := !cell + 1 ; !cell)

  fun getAndUpdate cell f =
    !cell before (cell := f (!cell))

  fun updateAndGet cell f =
    (cell := f (!cell) ; !cell)

  fun update cell f =
    cell := f (!cell)

  fun =! (cell, f) =
    cell := f (!cell)
end
