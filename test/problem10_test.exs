defmodule Problem10.Test do
  use ExUnit.Case

  import Problem10

  test "empty lists are empty lists" do
    assert [] == rle []
  end

  test "elements with no adjacent duplicate become runs of length 1" do
    assert [{1, :a}, {1, :b}, {1, :c}] == rle [:a, :b, :c]
  end

  test "adjacent duplicate elements are represented as runs" do
    assert [{2, :a}, {1, :b}, {3, :c}] == rle [:a, :a, :b, :c, :c, :c]
  end

end
