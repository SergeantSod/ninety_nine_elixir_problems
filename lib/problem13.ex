defmodule Problem13 do
  def rle(some_list) do
    some_list
      |> rle_into([])
      |> Enum.reverse
  end

  defp rle_into([], encoded), do: encoded

  defp rle_into([h | tail], [{count, h} | other]) do
    rle_into tail, [{count + 1, h} | other]
  end

  defp rle_into([h | tail], [ h | other]) do
    rle_into tail, [ {2, h} | other]
  end

  defp rle_into([h | tail], encoded) do
    rle_into tail, [ h | encoded]
  end
end
