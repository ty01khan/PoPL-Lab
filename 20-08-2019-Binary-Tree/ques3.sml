(* Datatype of Tree *)
datatype 'a tree 	= nullTree 
				| Node of 'a tree * 'a * 'a tree;


(* Type of map function is map: ('a -> 'b) -> 'a tree -> 'b tree  *)
fun map Tree (Node(lc, R, rc)) = Node( map Tree lc, Tree R, map Tree rc)
		   | map Tree nullTree = nullTree;

(* Example *)
fun plus x = x+1;
(*map plus (Node(Node (Node (nullTree, 4, nullTree) , 2, Node (nullTree, 5, nullTree)), 1, Node (nullTree, 3, nullTree));*)


