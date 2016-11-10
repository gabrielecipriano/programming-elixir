defmodule ModulesAndFunctions4Test do
  use ExUnit.Case

  def sum(0), do: 0
  def sum(n), do: n + sum(n - 1)

  test "sum" do
    assert sum(0) == 0
    assert sum(1) == 1
    assert sum(5) == 15
  end
end
