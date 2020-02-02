signature SORT = sig
	type t
	val Sort: t list -> t list
end

signature ORD_KEY = sig
	type Ord_Key
	val compare : Ord_Key * Ord_Key -> order
end

structure IntOrd : ORD_KEY = struct
	type Ord_Key       = int
	fun compare (x, y) = Int.compare(x, y)
end

functor QSort (O : ORD_KEY) : SORT = struct
	type t = O.Ord_Key
	fun CompB x y = if (O.compare(x, y) = GREATER) then true
				  else false
	
	fun CheA CompB (x, (Left, Right, pivot)) = if (CompB pivot x) then (x::Left, Right, pivot)
								        else (Left, x::Right, pivot)
								   
	fun partition (x::xs) = foldr (CheA CompB) ([], [], x) (xs @ [x])
	
	
	fun firstList (ls,_,_)     = ls
	fun secondList (_,ls,_)    = ls
	
	fun Sort []           = []
	  | Sort (x::[]) 	  = [x]
	  | Sort (x::xs)      = (Sort(firstList(partition (x::xs)))) @ (Sort(secondList(partition (x::xs))))
	
end

open IntOrd;
structure ANew = QSort(IntOrd);
open ANew;

ANew.Sort ([30,6,11,92,49,50,17,118,102]);
