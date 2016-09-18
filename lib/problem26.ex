defmodule Problem26 do
  import Enum

  def combinations(size, universe) do
    combination_sets(size, universe)
  end

  defp splits([]), do: []
  defp splits([x | rest]) do
    right_splits = map splits(rest), fn s -> [ x | s ] end
    [ rest | right_splits ]
  end

  defp combination_sets(target_size, universe) when target_size > length(universe), do: MapSet.new
  defp combination_sets(target_size, universe) when target_size == length(universe) do
    MapSet.new [universe]
  end

  defp combination_sets(n, universe) do
    combination_sets(n+1, universe)
      |> flat_map(&splits/1)
      |> into(MapSet.new)
  end

end
