ExUnit.start

defmodule ModulesAndFunctions4Test do
  use ExUnit.Case

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))

  test "sum" do
    assert gcd(5, 0) == 5
    assert gcd(0, 3) == 3
    assert gcd(10, 6) == 2
    assert gcd(35, 45) == 5
  end
end
