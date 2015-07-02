# Write a function palindrome? that checks if a given string is a palindrome. A
# palindrome is a word, phrase, number, or other sequence of characters which
# reads the same backward or forward, ignoring non-word characters (like spaces,
# comma, exclamation marks, etc.) e.g
# palindrome?("123,21") #=> true
# palindrome?("Madam, I’m Adam.") #=> true

defmodule Palindrome do

  def check(s) do
    original = String.downcase(Enum.join(Regex.scan(~r/[a-zA-Z0-9]+/, s)))
    revesed = String.reverse(original)
    original == revesed
  end

end

def palindrome?(s) do
  Palindrome.check(s)
end
