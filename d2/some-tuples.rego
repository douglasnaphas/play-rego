package topo

tuples[[i, j]] {
  some i, j
  sites[i].region == "west"
  server := sites[i].servers[j]
  contains(server.name, "db")
}

i := 1
