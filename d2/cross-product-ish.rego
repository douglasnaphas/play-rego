package crossproduct

# say that every animal likes every home with an owner
opinions[pair] = opinion {
  animal := input.animals[b]
  home := input.homes[_]
  owner := home.owner
  pair := sprintf("%d - %d", [animal.id, home.id])
  opinion := sprintf("%s likes %s", [animal.name, home.address])
}

a = {"id":2000, "species": "horse", "name": "thom"}
b := {"id": 344, "species": "dog", "name": "vyall"}
