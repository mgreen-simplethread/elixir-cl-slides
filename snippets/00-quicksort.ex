defmodule QuickSort do
  def sort([]), do: []

  def sort([head | tail]) do
    {lesser, greater} = Enum.partition(tail, &(&1 < head))
    sort(lesser) ++ [head] ++ sort(greater)
  end
end
