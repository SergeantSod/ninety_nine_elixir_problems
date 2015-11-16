defmodule Problem16 do
  def drop_nth(list, n) do
    list
      |> drop_nth_into(1, n, [])
      |> Enum.reverse
  end

  defp drop_nth_into([], _, _, dropped), do: dropped

  defp drop_nth_into([ h | tail], count, count, dropped) do
    drop_nth_into tail, 1, count, dropped
  end

  defp drop_nth_into([ h | tail], index, count, dropped) do
    drop_nth_into tail, index + 1, count, [ h | dropped]
  end

end
