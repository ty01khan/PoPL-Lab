(* In this we have to write two function foldr and foldl *)


fun foldr f (x :: xs) y = f x (foldr f xs y) | foldr f [] y = y;


fun foldl f y (x :: xs) = foldl f (f y x) xs | foldl f y [] = y;

(* In the above foldr and foldl functon we use f which is binary function which takes two argument, y is known as accumlator *)



(* Examples *)

fun plus x y = x + y;

foldl plus 3 [1,2,3,4];     (*Answer should be      val it = 13 : int     *)

foldr plus [1,2,3] 2;		(*Answer should be      val it = 8 : int     *)
