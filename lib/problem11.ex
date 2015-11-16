defmodule Problem11 do
  def rle(elements) do
    elements
      |> Problem10.rle
      |> Enum.map(&inline_singleton/1)
  end

  defp inline_singleton({1, x}), do: x
  defp inline_singleton(other), do: other
end
