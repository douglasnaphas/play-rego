package default_in_functions

# can you use default in functions?
# no:
# https://www.openpolicyagent.org/docs/latest/policy-language/#default-keyword

r1 {
  x := "bad"
  f1(x)
}

r2 {
  x := "good"
  f1(x)
}

f1(x) = result {
  default result = false
  result = x == "good"
}
