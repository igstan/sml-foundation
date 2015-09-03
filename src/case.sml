structure Case =
struct
  (**
   * A pattern match case that is unreachable given the invariants of the
   * program.
   *)
  exception Unreachable
end
