(* reverse: 'a list -> 'a list *)

fun F (x, xs) = x :: xs
fun reverse xs = foldl F [] xs;



(* Example *)
val List = [2,3,4,5,6]
val revList = reverse List


(* foldl: ('a * 'a list -> 'a list) -> 'a list -> 'a list -> 'a list *)
(* F: 'a * 'a list -> 'a list *)

