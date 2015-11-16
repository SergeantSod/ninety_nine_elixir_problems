defmodule Problem7.Test do
  use ExUnit.Case
  import Problem7

  test "flattening empty lists" do
    assert [] == flatten []
    assert [] == flatten [[]]
    assert [] == flatten [[[]]]
    assert [] == flatten [[],[]]
    assert [] == flatten [[],[],[]]
  end

  test "flattening singleton lists" do
    assert [:one] == flatten [:one]
    assert [:one] == flatten [[:one]]
    assert [:one] == flatten [[[:one]]]
  end

  test "flattening singleton lists with interesting interleavings" do
    assert [:one] == flatten [[],[],[:one]]
    assert [:one] == flatten [[],[:one],[]]
    assert [:one] == flatten [[:one],[],[]]
  end

  test "flattening arbitrary lists" do
    flat = [:one, :two, :three, :four]
    assert flat == flatten [flat]
    assert flat == flatten [[flat]]
    assert flat == flatten [[],flat,[[]]]
    assert flat == flatten [[:one],[[:two, :three]],:four]
    assert flat == flatten [:one, :two, [:three, [:four]]]
  end
end
