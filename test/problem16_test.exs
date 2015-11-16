defmodule Problem16.Test do
  use ExUnit.Case

  import Problem16

  test "leaves the empty list alone" do
    assert [] == replicate [], 1
    assert [] == replicate [], 2
    assert [] == replicate [], 3
  end

  test "duplicates all elements for other lists" do
    assert [:one] == replicate [:one], 1
    assert [:one, :one] == replicate [:one], 2
    assert [:one, :one, :one] == replicate [:one], 3
    assert [1, 1, :foo, :foo, 2, 2, :bar, :bar] == replicate [1, :foo, 2, :bar], 2
    assert [1, 1, 1, :foo, :foo, :foo, 2, 2, 2, :bar, :bar, :bar] == replicate [1, :foo, 2, :bar], 3
  end

end
