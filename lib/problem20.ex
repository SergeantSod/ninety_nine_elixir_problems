defmodule Problem20 do
  def remove_at(some_list, index) do
    remove_at some_list, index, []
  end

  defp remove_at([_ | rest], 0, prefix) do
    result_for prefix, rest
  end

  defp remove_at([], _, prefix) do
    result_for prefix, []
  end

  defp remove_at([head | rest], index, prefix) do
    remove_at rest, index - 1, [head | prefix]
  end

  defp result_for([], tail), do: tail

  defp result_for([head | rest], tail) do
    result_for rest, [head | tail]
  end

end
