defmodule Problem18 do
  def slice(some_list, first, last) do
    some_list
      |> slice_into(first, last, [])
      |> Enum.reverse
  end

  defp slice_into(some_list, first, last, slice) when first > last, do: slice

  defp slice_into([ head | tail], 1, last, slice) do
    slice_into tail, 1, last - 1, [ head | slice ]
  end

  defp slice_into([ _ | tail], first, last, slice) do
    slice_into tail, first - 1, last - 1, slice
  end

end
