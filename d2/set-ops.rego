package setops

r1 {
 {1, 2, 3} == {3, 1, 1, 2, 2, 3}
}

r2 {
 {1, 2, 3} == {3, 1, 1, 2, 2, 3, 4}
}

s1 := {1, 2, 3, 4, 5}
s2 := {2, 5}
s3 := s1 - s2
