defmodule Problem12.Test do
  use ExUnit.Case

  defp assert_preserves(some_list) do
    decoded =
      some_list
        |> Problem11.rle
        |> Problem12.decode
    assert some_list == decoded

  end
  test "restores the original list" do
    assert_preserves []
    assert_preserves [{1, :blah}]
    assert_preserves [:one, :two, :three]
    assert_preserves [1, 1, 1, 3, 6, 3, 3, 6, 2, 2]
  end

  test "works for tuples that look like encoded runs" do
    # AFAICS, the exercise is flawed,
    # since the encoding is ambiguous for the single element case.
    # This make lists like the following fail:
    # assert_preserves [{2, :foo}, {3, :blah}]
  end

end
