module Print2 where
  main :: IO ()
  main = do
    putStrLn "Count to four for me:"
    putStr "one, two"
    putStr ", three, and"
    putStrLn " four!"

-- this do syntax is a special syntax that allows
-- for sequencing actions. It is commonly used
-- to sequence the actions that constitute your
-- program, some of which will necess. perform
-- effects such as printing to the screen
-- that's why the obligatory type of main is IO()
-- the do isn't strictly necessary, but since
-- it makes for more readable code than the
-- alternatives, you'll see it a lot. We will
-- explain it a bit more in CH. 13 and there will
-- be a full explan. in the ch on Monad.