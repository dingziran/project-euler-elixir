defmodule Problem3 do
  def prime(i, num, last) do
    cond do
      i>num -> last
      rem(num, i)==0 -> prime(i+1, deepdiv(num,i), i)
      true -> prime(i+1, num, last)
    end
  end
  def deepdiv(num, i) when rem(num,i)==0 do
     div(num, i)
  end
  def deepdiv(num, _) do
     num
  end
end

Problem3.prime(2,600851475143,2) |> IO.puts
