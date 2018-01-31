(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016-2018 MINES ParisTech                                  *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

open Sexplib.Conv

module Globnames = Ser_globnames

type hint_db_name =
  [%import: Hints.hint_db_name]
  [@@deriving sexp]

type 'a hints_path_atom_gen =
  [%import: 'a Hints.hints_path_atom_gen]
  [@@deriving sexp]

type 'a hints_path_gen =
  [%import: 'a Hints.hints_path_gen]
  [@@deriving sexp]

type hints_path =
  [%import: Hints.hints_path]
  [@@deriving sexp]
