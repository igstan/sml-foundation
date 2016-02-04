signature OPTION =
sig
  include OPTION

  val getOrElse : 'a option -> 'a Lazy.t -> 'a
  val mapOrElse : 'a option -> ('a -> 'b) -> 'b Lazy.t -> 'b
end
