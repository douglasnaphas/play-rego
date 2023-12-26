package falset

f1(x) = s {
  s := {e |
    x.p1 == "v1"
    e := all([
      x.p2 == "v2",
      x.p3 == "v3"
    ])
  }
#  count(s) > 0
}

r1 := f1({"p1": "v1", "p2": "v2", "p3": "v3"})
r2 := f1({"p1": "v1", "p2": "v2", "p3": "wrong"})
r3 := f1({"p2": "v2", "p3": "v3"})
r4 := f1({"p1": "v1", "p2": "v2"})

