defmodule Problem4.Test do
  use ExUnit.Case

  test "returns 0 for the empty list" do
    assert 0 == Problem4.count []
  end

  test "return the length of an arbitrary list" do
    assert 1 == Problem4.count [:one]
    assert 3 == Problem4.count [:one, :two, :three]
    assert 4 == Problem4.count [:one, :two, :three, :four]
  end

end
