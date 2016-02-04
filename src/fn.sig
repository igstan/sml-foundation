signature FN =
sig
  include FN

  structure Syntax : sig
    structure |> : sig
      val |> : 'a * ('a -> 'b) -> 'b
    end

    structure $ : sig
      val $ : ('a -> 'b) * 'a -> 'b
    end

    structure <| : sig
      val <| : ('a -> 'b) * 'a -> 'b
    end

    val |> : 'a * ('a -> 'b) -> 'b
    val $ : ('a -> 'b) * 'a -> 'b
    val <| : ('a -> 'b) * 'a -> 'b
  end
end
