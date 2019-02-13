defmodule Math do
  @moduledoc """
  This is a module containing blah blah blah
  """

  @my_constant 3.14

  @doc """
  Determine if a number is zero or not

  ## Examples:

    iex> Math.zero?(0)
    true
  """
  def zero?(0) do
    true
  end

  def zero?(num) when is_integer(num) do
    false
  end
end

Math.zero?(1)
# => false

Math.zero?(0)
# => true

defmodule Say do
  def something(thing \\ "hello") do
    IO.puts(format(thing))
  end

  defp format(str) do
    String.downcase(str)
  end
end
