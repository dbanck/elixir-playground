# Write a checksum function, that computes a parity byte checksum of a string,
# e.g:
# checksum("Elixir is fun.") #=> 95

use Bitwise

def checksum(s) do
  s
  |> String.codepoints
  |> Enum.reduce(0, fn (<< x >>, y) -> bxor(x, y) end)
end
