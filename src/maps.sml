structure Maps =
struct
  structure Binary =
  struct
    structure Int = BinaryMapFn(Keys.Int)
    structure String = BinaryMapFn(Keys.String)
    structure Substring = BinaryMapFn(Keys.Substring)
    structure Real = BinaryMapFn(Keys.Real)
    structure Char = BinaryMapFn(Keys.Char)
    structure Word = BinaryMapFn(Keys.Word)
    structure Time = BinaryMapFn(Keys.Time)
    structure Date = BinaryMapFn(Keys.Date)
    structure BinPrimIO = BinaryMapFn(Keys.BinPrimIO)
    structure TextPrimIO = BinaryMapFn(Keys.TextPrimIO)
    structure OS =
    struct
      structure FileId = BinaryMapFn(Keys.OS.FileId)
      structure IODesc = BinaryMapFn(Keys.OS.IODesc)
    end
  end

  structure RedBlack =
  struct
    structure Int = RedBlackMapFn(Keys.Int)
    structure String = RedBlackMapFn(Keys.String)
    structure Substring = RedBlackMapFn(Keys.Substring)
    structure Real = RedBlackMapFn(Keys.Real)
    structure Char = RedBlackMapFn(Keys.Char)
    structure Word = RedBlackMapFn(Keys.Word)
    structure Time = RedBlackMapFn(Keys.Time)
    structure Date = RedBlackMapFn(Keys.Date)
    structure BinPrimIO = RedBlackMapFn(Keys.BinPrimIO)
    structure TextPrimIO = RedBlackMapFn(Keys.TextPrimIO)
    structure OS =
    struct
      structure FileId = RedBlackMapFn(Keys.OS.FileId)
      structure IODesc = RedBlackMapFn(Keys.OS.IODesc)
    end
  end

  structure List =
  struct
    structure Int = ListMapFn(Keys.Int)
    structure String = ListMapFn(Keys.String)
    structure Substring = ListMapFn(Keys.Substring)
    structure Real = ListMapFn(Keys.Real)
    structure Char = ListMapFn(Keys.Char)
    structure Word = ListMapFn(Keys.Word)
    structure Time = ListMapFn(Keys.Time)
    structure Date = ListMapFn(Keys.Date)
    structure BinPrimIO = ListMapFn(Keys.BinPrimIO)
    structure TextPrimIO = ListMapFn(Keys.TextPrimIO)
    structure OS =
    struct
      structure FileId = ListMapFn(Keys.OS.FileId)
      structure IODesc = ListMapFn(Keys.OS.IODesc)
    end
  end

  structure Splay =
  struct
    structure Int = SplayMapFn(Keys.Int)
    structure String = SplayMapFn(Keys.String)
    structure Substring = SplayMapFn(Keys.Substring)
    structure Real = SplayMapFn(Keys.Real)
    structure Char = SplayMapFn(Keys.Char)
    structure Word = SplayMapFn(Keys.Word)
    structure Time = SplayMapFn(Keys.Time)
    structure Date = SplayMapFn(Keys.Date)
    structure BinPrimIO = SplayMapFn(Keys.BinPrimIO)
    structure TextPrimIO = SplayMapFn(Keys.TextPrimIO)
    structure OS =
    struct
      structure FileId = SplayMapFn(Keys.OS.FileId)
      structure IODesc = SplayMapFn(Keys.OS.IODesc)
    end
  end
end
