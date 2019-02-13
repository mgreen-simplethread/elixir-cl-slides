my_list = [1, 2, 3]
my_range = 1..100

Enum.map my_list, fn num -> num * 2 end
# => [2, 4, 6]
Enum.map my_list, &(&1 * 2)
# => [2, 4, 6]

Enum.reduce 1..5, fn sum, num -> sum + num end
# => 15

# Pipelines FTW:
odd? = fn num -> rem(num, 2) != 0 end
total_sum =
  1..100_000
  |> Enum.map(&(&1 * 3))
  |> Enum.filter(odd?)
  |> Enum.sum()

# Without pipes:
total_sum = Enum.sum(Enum.filter(Enum.map(1..100_000, &(&1 * 3)), odd?))

# Lazily evaluated:
lazy_sum =
  1..100_000
  |> Stream.map(&(&1 * 3))
  |> Stream.filter(odd?)
  |> Enum.sum
