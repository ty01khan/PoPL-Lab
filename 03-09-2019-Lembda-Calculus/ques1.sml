datatype expr =  Var of string         			  	(*  Variable 	 *)
  | Apply of expr * expr                         (* Application *)
  | Abs of string * expr            				(* Abstraction *)



(*    Var: 	string 			*)
(*   Apply: expr * expr 	*)
(*    Abs: 	string * expr 	*)

