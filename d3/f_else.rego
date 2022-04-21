package f_else

# opa eval -d f_else.rego -f pretty 'data'

f_else(x) = y {
  x == 1
  y := "duck"
} else = y {
  y := "cat"
}

r1 := f_else(1)
r2 := f_else(2)

f_else2(x) = y {
  x == 1
  y := x + 2
}

f_else2(x) = y {
  x == 4
  y := x + 3
}

r3 := f_else2(1)
r4 := f_else2(4)
