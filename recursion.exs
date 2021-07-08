defmodule Recursion do
  def factorial(n) when n in [0,1], do: n
  def factorial(n), do: n*factorial(n-1)

  def sum_counting(0), do: 0
  def sum_counting(n), do: n+sum_counting(n-1)
end

# IO.gets("Enter a number : ")
#   |> String.trim
#   |> String.to_integer
#   |> Recursion.factorial
#   |> IO.inspect

IO.gets("Enter a number : ")
  |> String.trim
  |> String.to_integer
  |> Recursion.sum_counting
  |> IO.inspect
