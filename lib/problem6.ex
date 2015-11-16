defmodule Problem6 do
  def palindrome?(x), do: palindrome_pair(x, [])

  defp palindrome_pair(f, b) when length(f) == length(b), do: f == b

  defp palindrome_pair([_ | f], b) when length(f) == length(b), do: f == b

  defp palindrome_pair([h | f], b), do: palindrome_pair(f, [h | b])
end
