# Write a function sort that takes a list of string that contains numbers and
# sorts them by the number in each string, e.g.
# sort(["STRING: 1", "STRING: 05", "STRING: 20", "STRING: 4", "STRING: 3"]) #=>
# ["STRING: 20", "STRING: 05", "STRING: 4", "STRING: 3", "STRING: 1"]

def sort(strings) do
  extract_number = fn (string) ->
    String.replace(string, ~r{[^\d]}, "")
    |> String.to_integer
  end

  Enum.sort(strings, fn(x, y) -> extract_number.(x) > extract_number.(y) end)
end
