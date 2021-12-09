package fnooop

# function order of operations

f1() = x {
  y := "hi"
  x := y
  # move y below x, and it will fail with:
  # rego_compile_error: var y referenced above
}

r1 = r {
  r := f1
}
