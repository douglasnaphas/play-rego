# access everything in this directory with:
# opa eval -d subd -f pretty 'data' | jq '.'

# see the trace even if the rule passes with:
# echo '{"i1": "eye one", "i2": "this is i2"}' | opa eval -d subd -f pretty --stdin-input --explain notes 'data'

package subd

r2 = v2 {
  trace(sprintf("i1: %v", [input.i1]))
  v2 := input.i2
}

r3 {
  true
}
