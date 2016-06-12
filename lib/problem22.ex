defmodule Problem22 do
  def range(begining, ending) do
    range_into(begining, ending, [])
  end

  defp range_into(begining, ending, acc) when begining > ending, do: acc

  defp range_into(begining, ending, acc) do
    range_into begining, ending - 1, [ending | acc]
  end
end
