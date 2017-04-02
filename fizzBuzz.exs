fizzBuzz = fn
  (0, 0, _) -> "fizzBuzz"
  (0, _, _) -> "fizz"
  (_, 0, _) -> "buzz"
  (_, _, c) -> c
end

IO.puts fizzBuzz.(0, 0, 2)
IO.puts fizzBuzz.(0, 2, 2)
IO.puts fizzBuzz.(2, 0, 2)
IO.puts fizzBuzz.(2, 2, 2)

fizzBuzzer = fn n -> 
  IO.puts fizzBuzz.(rem(n, 3), rem(n, 5), n) 
end

fizzBuzzer.(10)
fizzBuzzer.(11)
fizzBuzzer.(12)
fizzBuzzer.(13)
fizzBuzzer.(14)
fizzBuzzer.(15)
fizzBuzzer.(16)
fizzBuzzer.(17)

ticTacToe = fn 
  ([a,a,a,_,_,_,_,_,_]) -> "#{a} wins"
  ([_,_,_,a,a,a,_,_,_]) -> "#{a} wins"
  ([_,_,_,_,_,_,a,a,a]) -> "#{a} wins"
  ([_,a,_,_,a,_,_,a,_]) -> "#{a} wins"
  ([a,_,_,_,a,_,_,_,a]) -> "#{a} wins"
  ([_,_,a,_,a,_,a,_,_]) -> "#{a} wins"
  (arr) -> arr
end


IO.puts ticTacToe.(['','O','X','O','X','O','O','X','X'])