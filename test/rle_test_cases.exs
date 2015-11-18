defmodule RleTestCases do
  defmacro __using__(subject: subject) do
    quote do
      use ExUnit.Case
      import unquote(subject)
      unquote(__MODULE__).define_test_cases
    end
  end

  defmacro define_test_cases() do
    quote do

      defp assert_preserves(some_list) do
        import Problem12

        decoded =
          some_list
            |> rle
            |> decode
        assert some_list == decoded

      end

      test "leaves the empty list alone" do
        assert [] == rle []
      end

      test "leaves lists without repetitions alone" do
        assert [:one, :two, :three] == rle [:one, :two, :three]
      end

      test "adjacent duplicate elements are represented as runs" do
        assert [{2, :a}, :b, {3, :c}] == rle [:a, :a, :b, :c, :c, :c]
      end

      test "restores the empty list" do
        assert_preserves []
      end

      test "restores lists without repetitions" do
        assert_preserves [:one, :two, :three]
      end

      test "restores lists with repeated numbers" do
        assert_preserves [1, 1, 1, 3, 6, 3, 3, 6, 2, 2]
      end

      test "restores lists with problematic tuples" do
        assert_preserves [{1, :blah}]
        assert_preserves [{2, :blah}, {2, :blah}]
        assert_preserves [{3, :blah}, {3, :blah}, {1, :something}]
      end

      test "works for tuples that look like encoded runs" do
        # AFAICS, the exercise is flawed,
        # since the encoding is ambiguous for the single element case.
        # This make lists like the following fail:
        # assert_preserves [{2, :foo}, {3, :blah}]
      end

    end
  end

end
