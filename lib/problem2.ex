defmodule Problem2 do
  def last_but_one([]), do: nil
  def last_but_one([_]), do: nil
  def last_but_one([h, _]), do: h
  def last_but_one([_ | tail]), do: last_but_one(tail)
end
