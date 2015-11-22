defmodule Problem19 do

  import Problem17

  def rotate(some_list, rotation) do
    {head, tail} = split_at some_list, rotation
    tail ++ head
  end
end
