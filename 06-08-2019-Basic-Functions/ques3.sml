(* Nat is userdefined datatype *)
(* type of O is Nat and type of s is Nat -> Nat *)

datatype Nat = O | s of Nat;


fun plus O y = y | plus (s x) y  = s (plus x y);
(* plus function is of type Nat->Nat->Nat *)


fun mul O y = O | mul (s O) y = y | mul (s x) y = plus (mul x y) y;
(* function mul is of type Nat -> Nat -> Nat *)


fun pow y O = (s O) | pow y (s x) = mul (pow y x) y;
(* the function pow is of type Nat -> Nat -> Nat *)


fun toInt O = 0 | toInt (s x) = 1 + toInt(x);
(* the function toInt is of type Nat -> int *)
