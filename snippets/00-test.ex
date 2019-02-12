defmodule Foo do
  def bar("prefix:" <> my_var) do
    "Hello #{my_var}"
  end
end

Foo.bar("prefix:hello")
# => "hello"
