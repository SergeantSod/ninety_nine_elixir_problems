defmodule Problem2.Test do
  use ExUnit.Case

  test "returns nil for the empty list" do
    assert nil == Problem2.last_but_one []
  end

  test "returns nil for a singleton list" do
    assert nil == Problem2.last_but_one [:one]
  end

  test "returns first element of a two-element list" do
    assert :two == Problem2.last_but_one [:two, :one]
  end

  test "returns last but one element of any list" do
    assert :middle == Problem2.last_but_one [:first, :middle, :last]
  end
end
