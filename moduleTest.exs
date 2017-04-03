defmodule Times do

  def double n do
    n*2
  end

  def triple n do
    n*3
  end

  def quadruple n do
    double(n) + double(n)
  end  

  def prefix string do
    fn n -> "#{string} #{n}" end
  end

end


defmodule Factorial do

  def of(0), do: 1 
  def of(n), do: n * of(n-1) 

  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))

end


defmodule Floyd do

  def guess_my_number(_, number) when is_integer(number), do: number

  def guess_my_number(actual, range) when is_map(range) do 
    first.._ = range
    count = Enum.count(range)
    my_guess = first + div(count, 2)
    IO.puts "guess #{my_guess}"
    guess_my_number(actual, guess(my_guess, actual, range))
  end

  def guess(my_guess, actual, _) when my_guess === actual, do: my_guess

  def guess(my_guess, actual, range) when my_guess > actual do
    first.._ = range
    first..(my_guess-1)
  end

  def guess(my_guess, actual, range) when my_guess < actual do
    _..last = range
    (my_guess+1)..last
  end

end