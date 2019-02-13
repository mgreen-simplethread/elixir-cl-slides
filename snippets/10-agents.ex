defmodule Counter do
  use Agent

  @doc "Starts the Counter agent"
  def start_link(initial_value \\ 0) do
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  @doc "Gets the current counter value"
  def value do
    Agent.get(__MODULE__, &(&1))
  end

  @doc "Increments the counter value"
  def increment do
    Agent.update(__MODULE__, &(&1 + 1))
  end
end

Counter.start_link(0)
Counter.value
# => 0

Counter.increment
Counter.value
# => 1
