for n <- [1, 2, 3], do: n * n
# => [1, 4, 9]

even? = fn num -> rem(num, 2) == 0 end
for n <- 1..1_000, even?.(n), do: n
# => [2, 4, 6, 8, 10, ...]

items = [good: 1, good: 2, bad: 3, good: 4]
for {:good, n} <- items, do: n * n
# => [1, 4, 16]

groceries = ["Milk", "Eggs", "Butter"]
for item <- groceries do
  IO.puts("- #{item}")
end
# - Milk
# - Eggs
# - Butter
