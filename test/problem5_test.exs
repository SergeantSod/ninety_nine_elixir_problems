defmodule Problem5.Test do
  use ExUnit.Case
  import Problem5

  test "reversing the empty list returns the empty list" do
    assert [] == reverse []
  end

  test "reversing a one-element list returns the same list" do
    assert [:one] == reverse [:one]
  end

  test "reversing a list returns a list with the element in reverses order" do
    assert [:one, :two] == reverse [:two, :one]
    assert [:one, :two, :three] == reverse [:three, :two, :one]
  end

end
