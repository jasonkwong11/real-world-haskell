module Dropped where

import Data.List.Split

dropped x = let droppedString = drop 1 x
  in print droppedString

removeLast s = print newString
  where i = length s - 1
        newString = s !! i

returnLastWord s = print newString
  where newString = last wordArray
        wordArray =  splitOn " " s

thirdLetter s = print thirdLetter
  where thirdLetter = s !! 2

sameString i = print letter
  where letter = "jason" !! i

rvrs s = print third
  where wordArray = splitOn " " s
        newString = ""
        first = newString ++ last wordArray
        second = newString ++ last wordArray
        third = newString ++ last wordArray



