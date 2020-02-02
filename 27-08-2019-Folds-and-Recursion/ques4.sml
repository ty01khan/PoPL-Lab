(* nth: 'a list * int -> 'a option *)

fun F _ = NONE

fun func (x, f) = fn n => if (n = 0) then SOME x
	else f (n-1)
  
fun nth (xs, n) = foldr func F xs n


(* Example *)
val list = [2,3,4,5]
val nth = nth (list, 2)
  
(* f: 'a-> 'b option *)
(* func: 'a * (int -> 'a option) -> int -> 'a option *)
