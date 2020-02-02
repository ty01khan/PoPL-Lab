(* Datatype of Tree *)
(* Node: 'a tree * 'a * 'a tree -> 'a tree*)
datatype 'a tree 	= nullTree 
				| Node of 'a tree * 'a * 'a tree;

(* Function for the rotation of tree *)
fun Rotation (Node (Node (lc, R, rc), Rt, Rc)) = Node (lc, R, Node(rc, Rt, Rc))
			| Rotation tree                    = tree;


(* Example *)

val Tree = Node(Node (Node (nullTree, 4, nullTree) , 2, Node (nullTree, 5, nullTree)), 1, Node (nullTree, 3, nullTree));

(* 						             '(1)'
						            '     '
Above is this input tree       '(2)'	   '(3)
					          '	    '				
				          (4)'       '(5)           	*)

Rotation Tree;


(* 						             		'(2)'
						            		'     '
		Output should be this:    		(4)'	   '(1)
   						      					   '   '				
				                       		   (5)'     '(3)      *)
