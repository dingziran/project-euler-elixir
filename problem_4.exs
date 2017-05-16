defmodule Problem4 do
  def find(n) do
    (for i <- 100..n, j <- 100..i, do: i*j)
    |> Enum.filter(&isPalindrome/1) |> Enum.max
  end

  def isPalindrome(num) do
    Integer.to_string(num)
    |>String.reverse ==Integer.to_string(num)
  end
end

Problem4.find(999) |> IO.puts

