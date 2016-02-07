structure Int : INTEGER =
  struct
    open Int

    fun even n = (n mod 2) = 0
    fun odd n = (n mod 2) <> 0
  end
