defmodule Problem22.Test do
  use ExUnit.Case

  import Problem22

  test "generates the empty range" do
    assert [] == range 1, 0
  end

  test "generates the singleton range" do
    assert [1] == range 1, 1
  end

  test "generates a range with all the integers" do
    assert [1, 2, 3, 4, 5] == range 1, 5
  end

end
