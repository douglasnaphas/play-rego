package beasts

explicitly_allowed_animals[animal] {
  some animal
  all_animals[animal]
  # trace(sprintf("animal: %v", [animal]))
  count([1]) == 1
  count({2}) == 1
  count({2} & {2, 3, 4}) == 1
  two := 2
  count({two} & {2, 4, 5}) == 1
  count({animal.id} & {344, 1144}) == 1
  true
}

all_animals[animal] {
  animal := input.animals[_]
  true
}
