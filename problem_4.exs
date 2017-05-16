defmodule Problem4 do
  def find(n, m, count\\0) do
    list = 0..count
      |> Enum.map(&((n-&1)*(m-count+&1)))
      |> Enum.filter(&isPalindrome/1)
    if Enum.empty?(list) do
      find(n, m, count+1)
    else
      Enum.max list
    end
  end

  def isPalindrome(num) do
    Integer.to_string(num)
    |>String.reverse ==Integer.to_string(num)
  end
end

Problem4.find(999,999) |> IO.puts

