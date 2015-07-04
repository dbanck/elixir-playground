# Write a function to_hex that takes an base 10 integer returns a string value
# of it in hexadecimal, e.g:
# to_hex(16) #=> "10"
# to_hex(1023) #=> "3FF"

def to_hex(integer) do
  integer
  |> Integer.to_char_list(16)
  |> to_string
end
