(* Implement custom stack *)
use "stack.sml";

structure CustomStack : STACK =
struct
  datatype 'a Stack = NIL
                    | CONS of 'a * 'a Stack

  exception EMPTY

  val empty = NIL
  fun isEmpty NIL = true
    | isEmpty _ = false

  fun cons(x, s) = CONS(x, s)
  fun head NIL = raise EMPTY
    | head (CONS(x, _)) = x
  fun tail NIL = raise EMPTY
    | tail (CONS(_, s)) = s
end

