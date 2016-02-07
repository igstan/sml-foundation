signature INTEGER =
  sig
    include INTEGER

    val even : int -> bool
    val odd : int -> bool
    val negative : int -> bool
    val positive : int -> bool
    val clump : { min : int, max : int } -> int -> int
  end
