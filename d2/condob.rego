# conditional object
package condob

a[b] = c {
  b := input.homes[_]
  c := b.id
}

houses[home] = master {
  home := input.homes[_]
  master := object.get(home, "owner", "the king")
}
