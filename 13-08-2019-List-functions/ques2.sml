(* in this we have to write the code of map function which takes function f and a list *)

fun map f (x :: xs) = f x :: map f xs
		| map f []  = [];

(* type of map function is map: ('a -> 'b)  -> 'a list -> 'b list *)
(* type of x is x: 'a *)
(* type of xs is xs: 'a list *)


(* Example *)

fun inc x = x+1;		(* Type of function inc is inc: int->int  *)
map inc [3,4,8];		(* Output will be val it = [4,5,9] : int list  *)
