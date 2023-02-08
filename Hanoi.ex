defmodule Hanoi do
  def test() do
    n = 3
    min_moves = trunc(:math.pow(2, n) - 1)
    IO.puts("Number of moves: #{min_moves}")
    hanoi(n, :A, :B, :C)
  end
  def pprint(n, from, to) do IO.write("Disk #{n}, #{from} -> #{to}\n") end
  def hanoi(n, from, _aux, to) when n == 1 do pprint(n, from, to) end
  def hanoi(n, from, aux, to) do hanoi(n-1, from, to, aux); pprint(n, from, to); hanoi(n-1, aux, from, to) end
end
