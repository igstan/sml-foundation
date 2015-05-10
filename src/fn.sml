structure Fn =
struct
  infixr 0 $
  fun f $ a = f a

  infix 1 |>
  fun a |> f = f a

  fun id a = a
  fun const a b = a
  fun curry f = fn a => fn b => f (a, b)
  fun uncurry f = fn (a, b) => f a b
  fun flip f a b = f b a
end
