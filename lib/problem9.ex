defmodule Problem9 do

  def pack(x) do
    x |> pack_into([])
      |> Enum.reverse
  end

  defp pack_into([], packed), do: packed

  defp pack_into([h | r], [[h | hs] | other]) do
    pack_into r, [ [h | [h | hs] ] | other ]
  end

  defp pack_into([h | r], packed), do: pack_into(r, [[h] | packed])

end
