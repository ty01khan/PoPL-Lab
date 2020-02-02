(* partition: ('a -> bool) -> 'a list -> 'a list * 'a list *)

fun Example x = if (x mod 2) = 0 then true
		  else false

fun F f (x, (Pos, Neg)) = if f x = true then (Pos @ [x], Neg)
					else (Pos, Neg @ [x])

fun partition f xs = foldl (F f) ([], []) xs;
foldl;
(* Example *)
partition Example [0,2,3,4,5,6,7,8,9];


(* foldl: (('a * 'a list * 'a list) -> 'a list * 'a list) -> ('a list * 'a list) -> 'a list -> ('a list * 'a list) *)
(* f: ('a -> bool) *)
(* F: ('a -> bool) - > ('a * 'a list * 'a list) -> 'a list * 'a list *)
