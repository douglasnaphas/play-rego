package some_in_comps

ob := {"a": "b", "c": "d"}
k := "c"
keys1 := {k | ob[k]}
keys2 := {k | some k; ob[k]}
