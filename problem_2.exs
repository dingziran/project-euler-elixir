defmodule Problem2 do
def fib(x, y, acc) do
  cond do
    y>4_000_000 -> acc
    rem(y,2)==0 -> fib(y, x+y, acc)
    true -> fib(y, x+y, acc+y)
  end
end
end
Problem2.fib(1,2,1) |> IO.puts

# this is not the best solution. see official solution
