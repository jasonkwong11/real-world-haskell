module IsPalindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = bool
  where reversedString = reverse x
        bool = (reversedString == x)



myAbs :: Integer -> Integer
myAbs num = absVal
  where absVal = if num < 0 then num * (-1) else num


plusOne string = lengthPlusOne
  where lengthPlusOne = length string + 1

