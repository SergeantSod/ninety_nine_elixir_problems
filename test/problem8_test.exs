defmodule Problem8.Test do
  use ExUnit.Case

  import Problem8

  test "returns lists without duplicates unchanged" do
    assert [] == dedup []
    assert [:one] == dedup [:one]
    assert [:one, :two, :three] == dedup [:one, :two, :three]
  end

  test "leaves non-consecutive duplicates alone" do
    some = [:one, :two, :one, :two, :three]
    assert some == dedup some
  end

  test "removes consecutive duplicates" do
    assert [:one] == dedup [:one, :one]
    assert [:one, :two] == dedup [:one, :one, :two, :two]
    assert [:one, :and, :two] == dedup [:one, :one, :and, :two, :two]
  end
end
