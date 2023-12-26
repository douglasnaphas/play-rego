package tests_with_assigns

t := true

test_r1 { # passes, foo value not accessible from queries
  foo := t == true
}

test_r2 { # passes
  foo := t == false
}

test_r3 { # fails
  t == false
}

foo := t == false
bar := t == true
baz := false
