a_string = "Hey this is a long string"

# String character by character
a_string
  |> String.codepoints
  |> IO.inspect

# Filter spaces.
a_string
  |> String.codepoints
  |> Enum.filter(&(&1!=" "))
  |> IO.inspect

# Filter spaces and join them back as string
a_string
  |> String.codepoints
  |> Enum.filter(&(&1!=" "))
  |> Enum.join
  |> IO.inspect

# A string to camel notation
a_string
  |> String.split(" ")
  |> Enum.map(&(
      (String.at(&1,0) |> String.upcase())
      <>
      String.slice(&1,1..-1)
    ))
  |> Enum.join
  |> IO.inspect

# Alternative of upper function with pre-built functions
a_string
  |> String.split(" ")
  |> Enum.map(&(String.capitalize(&1)))
  # |> Enum.map(&(if String.length(&1)==1, do: &1, else: String.capitalize(&1) ))
  |> Enum.join
  |> IO.inspect



a_string
  |> String.to_charlist
  |> Enum.map(&IO.inspect\1)
