defmodule Problem3 do
  def kth(_, []), do: nil
  def kth(0, [head | _]), do: head
  def kth(k, [_ | tail]), do: kth(k-1, tail)
end
