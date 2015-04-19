structure Lists =
struct
  open List

  (**
   * All the list elements until the predicate returns `false`.
   *
   * ```sml
   * - Lists.takeWhile (fn a => a < 4) [1,2,3,4,5,6];
   * val it = [1,2,3] : int list
   * ```
   *)
  fun takeWhile predicate xs =
    let
      fun recur xs result =
        case xs of
          [] => rev result
        | x :: xs => if predicate x then recur xs (x :: result) else rev result
    in
      recur xs []
    end

  (**
   * All the list elements after which the predicate returns `true`.
   *
   * ```sml
   * - Lists.dropWhile (fn a => a < 4) [1,2,3,4,5,6];
   * val it = [4,5,6] : int list
   * ```
   *)
  fun dropWhile predicate xs =
    case xs of
      [] => []
    | x :: rest => if predicate x then dropWhile predicate rest else xs

  (**
   * The first element of a list, if at all.
   *
   * ```sml
   * - Lists.headOption ([] : int list);
   * val it = NONE : int option
   * - Lists.headOption [1,2,3];
   * val it = SOME 1 : int option
   * ```
   *)
  fun headOption xs = case xs of [] => NONE | x :: _  => SOME x

  (**
   * The last element of a list, if at all.
   *
   * ```sml
   * - Lists.lastOption ([] : int list);
   * val it = NONE : int option
   * - Lists.lastOption [1,2,3];
   * val it = SOME 3 : int option
   * ```
   *)
  fun lastOption xs =
    case xs of
      [] => NONE
    | x :: [] => SOME x
    | x :: xs => lastOption xs

  (**
   * All but first elements of a list, if any.
   *
   * ```sml
   * - Lists.tailOption ([] : int list);
   * val it = NONE : int list option
   * - Lists.tailOption [1,2,3];
   * val it = SOME [2,3] : int list option
   * ```
   *)
  fun tailOption xs = case xs of [] => NONE | _ :: xs => SOME xs

  (**
   * All but last elements of a list, if any.
   *
   * ```sml
   * - Lists.initOption ([] : int list);
   * val it = NONE : int list option
   * - Lists.initOption [1,2,3];
   * val it = SOME [1,2] : int list option
   * ```
   *)
  fun initOption xs =
    let
      fun recur xs result =
        case xs of
          [] => NONE
        | [x] => SOME (rev result)
        | x :: xs => recur xs (x :: result)
    in
      recur xs []
    end

  (**
   * Interleaves `i` in between successive elements of `l`.
   *
   * ```sml
   * - Lists.interleave 0 [];
   * val it = [] : int list
   * - Lists.interleave 0 [1,2,3];
   * val it = [1,0,2,0,3] : int list
   * ```
   *)
  fun interleave i l =
    let
      fun recur [] acc = rev acc
        | recur (x :: []) acc = recur [] (x :: acc)
        | recur (x :: xs) acc = recur xs (i :: x :: acc)
    in
      recur l []
    end

  local
    open Tuples

    fun prepend xs x = x :: xs
    fun folder mapFolder (x, (result, acc)) =
      Tuple2.map1 (prepend result) (mapFolder (x, acc))
  in
    (**
     * Map and fold left at the same time.
     *
     * ```sml
     * - Lists.mapFoldl (fn (x, acc) => (x, x :: acc)) [] [1,2,3];
     * val it = ([1,2,3],[3,2,1]) : int list * int list
     * ```
     *)
    fun mapFoldl mapFolder seed xs =
      Tuple2.map1 rev (foldl (folder mapFolder) ([], seed) xs)

    (**
     * Map and fold right at the same time.
     *
     * ```sml
     * - Lists.mapFoldr (fn (x, acc) => (x, x :: acc)) [] [1,2,3];
     * val it = ([1,2,3],[1,2,3]) : int list * int list
     * ```
     *)
    fun mapFoldr mapFolder seed xs =
      foldr (folder mapFolder) ([], seed) xs
  end
end
