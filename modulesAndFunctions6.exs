ExUnit.start

defmodule ModulesAndFunctions6Test do
  use ExUnit.Case

    def guess(x, _..x), do: x
    def guess(x, x.._), do: x
    def guess(x, a..b) when x>a, do: guess(x, a..div(a+b,2)) 

  test "guess" do
    assert guess(1000, 1..1000) == 1000 
    assert guess(1, 1..1000) == 1 
    assert guess(250, 1..1000) == 250 
  end
end
