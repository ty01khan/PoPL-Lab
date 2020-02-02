(* Datatype of Tree *)
(* Node: 'a tree * 'a * 'a tree -> 'a tree*)
datatype 'a tree 	= nullTree 
				| Node of 'a tree * 'a * 'a tree;

(*      recTree: ('b)						(* nullTree *)
		 	  -> ('b * 'a * 'b -> 'b) 	    (* Node *)
		 	  -> ('a tree -> 'b)								*)


fun recTree b0  f  nullTree 		  = b0
	| recTree b0  f (Node(lc, R, rc)) = f (recTree b0 f lc, R, recTree b0 f rc);
