defmodule Math do
  @my_constant 3.14

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
