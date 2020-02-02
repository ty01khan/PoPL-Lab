(* Code for three-variate curry function *)

(* the function will take 3 argument of type 'a, 'b, 'c and returning a results of type 'd *)

(* domain is ('a*'b*'c->'d) and range is ('a->'b->'c->'d) for curry function *)

(* domain is ('a->'b->'c->'d) and range is ('a*'b*'c->'d) for uncurry function *)



(*     fun curry f = __________: 'a->'b->'c->'d     *)
(*     fun curry f x = __________: 'b->'c->'d      *)
(*     fun curry f x y = __________: 'c->'d       *)
(*     fun curry f x y z = __________: 'd        *)

fun curry f x y z = f(x, y, z);



(*     fun uncurry f = __________: 'a*'b*'c->'d           *)
(*     fun uncurry f(x, y, z) = __________: 'd; (x, y, z) is of type ('a*'b*'c)    *)

fun uncurry f(x, y, z) = f x y z;
