structure Fn : FN =
struct
  open Fn

  structure Syntax =
  struct
    structure <| =
    struct
      infixr 0 <|
      fun f <| a = f a
    end

    structure $ =
    struct
      infixr 0 $
      fun f $ a = f a
    end

    structure |> =
    struct
      infix 1 |>
      fun a |> f = f a
    end

    open <| $ |>
  end
end
