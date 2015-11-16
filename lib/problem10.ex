defmodule Problem10 do

  def rle(elements) do
    elements
      |> Problem9.pack
      |> Enum.map(&encode/1)
  end

  defp encode(run) do
    { length(run), hd(run) }
  end

end
