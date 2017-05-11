defmodule Problem3 do
  def prime(i, num, last) do
    cond do
      i>num -> last
      rem(num, i)==0 -> prime(i+1, div(num,i), i)
      true -> prime(i+1, num, last)
    end
  end
end

Problem3.prime(2,600851475143,2) |> IO.puts
