defmodule Problem1.Test do
  use ExUnit.Case

  test "returns nil for the empty list" do
    assert nil == Problem1.last []
  end

  test "returns the single element of a singleton list" do
    assert :single_element == Problem1.last [:single_element]
  end

  test "returns last element of any list" do
    assert :last == Problem1.last [:first, :middle, :last]
  end
end
