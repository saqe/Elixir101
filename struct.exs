defmodule StudentStruct do
  defstruct name: "Student", age: 24
end

std = %StudentStruct{}
std
  |> IO.inspect(std)


# Read value
IO.inspect(std.age)

# Update value
std = %{std | name: "Marko Polo"}

# Struct with enforce key
defmodule Student do
  @enforce_keys [:student_id]
  defstruct [:student_id, :first_name, :last_name]
end

a_student = %Student{student_id: 12}

IO.inspect a_student
