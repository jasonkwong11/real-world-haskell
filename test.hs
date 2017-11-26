sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple :: Integer -> Integer
triple x = x * 3
-- :: is a way to write down a type signature.
-- You can think of it as saying, "has the type".
-- so sayHello has the type String -> IO ()