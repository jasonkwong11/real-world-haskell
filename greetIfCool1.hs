module GreetIfCool1 where

  greetIfCool :: String -> IO ()
  greetIfCool coolness =
    if cool
      then putStrLn "eyyy. What's shakin?"
    else
      putStrLn "pshhhh."
    where cool = coolness == "downright frosty yo"

-- not that greetIfCool could've been written with
-- cool being a function rather than a value defined
--against the argument directly like so:

  greetIfCool2 :: String -> IO ()
  greetIfCool2 coolness =
    if cool coolness
      then putStrLn "eyyy. What's shakin?"
    else
      putStrLn "pshhhh"
    where cool v = v == "downright frosty yo"

