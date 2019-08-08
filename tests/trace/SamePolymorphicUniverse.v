(* Credit: pmpedrot *)
(* The Variables line defines the polymorphic universes i and j twice *)

Unset Strict Universe Declaration.
Set Universe Polymorphism.

Inductive foo@{l} : Type@{l} := bar : foo .
Section MakeEq.
  Variables (a : foo@{i}) (b : foo@{j}).

  Let t := ltac:(let ty := type of b in exact ty).
  Definition make_eq (x:=b) := a : t.
End MakeEq.

Check make_eq@{Set Set}.
