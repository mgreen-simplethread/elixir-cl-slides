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

    iex> Math.zero(1)
    false
  """
  @spec zero?(integer) :: boolean()
  def zero?(0) do
    true
  end

  def zero?(num) when is_integer(num) do
    false
  end

  @spec pi() :: number()
  def pi do
    @my_constant
  end
end
