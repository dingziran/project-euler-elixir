defmodule Problem6 do
  def run (n) do
    div  n*(n+1)*(n-1)*(3*n+2), 12
  end
end

Problem6.run(100) |> IO.puts
