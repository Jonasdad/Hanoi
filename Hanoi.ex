defmodule Hanoi do
  def test() do
    hanoi(4, "A", "B", "C")
  end

  def hanoi(n, from, aux, to) do
    hanoi(n-1, aux, from, to)
    IO.puts()
    hanoi(n-1, to, from, aux)
  end
  def hanoi(n, _from, _aux, _to) when n == 0 do IO.puts() end
end
