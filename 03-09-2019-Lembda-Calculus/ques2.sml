datatype expr =  Var  of string         			  (*  Variable 	 *)
  | Apply of expr * expr                              (* Application *)
  | Abs  of string * expr  ;        				  (* Abstraction *)
  
(* FV(v) ={v}
	FV(e1 e2) = FV(e1) ∪ FV(e2)
	FV(λx.e) =FV(e)\{x}			*)
	
(* 	BV(v) = {}
	BV(e1, e2) = BV(e1) U BV(e2)
	BV(λx.e) = {x} U BV(e)		*)
	

fun delete [] y = []
   | delete (x :: xs) y = if (x = y) then (delete xs y)
   					else  x :: (delete xs y)
   					
fun free (Var x) = [x]
	| free (Apply(e1,e2)) = (free e1) @ (free e2)
	| free (Abs(x,e)) = delete (free e) x
	

fun bound (Var x) = []
  | bound (Apply(e1, e2)) = (bound e1) @ (bound e2)
  | bound (Abs(x, e)) = x :: bound e
  
  
(* Example *)
val ListF1 = free (Abs("x",Apply(Var("x"),Var("y"))));
val ListF2 = free (Abs("x",Abs("y",Apply(Apply(Var("x"),Var("y")),Var("z")))));

val ListB1 = bound (Abs("x",Apply(Var("x"),Var("y"))));
val ListB2 = bound (Abs("x",Abs("y",Apply(Apply(Var("x"),Var("y")),Var("z")))));
