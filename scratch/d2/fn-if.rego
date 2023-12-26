package fnif

fnif(x) = ret {
  x == "hi"
  ret := "x is hi"
} {
  x == "low"
  ret := "x is low"
}
# The following would be invalid because:
# "functions must not produce multiple outputs for same inputs"
# {
#   ret := "x is neither hi nor low"
# }

rhi = result {
  result := fnif("hi")
}

rlow = result {
  result := fnif("low")
}
