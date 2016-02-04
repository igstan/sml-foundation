signature REF =
sig
  include REF

  val getAndIncrement : int ref -> int
  val incrementAndGet : int ref -> int

  val getAndUpdate : 'a ref -> ('a -> 'a) -> 'a
  val updateAndGet : 'a ref -> ('a -> 'a) -> 'a

  (**
   * Sets the contents of the cell using the value produced by calling the
   * second argument with the current contents.
   *
   * ```sml
   * - val r : int list ref = ref [];
   * val r = ref [] : int list ref
   * - Ref.update r (cons 1);
   * val it = () : unit
   * - r;
   * val it = ref [1] : int list ref
   * ```
   *)
  val update : 'a ref -> ('a -> 'a) -> unit
end
