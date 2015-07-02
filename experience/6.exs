# Write a function anagram? that checks if two given strings are anagrams, An
# anagram is a type of word play, the result of rearranging the letters of a
# word or phrase to produce a new word or phrase, using all the original letters
# exactly once
# anagram?("rose", "sore") #=> true

def anagram?(a, b) do
  letters_a = String.split(a, "", trim: true)
  letters_b = String.split(b, "", trim: true)

  Enum.sort(letters_a) == Enum.sort(letters_b)
end
