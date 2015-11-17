defmodule Problem12 do

  def decode(rle_list) do
    rle_list
      |> decode_into([])
      |> Enum.reverse
  end

  defp decode_into([], decoded), do: decoded

  defp decode_into([{count, element} | tail], decoded) when count >= 2 do
    decode_into tail, unpack_run_into(element, count, decoded)
  end

  defp decode_into([element | tail], decoded) do
    decode_into tail, [element | decoded]
  end

  defp unpack_run_into(_, 0, result), do: result

  defp unpack_run_into(e, count, result) do
    unpack_run_into(e, count - 1, [e | result])
  end
end
