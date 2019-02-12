defmodule Response do
  defstruct status: nil, body: nil, headers: nil
end

resp = %Response{status: 200, body: "It worked", headers: %{whatever: "value"}}

case resp do
  %Response{status: 500} -> "Failure!"
  %Response{status: 200, body: body} -> body
  _ -> "Something unexpected"
end
# => "It worked"
