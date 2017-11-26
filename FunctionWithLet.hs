module FunctionWithLet where

printInc2 n = let plusTwo = n + 2
  in print plusTwo

test   = z / x + y
  where x = 7
        y = (-x)
        z = y * 10

waxOn = x * 5
  where z = 7
        y = z + 8
        x = y^2

triple x = x * 3

waxOff x = triple x