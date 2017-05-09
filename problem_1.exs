Enum.filter(1..999,fn x -> rem(x,3)==0 or rem(x,5)==0 end ) |> Enum.reduce(&+/2) |> IO.puts
