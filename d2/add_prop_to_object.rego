package add_prop

o1 := {
  "k1": "v1",
  "k2": "v2"
}

r1 = o2 {
  o2 := object.union({"k3": "v3"}, o1)
}

a1 := [
  {"a1k1":"a1v1", "id": 333, "name": "hum"},
  {"a1k2":"a1v2", "class": "sub"}
]

a2 := [ e | t := a1[_] ; e := object.union(t, {"a2k1": "a2v1"})]
