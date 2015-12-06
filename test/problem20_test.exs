defmodule Problem20.Test do
  use ExUnit.Case

  import Problem20

  defp test_list do
    [:one, :two, :three, :four]
  end

  test "leaves the empty list alone" do
    assert [] == remove_at [], 0
    assert [] == remove_at [], 1
    assert [] == remove_at [], 2
  end

  test "leaves the list alone if the index is beyond the end" do
    assert test_list == remove_at test_list, 4
    assert test_list == remove_at test_list, 5
    assert test_list == remove_at test_list, 6
  end

  test "leaves the list alone if the index is beyond the beginning" do
    assert test_list == remove_at test_list, -1
    assert test_list == remove_at test_list, -2
    assert test_list == remove_at test_list, -3
  end

  test "removes the nth element" do
    assert [:one, :two, :three  ] == remove_at test_list, 3
    assert [:one, :two, :four   ] == remove_at test_list, 2
    assert [:one, :three, :four ] == remove_at test_list, 1
    assert [:two, :three, :four ] == remove_at test_list, 0
  end

end
