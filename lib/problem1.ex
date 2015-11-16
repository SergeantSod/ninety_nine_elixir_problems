defmodule Problem1 do
  def last([]), do: nil
  def last([x]), do: x
  def last([_ | tail]), do: last(tail)
end
