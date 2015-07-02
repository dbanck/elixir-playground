# Write an extract_bytes function that takes a binary and a non-negative integer
# and extracts the number of bytes specified by the integer, e.g:
# extract_bytes(<<102, 111, 111, 32, 98, 97, 114, 0, 0, 0, 1>>, 4) #=> "foo "

def extract_bytes(binary, n) do
  s = String.split(binary, "", trim: true)
  Enum.join(Enum.drop(s, n - String.length(binary)))
end
