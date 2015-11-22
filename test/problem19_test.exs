defmodule Problem19.Test do
  use ExUnit.Case

  import Problem19

  test "leaves the empty list alone" do
    assert [] == rotate [], 0
    assert [] == rotate [], 1
    assert [] == rotate [], 2
  end

  test "leaves a singleton list alone" do
    assert [:one] == rotate [:one], 1
    assert [:one] == rotate [:one], 2
    assert [:one] == rotate [:one], 3
  end

  test "leaves a list alone when rotating by zero" do
    assert [:one, :two] == rotate [:one, :two], 0
    assert [:one, :two, :three] == rotate [:one, :two, :three], 0
  end

  test "returns the original list when rotating by its length" do
    assert [:one, :two] == rotate [:one, :two], 2
    assert [:one, :two, :three] == rotate [:one, :two, :three], 3
  end

  test "rotates a list by a given number of places" do
    assert [:two, :three, :one] == rotate [:one, :two, :three], 1
    assert [:three, :one, :two] == rotate [:one, :two, :three], 2
  end

end
