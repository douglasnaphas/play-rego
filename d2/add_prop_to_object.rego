package add_prop

o1 := {
  "k1": "v1",
  "k2": "v2"
}

r1 = o2 {
  o2 := object.union({"k3": "v3"}, o1)
}

