operation = quote do: [1, 2] ++ [3]
# => {:++, [context: Elixir, import: Kernel], [[1, 2], [3]]}

Macro.to_string(operation)
# => "[1, 2] ++ [3]"

func = :hello
Macro.to_string?(quote do: unquote(func)(:world))
# => "hello(:world)"


defmodule Unless do
  def fun_unless(clause, do: expression) do
    if(!clause, do: expression)
  end

  defmacro macro_unless(clause, do: expression) do
    quote do
      if(!unquote(clause), do: unquote(expression))
    end
  end
end

import Unless

fun_unless true, do: IO.puts("this shouldn't render")
# this shouldn't render
# => nil

macro_unless true, do: IO.puts("this shouldn't render")
# => nil
