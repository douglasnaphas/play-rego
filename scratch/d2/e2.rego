package e2

r1 {
  1 == 1
}

r2 = 4 {
  "a" == "a"
}

r3 = { "x" : "y" } {
  { "a" : "b" } == { "a" : "b" }
}

r4[j.id] {
  j := input.a1[_]
  j.name == "wil"
}

r5 = input.k1 {
  input.k1 == "v1"
}
