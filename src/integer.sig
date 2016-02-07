signature INTEGER =
  sig
    include INTEGER

    val even : int -> bool
    val odd : int -> bool
  end
