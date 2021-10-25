# run with cat q-with-0.rego | opa eval -d allow-if-no-cats.rego --stdin
data.d2.allow with input as {"animals":[{"id":9,"species":"snake"}]}
