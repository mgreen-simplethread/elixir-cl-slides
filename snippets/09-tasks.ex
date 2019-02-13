task = Task.async(fn ->
  Process.sleep(200)
  "Long running task result"
end)

IO.puts("This happens in the meantime")

response = "Synchronously derived"
IO.puts(response <> Task.await(task))
