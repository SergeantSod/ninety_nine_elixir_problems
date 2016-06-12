defmodule Problem21.Test do
  use ExUnit.Case

  import Problem21

  defp test_list do
    [:one, :two, :three, :four]
  end

  test "inserts into an empty list" do
    assert [:some] == insert_at [], :some, 0
  end

  test "inserts at the right index" do
    assert test_list == insert_at [:one, :two, :three  ], :four,  3
    assert test_list == insert_at [:one, :two, :four   ], :three, 2
    assert test_list == insert_at [:one, :three, :four ], :two,   1
    assert test_list == insert_at [:two, :three, :four ], :one,   0
  end

end
