defmodule LoopList do
  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

  def loop([]), do: nil
end

LoopList.loop([1, 2, 3])
# 1
# 2
# 3
# => nil

{:ok, response} = {:ok, "Some HTML or something. Use your imagination."}
response
# => "Some HTML or something. Use your imagination."

defmodule User do
  defstruct name: nil, age: nil, role: "admin"

  def to_s(%User{} = user) do
    "#{user.name} (#{user.age})"
  end

  def is_admin?(%User{role: role}) do
    role == "admin"
  end
end

user = %User{name: "Mike", age: 33, role: "not an admin"}

User.to_s(user)
# => "Mike (33)"

User.to_s(%{name: "Mike", age: 33, role: "admin"})
# ** (FunctionClauseError) no function clause matching in User.to_s/1

User.is_admin?(user)
# => false

defmodule Video do
  def id_from_slug("video:" <> id) do
    String.to_integer(id)
  end
end

Video.id_from_slug("video:555")
# => 555
