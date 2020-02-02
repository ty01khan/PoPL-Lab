(* fresh : string list -> string *)

fun new "a" = "b"
  | new _ = "a"


fun diagonalise [] i = "a"
	| diagonalise (x :: xs) i = if (size x > i) then (new (substring (x, i, 1))) ^ diagonalise xs (i+1)
							else diagonalise xs i


fun fresh xs = diagonalise xs 0;


(* diagonalise : string list -> int -> string *)
(* new : string -> string *)

