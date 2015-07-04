# Write a function join that takes a tuple(with elements that of type String,
# Integer, Float, Atom, CharList) and a separator and returns a string of the
# elements of the tuple joined by the separator, e.g:
# join({1,2,3}, " ") #=> "1 2 3"

def join(t, seperator) do
  t
  |> Tuple.to_list
  |> Enum.join(seperator)
end
