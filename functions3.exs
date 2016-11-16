ExUnit.start

defmodule Functions3Test do
  use ExUnit.Case

  def fizzBuzz(n) do
    speak(rem(n, 3), rem(n, 5), n)
  end

  def speak(0, 0, _), do: "FizzBuzz."
  def speak(0, _, _), do: "Fizz."
  def speak(_, 0, _), do: "Buzz."
  def speak(_, _, x), do: x

  test "10..16" do
    assert fizzBuzz(10) == "Buzz."
    assert fizzBuzz(11) == 11
    assert fizzBuzz(12) == "Fizz."
    assert fizzBuzz(13) == 13
    assert fizzBuzz(14) == 14
    assert fizzBuzz(15) == "FizzBuzz."
    assert fizzBuzz(16) == 16
  end
end
