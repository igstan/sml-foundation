structure Tuples =
struct
  structure Tuple2 =
  struct
    fun swap (a, b) = (b, a)
    fun map1st m (a, b) = (m a, b)
    fun map2nd m (a, b) = (a, m b)
  end

  structure Tuple3 =
  struct
    fun map1st m (a, b, c) = (m a, b, c)
    fun map2nd m (a, b, c) = (a, m b, c)
    fun map3nd m (a, b, c) = (a, b, m c)
  end

  structure Tuple4 =
  struct
    fun map1st m (a, b, c, d) = (m a, b, c, d)
    fun map2nd m (a, b, c, d) = (a, m b, c, d)
    fun map3rd m (a, b, c, d) = (a, b, m c, d)
    fun map4th m (a, b, c, d) = (a, b, c, m d)
  end

  structure Tuple5 =
  struct
    fun map1st m (a, b, c, d, e) = (m a, b, c, d, e)
    fun map2nd m (a, b, c, d, e) = (a, m b, c, d, e)
    fun map3rd m (a, b, c, d, e) = (a, b, m c, d, e)
    fun map4th m (a, b, c, d, e) = (a, b, c, m d, e)
    fun map5th m (a, b, c, d, e) = (a, b, c, d, m e)
  end

  structure Tuple6 =
  struct
    fun map1st m (a, b, c, d, e, f) = (m a, b, c, d, e, f)
    fun map2nd m (a, b, c, d, e, f) = (a, m b, c, d, e, f)
    fun map3rd m (a, b, c, d, e, f) = (a, b, m c, d, e, f)
    fun map4th m (a, b, c, d, e, f) = (a, b, c, m d, e, f)
    fun map5th m (a, b, c, d, e, f) = (a, b, c, d, m e, f)
    fun map6th m (a, b, c, d, e, f) = (a, b, c, d, e, m f)
  end

  structure Tuple7 =
  struct
    fun map1st m (a, b, c, d, e, f, g) = (m a, b, c, d, e, f, g)
    fun map2nd m (a, b, c, d, e, f, g) = (a, m b, c, d, e, f, g)
    fun map3rd m (a, b, c, d, e, f, g) = (a, b, m c, d, e, f, g)
    fun map4th m (a, b, c, d, e, f, g) = (a, b, c, m d, e, f, g)
    fun map5th m (a, b, c, d, e, f, g) = (a, b, c, d, m e, f, g)
    fun map6th m (a, b, c, d, e, f, g) = (a, b, c, d, e, m f, g)
    fun map7th m (a, b, c, d, e, f, g) = (a, b, c, d, e, f, m g)
  end
end
