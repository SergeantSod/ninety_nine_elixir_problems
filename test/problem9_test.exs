defmodule Problem9.Test do
  use ExUnit.Case
  import Problem9

  test "packs non-repeating elements into separate lists" do
    assert [] == pack []
    assert [[:one]] == pack [:one]
    assert [[:one], [:two]] == pack [:one, :two]
    assert [[:one], [:two], [:three]] == pack [:one, :two, :three]
  end

  test "packs repeating elements into the same list" do
    assert [[:a, :a, :a], [:b, :b], [:c], [:d, :d, :d]] ==
      pack [:a, :a, :a, :b, :b, :c, :d, :d, :d]
  end
end
