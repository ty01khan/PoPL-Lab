(* subst: expr -> string -> expr -> expr *)

datatype expr =  Var  of string         			  (*  Variable 	 *)
  | Apply of expr * expr                              (* Application *)
  | Abs  of string * expr  ;        				  (* Abstraction *)
  
fun subst (Var y) x e = if(y = x) then e
					else (Var y)
  | subst (Apply(e1, e2)) x e = Apply((subst e1 x e), (subst e2 x e))
  | subst (Abs(y, e)) x e1 = if (y = x) then Abs(y, e)
  					else Abs(y, (subst e x e1))
  					
  					
