# opa eval -f pretty -d split.rego 'data'
package splitting

s1 := "a,b,c,d"
a1 := split(s1, ",")

s2 := ",a,b,c,d"
a2 := split(s2, ",")
