defmodule Problem8 do

  def dedup(x) do
    x |> dedup_into([])
      |> Enum.reverse
  end

  defp dedup_into([], deduped), do: deduped

  defp dedup_into([head | tail], [head | _] = deduped) do
    dedup_into tail, deduped
  end

  defp dedup_into([head | tail], deduped) do
    dedup_into tail, [head | deduped]
  end

end
