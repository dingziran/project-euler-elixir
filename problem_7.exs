defmodule Problem7 do
  def nthPrime(0, list, _) do
     List.last list
  end

  def nthPrime(n, list \\ [], i \\ 2) do
    if isPrime?(i, list) do
      nthPrime(n-1, list++[i],i+1)
    else
      nthPrime(n, list, i+1)
    end 
  end

  defp isPrime?(n, [head|tail]) do
    if rem(n,head)==0 do
      false
    else
      isPrime?(n, tail)
    end
  end

  defp isPrime?(_, []) do
    true
  end
end

:timer.tc(Problem7,:nthPrime,[10001]) |> IO.puts
