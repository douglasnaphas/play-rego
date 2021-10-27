package multi
# fails with "complete rules must not produce multiple outputs"

r1 = 4
r1 = 4

# r1 will have the value 4, because it does an OR, looking for truthy rule results
r1 {
  3 > 4
}
