defmodule Problem16.Test do
  use ExUnit.Case

  import Enum
  import Problem16

  test "leaves the empty list alone" do
    assert [] == drop_nth [], 1
    assert [] == drop_nth [], 2
    assert [] == drop_nth [], 3
  end

  test "empties a list if n is 1" do
    assert [] == drop_nth [], 1
    assert [] == drop_nth [1, 2, 3], 1
  end

  test "leaves a list with fewer than n elements alone" do
    assert [1, 2, 3] == drop_nth [1, 2, 3], 4
    assert [1, 2, 3, 4] == drop_nth [1, 2, 3, 4], 5
  end

  test "drops every nth element" do
    assert [1, 3, 5, 7]       == drop_nth to_list(1..7), 2
    assert [1, 2, 4, 5, 7]    == drop_nth to_list(1..7), 3
    assert [1, 2, 3, 5, 6, 7] == drop_nth to_list(1..8), 4
  end

end
