my_string = "Hello"
is_binary(my_string)
# => true

my_string <> <<0>>
# => <<72, 101, 108, 108, 111, 0>>

my_string <> " world"
# => "Hello world"
my_string
# => "Hello"

"#{my_string} world"
# => "Hello world"

an_atom = :an_atom

my_list = [1, 2, 3, "whatever", <<255>>]
Enum.count(my_list) # O(n) complexity
# => 5

my_list ++ [4, 5, 6]
# => [1, 2, 3, "whatever", <<255>>, 4, 5, 6]

char_list = 'Es ist nich ein string'
List.first(char_list)
# => 69

my_tuple = {:ok, "some response"}

keyword_list = [this: "that", them: "us"]
# => [{:this, "that"}, {:them, "us"}]

my_map = %{raisin: "heck", "string_key" => [2, 3, 4]}
my_map["string_key"]
# => [2, 3, 4]
my_map.raisin
# => "heck"
