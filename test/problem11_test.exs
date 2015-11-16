defmodule Problem11.Test do
  use ExUnit.Case

  import Problem11

  test "adjacent duplicate elements are represented as runs" do
    assert [{2, :a}, :b, {3, :c}] == rle [:a, :a, :b, :c, :c, :c]
  end

end
