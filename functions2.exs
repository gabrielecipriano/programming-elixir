ExUnit.start

defmodule Functions2Test do
  use ExUnit.Case

  def fizzBuzz(0, 0, _), do: "FizzBuzz."
  def fizzBuzz(0, _, _), do: "Fizz."
  def fizzBuzz(_, 0, _), do: "Buzz."
  def fizzBuzz(_, _, x), do: x

  test "Fizz" do
    assert fizzBuzz(0, 34, 25) == "Fizz."
  end

  test "Buzz" do
    assert fizzBuzz(21, 0, 145) == "Buzz."
  end

  test "FizzBuzz" do
    assert fizzBuzz(0, 0, 145) == "FizzBuzz."
  end

  test "third number" do
    assert fizzBuzz(232, 567, 999) == 999
  end
end
