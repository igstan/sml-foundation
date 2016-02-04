structure Lazy :> LAZY =
struct
  datatype 'a cell =
    Suspended of unit -> 'a
  | Evaluated of 'a

  datatype 'a t =
    Const of 'a
  | Delay of 'a cell ref

  fun const a = Const a

  fun delay f = Delay (ref (Suspended f))

  fun force (Const a) = a
    | force (Delay (ref (Evaluated v))) = v
    | force (Delay (cell as ref (Suspended f))) =
      let
        val v = f ()
      in
        cell := Evaluated v
      ; v
      end
end
