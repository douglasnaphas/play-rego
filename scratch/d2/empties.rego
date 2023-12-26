package empties

r1 {
  s := {e | e := input.animals[_] ; e.species == "cow"}
  count(s) == 0
}
