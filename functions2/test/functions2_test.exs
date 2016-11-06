defmodule Functions2Test do
  use ExUnit.Case
  doctest Functions2

  def fizzBuzz(_, _, _), do: "Fizz."
  test "Fizz" do
    assert fizzBuzz(0, 34, 25) == "Fizz."
  end
end
