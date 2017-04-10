(* Stack abstraction *)

signature STACK =
sig
  type 'a Stack

  exception EMPTY

  val empty : 'a Stack
  val isEmpty : 'a Stack -> bool

  val cons : 'a * 'a Stack -> 'a Stack
  val head : 'a Stack -> 'a         (* raises EMPTY if stack is empty *)
  val tail : 'a Stack -> 'a Stack   (* raises EMPTY if stack is empty *)
end

