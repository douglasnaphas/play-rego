package obkeys

keys(ob) = s {
  s := {k | some k ; ob[k]}
}

keys1 := keys({"a": "b", "c": "d"})
keys1_is_set := is_set(keys1)
