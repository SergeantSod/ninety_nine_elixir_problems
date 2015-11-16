defmodule Problem5 do

  def reverse(x), do: reverse(x, [])

  defp reverse([], reversed), do: reversed

  defp reverse([head | tail], reversed) do
    reverse tail, [head | reversed]
  end

end
