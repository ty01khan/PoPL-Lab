val x = ref 0   (* create a reference cell with initial value 0 *)
val y = x := 42 (* store 42 inside the reference cell in the variable x *)
val vx = !x     (* get the value out of the reference cell *)

signature COUNTER = sig
	val set  : int -> unit
	val get  : unit -> int
    val incr : unit -> unit
end


structure Counter: COUNTER = struct   
    val x = ref 0;
    fun set y   =  x := y;
    fun get ()  = !x;
    fun incr () = x := (!x+1);
end

open Counter;
Counter.incr;

structure C = Counter;
structure D = Counter;

C.get ();		(* val it = 0 : int *)
C.set 42;		(* setting value 42 to x*)
C.get ();		(* val it = 42 : int *)
C.incr ();		(* increment the value x to x+1 *)
C.get ();		(* val it = 43 : int *)
D.get ();		(* val it = 43 : int *)
