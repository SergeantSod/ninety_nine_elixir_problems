defmodule Problem14 do
  def duplicate(list) do
    list
      |> duplicate_into([])
      |> Enum.reverse
  end

  defp duplicate_into([], duplicated), do: duplicated

  defp duplicate_into([ head | tail ], duplicated) do
    duplicate_into tail, [ head , head | duplicated ]
  end
end
