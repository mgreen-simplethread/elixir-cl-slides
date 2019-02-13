current_process = self()

send(current_process, {:hello, "world"})

receive do
  {:hello, message} -> "We got a message: #{message}"
  {:error, _message} -> "This won't match"
end
# "We got a message: world"

worker = spawn fn ->
  send(current_process, {:hello, self()})
end

receive do
  {:hello, pid} -> "Got hello from #{IO.inspect(pid)}"
end
# => "Got hello from #PID<0.153.0>"

Process.alive?(worker)
# => false
