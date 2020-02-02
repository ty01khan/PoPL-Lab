(* in this code we are writing a code to find given list is empty or not *)
(* type of function isEmpty is 'a list -> bool *)


fun isEmpty [] = true | isEmpty (_) = false;

isEmpty [1, 2, 3];  (* result will be false *)
isEmpty []; (* result will be true *)



(* [] means nil *)
