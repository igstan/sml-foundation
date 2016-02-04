(**
 * ORD_KEY instances for Basis structures that expose a `compare` function.
 *)
structure Keys =
struct
  structure Int : ORD_KEY =
  struct
    type ord_key = int
    val compare = Int.compare
  end

  structure String : ORD_KEY =
  struct
    type ord_key = string
    val compare = String.compare
  end

  structure Substring : ORD_KEY =
  struct
    type ord_key = substring
    val compare = Substring.compare
  end

  structure Real : ORD_KEY =
  struct
    type ord_key = real
    val compare = Real.compare
  end

  structure Char : ORD_KEY =
  struct
    type ord_key = char
    val compare = Char.compare
  end

  structure Word : ORD_KEY =
  struct
    type ord_key = word
    val compare = Word.compare
  end

  structure Time : ORD_KEY =
  struct
    type ord_key = Time.time
    val compare = Time.compare
  end

  structure Date : ORD_KEY =
  struct
    type ord_key = Date.date
    val compare = Date.compare
  end

  structure BinPrimIO : ORD_KEY =
  struct
    type ord_key = BinPrimIO.pos
    val compare = BinPrimIO.compare
  end

  structure TextPrimIO : ORD_KEY =
  struct
    type ord_key = TextPrimIO.pos
    val compare = TextPrimIO.compare
  end

  structure OS =
  struct
    structure FileId : ORD_KEY =
    struct
      type ord_key = OS.FileSys.file_id
      val compare = OS.FileSys.compare
    end

    structure IODesc : ORD_KEY =
    struct
      type ord_key = OS.IO.iodesc
      val compare = OS.IO.compare
    end
  end
end

functor SetOrdKey(S : ORD_SET) : ORD_KEY =
struct
  type ord_key = S.set
  val compare = S.compare
end

functor Tuple2OrdKey(
  structure A : ORD_KEY
  structure B : ORD_KEY
) : ORD_KEY =
struct
  type ord_key = A.ord_key * B.ord_key

  fun compare (a : ord_key, b : ord_key) =
    case A.compare (#1 a, #1 b) of
      LESS => LESS
    | GREATER => GREATER
    | EQUAL => B.compare (#2 a, #2 b)
end

functor Tuple3OrdKey(
  structure A : ORD_KEY
  structure B : ORD_KEY
  structure C : ORD_KEY
) : ORD_KEY =
struct
  type ord_key = A.ord_key * B.ord_key * C.ord_key

  fun compare (a : ord_key, b : ord_key) =
    case A.compare (#1 a, #1 b) of
      LESS => LESS
    | GREATER => GREATER
    | EQUAL =>
      case B.compare (#2 a, #2 b) of
        LESS => LESS
      | GREATER => GREATER
      | EQUAL => C.compare (#3 a, #3 b)
end

functor Tuple4OrdKey(
  structure A : ORD_KEY
  structure B : ORD_KEY
  structure C : ORD_KEY
  structure D : ORD_KEY
) : ORD_KEY =
struct
  type ord_key = A.ord_key * B.ord_key * C.ord_key * D.ord_key

  fun compare (a : ord_key, b : ord_key) =
    case A.compare (#1 a, #1 b) of
      LESS => LESS
    | GREATER => GREATER
    | EQUAL =>
      case B.compare (#2 a, #2 b) of
        LESS => LESS
      | GREATER => GREATER
      | EQUAL =>
        case C.compare (#3 a, #3 b) of
          LESS => LESS
        | GREATER => GREATER
        | EQUAL => D.compare (#4 a, #4 b)
end

functor Tuple5OrdKey(
  structure A : ORD_KEY
  structure B : ORD_KEY
  structure C : ORD_KEY
  structure D : ORD_KEY
  structure E : ORD_KEY
) : ORD_KEY =
struct
  type ord_key = A.ord_key * B.ord_key * C.ord_key * D.ord_key * E.ord_key

  fun compare (a : ord_key, b : ord_key) =
    case A.compare (#1 a, #1 b) of
      LESS => LESS
    | GREATER => GREATER
    | EQUAL =>
      case B.compare (#2 a, #2 b) of
        LESS => LESS
      | GREATER => GREATER
      | EQUAL =>
        case C.compare (#3 a, #3 b) of
          LESS => LESS
        | GREATER => GREATER
        | EQUAL =>
          case D.compare (#4 a, #4 b) of
            LESS => LESS
          | GREATER => GREATER
          | EQUAL => E.compare (#5 a, #5 b)
end

functor Tuple6OrdKey(
  structure A : ORD_KEY
  structure B : ORD_KEY
  structure C : ORD_KEY
  structure D : ORD_KEY
  structure E : ORD_KEY
  structure F : ORD_KEY
) : ORD_KEY =
struct
  type ord_key = A.ord_key * B.ord_key * C.ord_key * D.ord_key * E.ord_key * F.ord_key

  fun compare (a : ord_key, b : ord_key) =
    case A.compare (#1 a, #1 b) of
      LESS => LESS
    | GREATER => GREATER
    | EQUAL =>
      case B.compare (#2 a, #2 b) of
        LESS => LESS
      | GREATER => GREATER
      | EQUAL =>
        case C.compare (#3 a, #3 b) of
          LESS => LESS
        | GREATER => GREATER
        | EQUAL =>
          case D.compare (#4 a, #4 b) of
            LESS => LESS
          | GREATER => GREATER
          | EQUAL =>
            case E.compare (#5 a, #5 b) of
              LESS => LESS
            | GREATER => GREATER
            | EQUAL => F.compare (#6 a, #6 b)
end

functor Tuple7OrdKey(
  structure A : ORD_KEY
  structure B : ORD_KEY
  structure C : ORD_KEY
  structure D : ORD_KEY
  structure E : ORD_KEY
  structure F : ORD_KEY
  structure G : ORD_KEY
) : ORD_KEY =
struct
  type ord_key = A.ord_key * B.ord_key * C.ord_key * D.ord_key * E.ord_key * F.ord_key * G.ord_key

  fun compare (a : ord_key, b : ord_key) =
    case A.compare (#1 a, #1 b) of
      LESS => LESS
    | GREATER => GREATER
    | EQUAL =>
      case B.compare (#2 a, #2 b) of
        LESS => LESS
      | GREATER => GREATER
      | EQUAL =>
        case C.compare (#3 a, #3 b) of
          LESS => LESS
        | GREATER => GREATER
        | EQUAL =>
          case D.compare (#4 a, #4 b) of
            LESS => LESS
          | GREATER => GREATER
          | EQUAL =>
            case E.compare (#5 a, #5 b) of
              LESS => LESS
            | GREATER => GREATER
            | EQUAL =>
              case F.compare (#6 a, #6 b) of
                LESS => LESS
              | GREATER => GREATER
              | EQUAL => G.compare (#7 a, #7 b)
end
