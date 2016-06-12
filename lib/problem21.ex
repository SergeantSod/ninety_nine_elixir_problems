defmodule Problem21 do

  def insert_at(some_list, element, index) do
    insert_at_acc some_list, element, index, []
  end

  defp insert_at_acc(some_list, element, 0, acc) do
    reverse_concat acc, [element | some_list ]
  end

  defp insert_at_acc([ fst | rest], element, n, acc) do
    insert_at_acc rest, element, n-1, [fst | acc]
  end

  defp reverse_concat([], tail), do: tail

  defp reverse_concat([fst | acc], tail), do: reverse_concat(acc, [fst | tail])

end
