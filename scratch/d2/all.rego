package useall

# This:
# https://www.fugue.co/blog/5-tips-for-using-the-rego-language-for-open-policy-agent-opa
# references a function named all(), but I cannot find any docs on it.

r1 {
  all([1,2])
}
