structure Sets =
struct
  structure Binary =
  struct
    structure Int = BinarySetFn(Keys.Int)
    structure String = BinarySetFn(Keys.String)
    structure Substring = BinarySetFn(Keys.Substring)
    structure Real = BinarySetFn(Keys.Real)
    structure Char = BinarySetFn(Keys.Char)
    structure Word = BinarySetFn(Keys.Word)
    structure Time = BinarySetFn(Keys.Time)
    structure Date = BinarySetFn(Keys.Date)
    structure BinPrimIO = BinarySetFn(Keys.BinPrimIO)
    structure TextPrimIO = BinarySetFn(Keys.TextPrimIO)
    structure OS =
    struct
      structure FileId = BinarySetFn(Keys.OS.FileId)
      structure IODesc = BinarySetFn(Keys.OS.IODesc)
    end
  end

  structure RedBlack =
  struct
    structure Int = RedBlackSetFn(Keys.Int)
    structure String = RedBlackSetFn(Keys.String)
    structure Substring = RedBlackSetFn(Keys.Substring)
    structure Real = RedBlackSetFn(Keys.Real)
    structure Char = RedBlackSetFn(Keys.Char)
    structure Word = RedBlackSetFn(Keys.Word)
    structure Time = RedBlackSetFn(Keys.Time)
    structure Date = RedBlackSetFn(Keys.Date)
    structure BinPrimIO = RedBlackSetFn(Keys.BinPrimIO)
    structure TextPrimIO = RedBlackSetFn(Keys.TextPrimIO)
    structure OS =
    struct
      structure FileId = RedBlackSetFn(Keys.OS.FileId)
      structure IODesc = RedBlackSetFn(Keys.OS.IODesc)
    end
  end

  structure List =
  struct
    structure Int = ListSetFn(Keys.Int)
    structure String = ListSetFn(Keys.String)
    structure Substring = ListSetFn(Keys.Substring)
    structure Real = ListSetFn(Keys.Real)
    structure Char = ListSetFn(Keys.Char)
    structure Word = ListSetFn(Keys.Word)
    structure Time = ListSetFn(Keys.Time)
    structure Date = ListSetFn(Keys.Date)
    structure BinPrimIO = ListSetFn(Keys.BinPrimIO)
    structure TextPrimIO = ListSetFn(Keys.TextPrimIO)
    structure OS =
    struct
      structure FileId = ListSetFn(Keys.OS.FileId)
      structure IODesc = ListSetFn(Keys.OS.IODesc)
    end
  end

  structure Splay =
  struct
    structure Int = SplaySetFn(Keys.Int)
    structure String = SplaySetFn(Keys.String)
    structure Substring = SplaySetFn(Keys.Substring)
    structure Real = SplaySetFn(Keys.Real)
    structure Char = SplaySetFn(Keys.Char)
    structure Word = SplaySetFn(Keys.Word)
    structure Time = SplaySetFn(Keys.Time)
    structure Date = SplaySetFn(Keys.Date)
    structure BinPrimIO = SplaySetFn(Keys.BinPrimIO)
    structure TextPrimIO = SplaySetFn(Keys.TextPrimIO)
    structure OS =
    struct
      structure FileId = SplaySetFn(Keys.OS.FileId)
      structure IODesc = SplaySetFn(Keys.OS.IODesc)
    end
  end
end
