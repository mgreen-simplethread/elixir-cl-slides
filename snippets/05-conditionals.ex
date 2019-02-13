defmodule Response do
  defstruct status: nil, body: nil, headers: nil

  def success do
    %Response{status: 200, body: "It worked", headers: %{}}
  end

  def failure(status \\ 500) do
    %Response{status: status, body: "oops", headers: %{}}
  end
end

resp = Response.success()

case resp do
  %Response{status: 500} -> "Failure!"
  %Response{status: 200, body: body} -> body
  _ -> "Something unexpected"
end
# => "It worked"

cond do
  2 + 2 == 5 ->
    "This will never match"
  false ->
    "Nor will this"
  resp.status == 200 ->
    "This is what will match"
end
# => "This is what will match"

if resp.status == 200 do
  "something"
end

unless resp.status == 500 do
  "something broke"
end
