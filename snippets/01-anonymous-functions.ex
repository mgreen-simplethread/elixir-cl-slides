add = fn a, b -> a + b end
add_with_capture = &(&1 + &2)

add.(1, 5)
# => 6
add_with_capture.(1, 5)
# => 6

add = fn
  a, b when is_integer(a) and is_integer(b) -> a + b
  a, b when is_binary(a) and is_binary(b) -> a <> b
end

add.(1, 2)
# => 3

add.("hello", "world")
# => "helloworld"
