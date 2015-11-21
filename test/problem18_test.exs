defmodule Problem18.Test do
  use ExUnit.Case

  import Problem18

  defp example_list do
    [:one, :two, :three, :four, :five, :six, :seven]
  end

  test "slicing out a singleton list" do
    assert [:one] == assert slice example_list, 1, 1
    assert [:three] == assert slice example_list, 3, 3
  end

  test "slicing out the whole list" do
    assert example_list == assert slice example_list, 1, length(example_list)
  end

  test "slicing out part of the list" do
    assert [:one, :two, :three] == assert slice example_list, 1, 3
    assert [:four, :five, :six] == assert slice example_list, 4, 6
  end
  
end
