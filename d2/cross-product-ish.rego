package crossproduct

# say that every animal likes every home
opinions[pair] = opinion {
  animal := input.animals[_]
  home := input.homes[_]
  pair := sprintf("%d - %d", [animal.id, home.id])
  opinion := sprintf("%s likes %s", [animal.name, home.address])
}
