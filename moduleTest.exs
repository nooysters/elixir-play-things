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



