# Write a find_missing_char function that takes a same case alphabetical char
# list and returns the missing char if there is one otherwise returns nil, e.g:
# find_missing_char('ZCGBMHFJYTODIUQARVEWPLNKX') #=> ?S
# find_missing_char('abcdefghijklmnopqrstuvwxyz') #=> nil

def find_missing_char(chars) do
  lower = Enum.to_list(?a..?z)
  upper = Enum.to_list(?A..?Z)
  [first|_] = Enum.sort(chars)

  missing = cond do
    first >= ?a -> lower -- chars
    true -> upper -- chars
  end

  case missing do
    [] -> nil
    [char] -> char
  end
end
