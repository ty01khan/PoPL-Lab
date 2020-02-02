(* In this question we have to write the datatype of a tree *)


datatype 'a tree = nullTree 
		| Node of 'a tree * 'a * 'a tree;

(*  nullTree: 'a tree 
    Node: 'a tree * 'a * 'a tree -> 'a tree   *)


