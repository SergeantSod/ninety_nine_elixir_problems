defmodule Problem6.Test do
  use ExUnit.Case

  import Problem6

  test "the empty list is a palindrome" do
    assert palindrome? []
  end

  test "a singleton list is a palindrome" do
    assert palindrome? [:one]
  end

  test "a two element list is a palindrome iff it has identical values" do
    assert palindrome? [:one, :one]
  end

  test "lists that read the same way backwards and forwards are palindromes" do
    assert palindrome? [:one, :two, :three, :two, :one]
    assert palindrome? [:one, :two, :three, :three, :two, :one]
  end

  test "other lists are not palindromes" do
    refute palindrome? [:one, :two, :three]
    refute palindrome? [:one, :two, :three, :two]
    refute palindrome? 'other stuff'
  end
end
