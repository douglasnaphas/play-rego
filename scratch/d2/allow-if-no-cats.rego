package d2

default allow = false

allow = true {
  count(cats) == 0
}

cats[animal.id] {
  animal := input.animals[_]
  animal.species == "cat"
}

