ExUnit.start

defmodule ModulesAndFunctions6Test do
  use ExUnit.Case

    def guess(x, _..x), do: x
    def guess(x, x.._), do: x
    def guess(x, a..b) when x<b do 
      IO.puts("Is it #{div(a+b,2)}")
      guess(x, a..div(a+b,2)) 
    end
    def guess(x, a..b) when x>b, do: guess(x, b..b+a) 

  test "guess" do
    #assert guess(1000, 1..1000) == 1000 
    #assert guess(1, 1..1000) == 1 
    #assert guess(250, 1..1000) == 250 
    #assert guess(125, 1..1000) == 125 
    #assert guess(750, 1..1000) == 750 
    assert guess(273, 1..1000) == 273 
  end
end
