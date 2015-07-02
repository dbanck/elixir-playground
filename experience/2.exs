# Write a function num_to_list that takes a number and returns a string from 1
# up to the number joined with commas, e.g:
# num_to_list(10) #=> "1,2,3,4,5,6,7,8,9,10"

def num_to_list(n) do
  Enum.join(1..n, ",")
end
