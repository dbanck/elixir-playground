# Write a function convert that takes a string and an list of words and returns
# a new string with every word in the list that occurs in the original string
# capitalized
# convert("People from england are called english", ["england", "english"]) #=>
# "People from England are called English"

def convert(string, words) do
  Enum.reduce(words, string, fn(word, acc) ->
    String.replace(acc, word, String.capitalize(word))
  end)
end
