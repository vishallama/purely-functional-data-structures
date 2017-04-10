(* Import STACK signature *)
use "stack.sml";

structure List : STACK =
struct
  type 'a Stack = 'a list

  exception EMPTY

  val empty = []
  fun isEmpty s = null s

  fun cons(x, s) = x :: s
  fun head s = hd s
  fun tail s = tl s
end

