defmodule Problem3.Test do
  use ExUnit.Case

  test "return nil if the index is out of range" do
    assert nil == Problem3.kth 3, []
  end

  test "returns the first element if zero index is given" do
    assert :first == Problem3.kth 0, [:first]
    assert :first == Problem3.kth 0, [:first, :second]
  end

  test "returns the kth element for any list" do
    assert :second == Problem3.kth 1, [:first, :second, :third, :fourth]
    assert :third  == Problem3.kth 2,  [:first, :second, :third, :fourth]
    assert :fourth == Problem3.kth 3, [:first, :second, :third, :fourth]
  end
end
