# Write a function num_to_list that takes a number and returns a string from 1
# up to the number joined with commas, e.g:
# num_to_list(10) #=> "1,2,3,4,5,6,7,8,9,10"

defmodule TestModule do
  def generate_list(n) do
    generate_list(n - 1, to_string(n))
  end

  def generate_list(1, result) do
    "1," <> result
  end

  def generate_list(n, result) do
    generate_list(n - 1, to_string(n) <> "," <> result)
  end
end

def num_to_list(n) do
  TestModule.generate_list(n)
end
