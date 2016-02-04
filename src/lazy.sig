signature LAZY =
sig
  type 'a t

  val const : 'a -> 'a t
  val force : 'a t -> 'a
  val delay : (unit -> 'a) -> 'a t
end
