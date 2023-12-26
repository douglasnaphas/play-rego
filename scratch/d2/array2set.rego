package array2set

a := [ "thing1", "thing2", "t3" ]
b := [ "thing2", "t3", "t3", "t3", "thing1" ]
s := { e | e := a[_] }
a_eq_b := { e | e := a[_] } == { e | e := b[_] }
a_is_set := is_set(a)
a_is_array := is_array(a)
s_is_set := is_set(s)
s_is_array := is_array(s)
t3_in_s {
  s["t3"]
}
t4_in_s {
  s["t4"]
}
t4_not_in_s {
  not s["t4"]
}
s2 := {"xx"}
a2 := [e | e := s2[_]]
