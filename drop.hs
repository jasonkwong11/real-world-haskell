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