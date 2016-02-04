structure String : STRING =
struct
  open String

  (**
   * Splits a string into a list of words.
   *
   * ```sml
   * - Lists.words "";
   * val it = [] : string list
   * - Lists.words "foo bar  baz";
   * val it = ["foo","bar","baz"] : string list
   * ```
   *)
  fun words str = String.tokens Char.isSpace str

  (**
   * Splits a string into a list of lines.
   *
   * ```sml
   * - Lists.lines "";
   * val it = [] : string list
   * - Lists.lines "foo\nbar\nbaz";
   * val it = ["foo","bar","baz"] : string list
   * ```
   *)
  fun lines str = String.tokens (fn c => c = #"\n") str

  fun repeat times s =
    String.concat (List.tabulate (times, Fn.const s))
end
