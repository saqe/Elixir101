Enum.all?(
  1..40,
  # All value in list are positive
  &(&1>0)
)|> IO.inspect

Enum.all?(
  [true,true,true,false,true],
  # All value in list are positive
  &(&1)
)|> IO.inspect


Enum.any?(
  1..40,
  # All value in list are positive
  &(&1==20)
)|> IO.inspect

Enum.any?(
  [false,nil,not true, false,nil, !true],
  # All value in list are positive
  &(&1==20)
)|> IO.inspect



last = IO.gets("")
  |> String.trim
  |> String.to_integer

1..last
  |> Enum.map(fn a -> IO.inspect("Hello") end)

# Nested Enum Maps
repeatitions = 2
range = 1..6
Enum.map(
  range,
  &Enum.map( 1..repeatitions, fn _ -> IO.inspect(&1) end )
)
