# access everything in this directory with:
# opa eval -d subd -f pretty 'data' | jq '.'

package subd

r1 = v1 {
  v1 := "this is r1"
}
