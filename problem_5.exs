defmodule Problem5 do
  def commonFactor(n, m) do
    cond do
      n==1 -> 1
      m==1 -> 1
      rem(n,m)==0 -> m
      rem(m,n)==0 -> n
      m>n -> commonFactor(m-n, n)
      n>m -> commonFactor(m, n-m)
    end
  end
  def minMulti(n, m) do
    div n*m, commonFactor(n,m)
  end
  def multi(n) do
    n..2 |> Enum.reduce(fn curr,memo -> minMulti(curr, memo) end)
  end
end

Problem5.multi(20) |> IO.puts
