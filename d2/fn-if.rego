package fnif

fnif(x) = ret {
  x == "hi"
  ret := "x is hi"
} {
  x == "low"
  ret := "x is low"
}

rhi = result {
  result := fnif("hi")
}

rlow = result {
  result := fnif("low")
}
