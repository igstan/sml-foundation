signature STRING =
sig
  include STRING

  val words : string -> string list
  val lines : string -> string list
  val repeat : int -> string -> string
end
