# conditional object
package condob

a[b] = c {
  b := input.homes[_]
  c := b.id
}

houses[home] = master {
  home := input.homes[_]
  x := object.get(home, "owner", null)
  master := {"r": "s", "y": x}
}

z := { "a": "b"}
