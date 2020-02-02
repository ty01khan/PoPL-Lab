(* In this we have to find the factorial by using range and foldl function *)

(* function fact is of type int and range is of type int list *)


fun range n m = 
	if (n = m) then
		n :: []
	else 
		n :: (range (n+1) m);

fun mul (n,m) = n*m;

fun fact n = foldl mul 1 (range 1 n);

(* function fact is to find the factorial *)




(* Examples *)

fact 4; 		(* Output should be val it = 24 : int *)
range 2 5;  	(* Output should be val it = [2,3,4,5] : int list *)


