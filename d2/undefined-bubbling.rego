package undefined_bubbling

# you're bad if you have a tail that is hairless, or if you have no tail
is_bad_thing(thing) {
  thing.tail
  not thing.tail.hairy
}

test_is_bad_thing {
  is_bad_thing({"beak": {"long": true}})
}

r1 {
  is_bad_thing({"beak": {"long": true}})
}
