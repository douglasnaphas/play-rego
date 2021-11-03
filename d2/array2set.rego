package array2set

a := [ "thing1", "thing2", "t3" ]
s := { e | e := a[_] }
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
