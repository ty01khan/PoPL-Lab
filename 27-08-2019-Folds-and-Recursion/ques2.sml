(* map : ('a -> 'b) -> 'a list -> 'b list *)

fun F f (x, y) = f x :: y
fun map f x = foldr (F f) [] x;



(* Example *)
fun incr x = x+1;
map incr [3,6,4,7,1];


(* F : ('a -> 'b) -> 'a * 'b list -> 'b list *)
(* f : ('a -> 'b) *)
(* foldr : ('a * 'b list -> 'b list) -> 'b list -> 'a list -> 'b list *)
