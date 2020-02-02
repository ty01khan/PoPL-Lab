(* Datatype of Tree *)
datatype 'a tree 	= nullTree 
				| Node of 'a tree * 'a * 'a tree;



(* In Inorder first traverse the Left Child, then visit Root and then traverse Right child *)
(* Type of Inorder: 'a tree -> 'alist *)
fun Inorder nullTree              = []
		| Inorder (Node(lc,R,rc)) = Inorder lc @ [R] @ Inorder rc;





(* In Preorder first visit Root, then traverse the Left Child and then traverse Right child *)
(* Type of Preorder: 'a tree -> 'alist *)
fun Preorder nullTree              = []
		| Preorder (Node(lc,R,rc)) = [R] @ Preorder lc @ Preorder rc;






(* In Postorder first traverse the Left Child, then traverse Right child and then visit Root *)
(* Type of Postorder: 'a tree -> 'alist *)
fun Postorder nullTree              = []
		| Postorder (Node(lc,R,rc)) = Postorder lc @ Postorder rc @ [R];



(* Examples *)

val Tree = Node(Node (Node (nullTree, 4, nullTree) , 2, Node (nullTree, 5, nullTree)), 1, Node (nullTree, 3, nullTree));

(* 						             '(1)'
						            '     '
Above is this input tree       '(2)'	   '(3)
					          '	    '				
				          (4)'       '(5)           *)


Inorder Tree;			(* Output should be val it = [4,2,5,1,3] : int list *)
Preorder Tree;			(* Output should be val it = [1,2,4,5,3] : int list *)
Postorder Tree;			(* Output should be val it = [4,5,2,3,1] : int list *)


