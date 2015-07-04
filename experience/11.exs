# Given a list of strings, return a list of list of strings of anagrams, i.e.
# each element of the returned list is a list of words that are anagrams among
# them, e.g:
# input = ["stars", "mary", "rats", "tars", "army", "banana"]
# anagrams(input) #=> [["rats", "tars"], ["army", "mary"], ["stars"], ["banana"]]]

def anagrams(input) do
  input
  |> Enum.group_by(fn word ->
    word
    |> String.split("", trim: true)
    |> Enum.sort
    |> Enum.join
  end)
  |> Dict.values
end
