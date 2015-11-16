defmodule Problem4 do
  def count(x), do: count(x, 0)

  defp count([], counted), do: counted
  defp count([_ | tail], counted), do: count(tail, counted + 1)
end
