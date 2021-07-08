defmodule Prime do
  def prime?(number) when number in [2,3,5,7], do: true
  def prime?(number) when rem(number,2)==0 or rem(number,3)==0 or rem(number,5)==0 or rem(number,7)==0, do: false
  def prime?(n,n), do: false
  def prime?(start,number) do
    # Iterate over Odd numbers only.
    odd_numbers_in_range(start..number-1)
      # |> IO.inspect
      |> Enum.any?(fn odd_number -> rem(number,odd_number) == 0 end)
      |> Kernel.not
  end
  def prime?(number),   do: prime?(3,number)

  def odd?(number),     do: rem(number,2)!=0
  def next_odd(number), do: number + ( odd?(number) && 2 || 1)
  def odd_numbers_in_range(range), do: Enum.filter(range,&(odd?(&1)))

  def next_prime(number) do
    odd=next_odd(number)
    if prime?(number,odd), do: odd, else: next_prime(next_odd(odd))
  end
end
Prime.odd_numbers_in_range(
  Enum.to_list(1..500)
) |> Enum.map( &( if Prime.prime?(&1), do: IO.inspect(&1) ))

IO.gets("Enter a number : ")
  |> String.trim
  |> String.to_integer
  |> Prime.next_prime
  |> IO.inspect
