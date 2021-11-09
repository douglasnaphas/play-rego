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

r[x] {
  i := input.homes[_]
  y := i.owner
  x := i.id
} 

is_dog_or_cat(a) {
  a.species == "dog"
} {
  a.species == "cat"
}

dogs_and_cats[animal] {
  animal := input.animals[_]
  is_dog_or_cat(animal)
}

