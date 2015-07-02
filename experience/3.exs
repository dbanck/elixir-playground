# Write a fib function that takes a number and return a list of the first n of
# fibonacci numbers, e.g:
# fib(5) #=> [1, 1, 2, 3, 5]

defmodule Math do
  def fibonacci(n) do
    fibonacci(n, 1, [0])
  end

  defp fibonacci(0, _, result) do
    tl(result)
  end

  defp fibonacci(n, next, result) do
    fibonacci(n - 1, next + List.last(result), result ++ [next])
  end
end

def fib(n) do
  Math.fibonacci(n)
end
