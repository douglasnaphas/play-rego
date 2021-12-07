# access everything in this directory with:
# opa eval -d subd -f pretty 'data' | jq '.'

package subd

r2 = v2 {
  v2 := "this is v2"
}

r3 {
  true
}
