defmodule Problem17 do
  def split_at(some_list, target_length) do
    {head, rest} = split_into some_list, target_length, []
    {
      Enum.reverse(head),
      rest
    }
  end

  defp split_into([], _, split), do: {split, []}
  defp split_into(some_list, 0, split), do: {split, some_list}

  defp split_into([head | tail], count, split) do
    split_into tail, count - 1, [ head | split]
  end

end
