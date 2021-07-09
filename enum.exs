# Enum.all?(
#   1..40,
#   # All value in list are positive
#   &(&1>0)
# )|> IO.inspect

# Enum.all?(
#   [true,true,true,false,true],
#   # All value in list are positive
#   &(&1)
# )|> IO.inspect


# Enum.any?(
#   1..40,
#   # All value in list are positive
#   &(&1==20)
# )|> IO.inspect

# Enum.any?(
#   [false,nil,not true, false,nil, !true],
#   # All value in list are positive
#   &(&1==20)
# )|> IO.inspect

# Enum.each(
#   1..3,
#   &IO.inspect/1)

# Enum.with_index([1,3,25,523,623,63,754,23,52,2])
#   |> Enum.map(&IO.inspect("Index : #{&2} and value #{&1}"))

# Enum.with_index([1,3,25,523,623,63,754,23,52,2])
# |> Enum.map( fn {value,index} -> IO.inspect("Index : #{index} and value #{value}") end)

# Enum.drop_every(
#   1..100,
#   2
# ) |> IO.inspect
# # Nested Enum Maps
# repeatitions = 2
# range = 1..6
# Enum.map(
#   range,
#   &Enum.map( 1..repeatitions, fn _ -> IO.inspect(&1) end )
# )

# #Sum of all the enumerable
# Enum.sum(1..3)
#   |> IO.inspect


dataDict = %{
  :key1 => "value1",
  :key2 => "value2",
  :key3 => "value3 is long",
}|> IO.inspect

Enum.map(
  dataDict,
  fn {key, value} ->
    "#{key} : #{value}" |> IO.inspect
  end
)
