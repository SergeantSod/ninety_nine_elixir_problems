defmodule Problem15 do
  def replicate(list, count) do
    list
      |> replicate_into([], count, count)
      |> Enum.reverse
  end

  defp replicate_into([], replicated, _, _), do: replicated

  defp replicate_into([_ | tail], replicated, 0, count) do
    replicate_into tail, replicated, count, count
  end

  defp replicate_into([h | _]=todo, replicated, current, count) when current > 0 do
    replicate_into todo, [ h | replicated], current - 1 , count
  end
end
