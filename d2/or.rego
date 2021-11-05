package alt

# run with
# opa eval -i beasts2.json -d or.rego 'data.alt';

bad_animals[animal] {
  some a
  input.animals[a].species == "bird"
  animal := input.animals[a]
} {
  some a
  input.animals[a].species == "horse"
  animal := input.animals[a]
}
  
  
