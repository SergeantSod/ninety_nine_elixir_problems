defmodule Problem26.Test do
  use ExUnit.Case

  import Problem26
  import Enum

  defp example_list do
    [ :one, :two, :three, :four]
  end

  defp same_contents?(a, b) do
    Enum.sort(a) == Enum.sort(b)
  end

  test "selecting no elements" do
    assert same_contents? [[]], combinations(0, [])
  end

  test "selecting a single element" do
    single_elements = map example_list, fn (x) -> [x] end
    assert same_contents?(single_elements, combinations(1, example_list))
  end

  test "selecting some elements" do
    expected = [
      [:one, :two, :three],
      [:one, :two, :four],
      [:one, :three, :four],
      [:two, :three, :four],
    ]
    assert same_contents? combinations(3, example_list), expected
  end

  test "selecting all elements" do
    assert same_contents? [example_list], combinations(4, example_list)
  end
end
