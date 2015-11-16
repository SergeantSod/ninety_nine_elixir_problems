defmodule Problem15.Test do
  use ExUnit.Case

  import Problem15

  test "leaves the empty list alone" do
    assert [] == duplicate []
  end

  test "duplicates all elements for other lists" do
    assert [:one, :one] == duplicate [:one]
    assert [1, 1, :foo, :foo, 2, 2, :bar, :bar] == duplicate [1, :foo, 2, :bar]
  end

end
