structure Int : INTEGER =
  struct
    open Int

    fun even n = (n mod 2) = 0
    fun odd n = (n mod 2) <> 0
    fun negative n = (Int.sign n) < 0
    fun positive n = (Int.sign n) >= 0
    fun clump { min, max } n = Int.max (min, Int.min (n, max))
  end
