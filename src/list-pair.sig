signature LIST_PAIR =
sig
  include LIST_PAIR

  (**
   * Produces a list of all the pairs in the first list, `listPair`, whose
   * keys are present in `whiteList`. Example:
   *
   * ```sml
   * - filterListPair op= [(1,"a"), (2,"b"), (3,"c")] [2,3];
   * val it = [(2,"b"),(3,"c")] : (int * string) list
   * ```
   *)
  val filterListPair : ('a * 'a -> bool) -> ('a * 'b) list -> 'a list -> ('a * 'b) list

  val zipOption : 'a list * 'b list -> ('a option * 'b option) list

  val zipWithIndex : 'a list -> ('a * int) list
end
