defmodule Problem22 do
  def range(begining, ending) do
    Enum.reverse range_into(begining, ending, [])
  end

  defp range_into(begining, ending, acc) when begining > ending, do: acc

  defp range_into(begining, ending, acc) do
    range_into begining + 1, ending, [begining | acc]
  end
end
