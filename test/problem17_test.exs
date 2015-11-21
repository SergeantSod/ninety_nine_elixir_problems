defmodule Problem17.Test do
  use ExUnit.Case

  import Problem17

  defp regular_test_cases do
    [
      [ ],
      [ :one ],
      [ :one, :two ],
      [ :one, :two, :three ],
      [ :one, :two, :three, :four ],
    ]
  end

  defp test_all(lengths \\ (0..12), assertion) do
    for some_list <- regular_test_cases, target_length <- lengths do
      {head, rest} = split_at some_list, target_length
      assertion.(some_list, target_length, head, rest)
    end
  end

  test "splitting the empty list produces empty lists regardless of split index" do
    assert {[],[]} == split_at [], 0
    assert {[],[]} == split_at [], 1
    assert {[],[]} == split_at [], 12
  end

  test "splittin a list at index 0 returns empty list and the original list" do
    test_all [0], fn (some_list, _target_length, head, rest) ->
      assert rest == some_list
      assert head == []
    end
  end

  test "splitting beyond list end returns the original list and an empty list" do
    test_all [1200], fn (some_list, _target_length, head, rest) ->
      assert head == some_list
      assert rest == []
    end
  end

  test "splitting a list returns a fragments with the right length" do
    test_all fn (some_list, target_length, head, rest) ->
      assert length(head) == min(length(some_list), target_length)
      assert length(rest) == length(some_list) - length(head)
    end
  end

  test "splitting a list decomposes it" do
    test_all fn (some_list, _target_length, head, rest) ->
      assert head ++ rest == some_list
    end
  end

end
