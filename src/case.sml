structure Case =
struct
  (**
   * A pattern match case that is unreachable under the dynamic invariants of
   * the program.
   *)
  exception Unreachable
end
