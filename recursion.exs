defmodule Recursion do
  a = 3
  def factorial(n) when n in [0,1], do: n
  def factorial(n), do: n*factorial(n-1)

  def get_a(), do: selfa

  def sum_counting(0), do: 0
  def sum_counting(n), do: n+sum_counting(n-1)

  def fibonaccian_series(n) when n in [0,1], do: n
  def fibonaccian_series(n), do: fibonaccian_series(n-1) + fibonaccian_series(n-2)
end


Recursion.get_a
  |> IO.inspect(label: "Accessing variable")

number = 8
number
  |> Recursion.factorial
  |> IO.inspect(label: "#{number}!")

number = 8
  |> Recursion.sum_counting
  |> IO.inspect(label: "Sum of a list ")

# This can be solve easily using the bellow code.
number = 8
Enum.sum(1..number)
  |> IO.inspect(label: "Sum of a list from 1 to #{number} is ")

number = 8
  |> Recursion.fibonaccian_series
  |> IO.inspect(label: "Fibonaccian Series of #{number} is ")
