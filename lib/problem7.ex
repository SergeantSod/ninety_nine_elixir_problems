defmodule Problem7 do
  def flatten(x) do
    x |> flatten_into([])
      |> Enum.reverse
  end

  defp flatten_into([], flattened), do: flattened

  defp flatten_into([x | rest], flattened) when is_list(x) do
    flatten_into rest, flatten_into(x, flattened)
  end

  defp flatten_into([x | rest], flattened) do
    flatten_into rest, [x | flattened]
  end
end
